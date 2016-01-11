#! /usr/bin/python

'''
Deveops tools installation script.

'''
import logging
import logging.config
import paramiko
import platform
import socket
import os
import subprocess
from scp import SCPClient

logging.config.fileConfig('logging.conf')
logger = logging.getLogger('devOps_install')

host1 = '172.30.36.216'
host2 = '172.30.36.156'
host3 = '172.30.36.119'

logger.info('Started')

'''
Method to create a connection handler to the target machine
and retunr the handler.
parameter:
1-remote machine ip
2-username
3-password
return value:
connectionHandler
'''
def remote_connect(host,user,passwd):
    
    client = paramiko.SSHClient()
    client.set_missing_host_key_policy(paramiko.AutoAddPolicy())
    try:
        client.connect(host, username=user, password=passwd)
        return client
    except (paramiko.SSHException,paramiko.AuthenticationException,socket.error) as se:
        logger.critical('Failed to connect %s : %s' % (host,se))
        exit(1)

'''
Method to create groups in gerrit server
parameter:
1-admin@host
2-group to be created

return value:

'''
def create_group(admin,new-group):
    prog = subprocess.Popen('ssh -p 29418 '+admin+' gerrit create-group '+new-group, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    out,err = prog.communicate()
    if err:
        logger.critical('create_group error %d %s' %(prog.returncode,err.strip()))

'''
Method to create accounts in gerrit server
parameter:
1-admin@host
2-acc to be created
3-email address of teh new account
4-fullname of the new acc
5-to be added to this group name
return value:

'''
def create_account(admin,new-acc,email,fullname,group):
    prog = subprocess.Popen('ssh -p 29418'+admin+ ' gerrit create-account '+new-acc+' --email '+email+' --full-name '+fullname+' --group '+group, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    out,err = prog.communicate()
    if err:
        logger.critical('create_account error %d %s' %(prog.returncode,err.strip()))

'''
Method to add shh-key to corresponding gerrit account 
parameter:
1-admin@host
2-existing acc against whom the ssh-key will be added

return value:

'''
def add_sshKey(admin,account):    
    #os.system('cat /root/.ssh/id_rsa.pub | ssh -p 29418'+admin+' gerrit set-account'+account+' --active --add-ssh-key -')
    prog = subprocess.Popen('cat /root/.ssh/id_rsa.pub | ssh -p 29418 '+admin+' gerrit set-account '+account+' --active --add-ssh-key -', stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    out,err = prog.communicate()
    if err:
        logger.critical('add_sshKey error %d %s' %(prog.returncode,err.strip()))

'''
Method to set access control in gerrit 
parameter:
1-admin
2-email of the admin
3-repo url i.e. ssh://user1@172.30.36.216:29418/test_repo1

return value:

'''

def configure_gerritAccessControl(admin,email,url):
    try:
        prog = subprocess.Popen('git config --global user.name '+admin, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        prog.communicate()  # Returns (stdoutdata, stderrdata): stdout and stderr are ignored, here
        prog = subprocess.Popen('git config --global user.email '+email, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        prog = subprocess.Popen('git clone '+url, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        out,err = prog.communicate()
        if err:
            logger.critical('Error in cloning %s error %d %s' %(url,prog.returncode,err.strip()))
        
        prog = subprocess.Popen('cd All-Projects '+admin, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        prog = subprocess.Popen('git fetch origin refs/meta/config', stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        prog = subprocess.Popen('git checkout -b config FETCH_HEAD', stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        prog = subprocess.Popen('cp devops_config/gerrit/project.config All-Projects/ '+admin, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        prog = subprocess.Popen('git push origin HEAD:refs/meta/config ', stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        out,err = prog.communicate()
        if err:
            logger.critical('Error in push %s error %d %s' %(url,prog.returncode,err.strip()))

    except OSError as e:
        logger.critical('configure_gerritAccessControl error: %d %s',e.errno,e.strerror)

def install_jenkins(host,user,passwd):
    host1 = host
    client2 = remote_connect(host1,user,passwd)
    try:
        stdin, stdout, stderr = client2.exec_command('sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo')
        if stderr:
            res = stderr.readlines()
            result= ''.join(res)
            logger.critical('install_jenkins wget on %s :%s' %(host1,result))
        stdin, stdout, stderr = client2.exec_command('sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key')
        if stderr:
            res = stderr.readlines()
            result= ''.join(res)
            logger.critical('install_jenkins rpm --import on %s :%s' %(host1,result))
        stdin, stdout, stderr = client2.exec_command('sudo yum install jenkins')
        if stderr:
            res = stderr.readlines()
            result= ''.join(res)
            logger.critical('install_jenkins yum install on %s :%s' %(host1,result))
    client2.close()
    except SSHException,e:
        logger.critical('install_jenkins exceptions %s' %(str(e)))
        client2.close()

    
def restart_jenkins(host,user,passwd):
    host1 = host
    client2 = remote_connect(host1,user,passwd)
    try:
        stdin, stdout, stderr = client2.exec_command('sudo sed -i \'s/HTTP_PORT=\"8080\"/HTTP_PORT=\"8081\"/g\' /etc/sysconfig/jenkins')
        if stderr:
            res = stderr.readlines()
            result= ''.join(res)
            logger.critical('restart_jenkins http_port chnage on %s :%s' %(host1,result))
        stdin, stdout, stderr = client2.exec_command('sudo service jenkins restart ')
        if stderr:
            res = stderr.readlines()
            result= ''.join(res)
            logger.critical('restart_jenkins restart on %s :%s' %(host1,result))
        stdin, stdout, stderr = client2.exec_command('sudo chkconfig jenkins on')
        if stderr:
            res = stderr.readlines()
            result= ''.join(res)
            logger.critical('restart_jenkins chkconfig on %s :%s' %(host1,result))
        stdin, stdout, stderr = client2.exec_command('systemctl status firewalld.service')
        if stderr:
            res = stderr.readlines()
            result= ''.join(res)
            logger.critical('restart_jenkins firewalld %s :%s' %(host1,result))
    client2.close()
    except SSHException,e:
        logger.critical('restart_jenkins exceptions %s' %(str(e)))
        client2.close()

def jira_createDB(host,user,passwd):
   client2 = remote_connect(host,user,passwd)
    try:
        stdin, stdout, stderr = client2.exec_command('mysql -u root -p \'root\' -e \"CREATE USER \'jira\'@\'localhost\' IDENTIFIED BY \'jira\';"')
        if stderr:
            res = stderr.readlines()
            result= ''.join(res)
            logger.critical('jira_createDB create user on %s :%s' %(host1,result))
        stdin, stdout, stderr = client2.exec_command('mysql -u root -p \'root\' -e \"CREATE DATABASE jira_db\"')
        if stderr:
            res = stderr.readlines()
            result= ''.join(res)
            logger.critical('jira_createDB create database %s :%s' %(host1,result))
        stdin, stdout, stderr = client2.exec_command('mysql -u root -p \'root\' -e \"GRANT ALL on jira_db.* TO \'jira\'@\'localhost\' IDENTIFIED BY \'jira\';\"')
        if stderr:
            res = stderr.readlines()
            result= ''.join(res)
            logger.critical('jira_createDB grant All on %s :%s' %(host1,result))
        stdin, stdout, stderr = client2.exec_command('systemctl status firewalld.service')
        if stderr:
            res = stderr.readlines()
            result= ''.join(res)
            logger.critical('restart_jenkins firewalld %s :%s' %(host1,result))
    client2.close()
    except SSHException,e:
        logger.critical('restart_jenkins exceptions %s' %(str(e)))
        client2.close()


client1 = remote_connect(host1,'root','p@ssw0rd')
stdin, stdout, stderr = client1.exec_command('uname -a')
uname = stdout.readlines()
host_os = ''.join(uname)
logger.info('OS type : %s :%s' %(host1,host_os))



if 'Ubuntu' not in host_os:

    #install git on the target machine
    stdin, stdout, stderr = client1.exec_command('yum install git')
    result = stdout.readlines()
    logger.info('git instalation on %s : %s' %(host1,''.join(result)))

    # create a gerrit installer user
    stdin, stdout, stderr = client1.exec_command('adduser user10')
    result = stderr.readlines()
    logger.info('add user on %s : %s' %(host1,''.join(result)))

    #copy the gerrit-X.X.X.war file to the target machine
    scp = SCPClient(client1.get_transport())
    scp.put('gerrit-2.11.5.war','/home/user10/')

    # initilaize the gerrit server
    stdin, stdout, stderr = client1.exec_command('su - user10 -c \'java -jar gerrit-2.11.5.war init -d ./gerrit\'')
    result = stdout.readlines()
    logger.info('gerrit init %s : %s' %(host1,''.join(result)))
    
    #time to restart the gerrit server
    stdin, stdout, stderr = client1.exec_command('su - user10 -c \'./gerrit/bin/gerrit.sh restart\'')
    result = stdout.readlines()
    logger.info('gerrit restart on %s : %s' %(host1,''.join(result)))
    
    #create groups in gerrit profile
    gerrit_admin = 'user1@'+host1
    profile = ['committer','reviewer','Integrator']
    for pro in profile:
        create_group(gerrit_admin,pro)
   
    #create accounts in gerrit and add it to the relevant groups
    # We should be having yahoo mail id at least for developer,reviewer and submitter

    create_account(gerrit_admin,'developer1','msysdev1@yahoo.in','developer1',profile[0])
    create_account(gerrit_admin,'reviewer1','msysrev1@yahoo.in','reviewer1',profile[1])
    create_account(gerrit_admin,'submitter1','msyssubmitter1@yahoo.in','submitter1',profile[2])

    #add ssh key to corresponding gerrit account
    add_sshKey(gerrit_admin,'developer1')
    
    #project creation
    prog = subprocess.Popen('ssh -p 29418 '+gerrit_admin+' gerrit create-project --empty-commit --name test_repo', stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    out,err = prog.communicate()
    if err:
        logger.critical('project creation error %d %s' %(prog.returncode,err.strip()))
    
    #setup access control in gerrit
    repo_url = 'ssh://'+gerrit_admin+':29418/test_repo'
    configure_gerritAccessControl('user1','msyssubmitter1@yahoo.in',repo_url)     

    ### JIRA :
    scp = SCPClient(client1.get_transport())
    scp.put('atlassian-jira-software-7.0.2-jira-7.0.2-x64.bin','/tmp/')
    scp.put('response.varfile','/tmp/')
    stdin, stdout, stderr = client1.exec_command('chmod +x /tmp/atlassian-jira-X.Y.bin')
    stdin, stdout, stderr = client1.exec_command('/tmp/atlassian-jira-X.Y.bin -q -varfile /tmp/response.varfile')
    if stderr:
        res = stderr.readlines()
        result= ''.join(res)
        logger.critical('JIRA installation on %s :%s' %(host1,result)) 
         
    ###Jenkins related steps starts here.

    install_jenkins(host1,'root','p@ssw0rd')
    restart_jenkins(host1,'root','p@ssw0rd')

    jenkins_url = 'http://'+host1+'8081'

    #install required plug-ins
    prog = subprocess.Popen('java -jar jenkins-cli.jar -s '+jenkins_url+' install-plugin git git-client gerrit-trigger jira jenkins-jira-issue-updater   -deploy -restart', stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    out,err = prog.communicate()
    if err:
        logger.critical('jenkins plugin install error %d %s' %(prog.returncode,err.strip()))
    #creating gerrit server connections in jenkins

    #jenkins job creation
    prog = subprocess.Popen('java -jar jenkins-cli.jar -s '+jenkins_url+ ' create-job job100 < jenkins_job.xml', stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    out,err = prog.communicate()
    if err:
        logger.critical('jenkins create_job error %d %s' %(prog.returncode,err.strip())) 


else:
    logger.info('Aborted !! installation steps unavailable')
    client1.close()


