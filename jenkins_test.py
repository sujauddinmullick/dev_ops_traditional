import  paramiko
import logging
import logging.config
import paramiko
import platform
import socket
import os
import subprocess
from scp import SCPClient
import time
import sys

logging.config.fileConfig('logging.conf')
logger = logging.getLogger('devOps_install')

if (len(sys.argv) < 3):
    print "invalid usage. Required args <jenkins_host> <jenkins_url>."
    exit(1)


host = sys.argv[1]
jenkins_url=sys.argv[2]


logger.info('Started')



def remote_connect(host,user,passwd):

    client = paramiko.SSHClient()
    client.set_missing_host_key_policy(paramiko.AutoAddPolicy())
    try:
        client.connect(host, username=user, password=passwd)
        return client
    except (paramiko.SSHException,paramiko.AuthenticationException,socket.error) as se:
        logger.critical('Failed to connect %s : %s' % (host,se))
        exit(1)

def install_jenkins(client1):
    client = client1
    #client2 = remote_connect(host1,user,passwd)
    try:
        stdin, stdout, stderr = client.exec_command('wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo')
        if stdout:
            res = stdout.readlines()
            result= ''.join(res)
            logger.info('install_jenkins wget on %s :%s' %(host,result))
        stdin, stdout, stderr = client.exec_command('rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key')
        if stdout:
            res = stdout.readlines()
            result= ''.join(res)
            logger.info('install_jenkins rpm --import on %s :%s' %(host,result))
        stdin, stdout, stderr = client.exec_command('yum install -y jenkins')
        if stdout:
            res = stdout.readlines()
            result= ''.join(res)
            logger.info('install_jenkins yum install on %s :%s' %(host,result))
    except SSHException,e:
        logger.critical('install_jenkins exceptions %s' %(str(e)))

def restart_jenkins(client2):
    client = client2
    #client2 = remote_connect(host1,user,passwd)
    try:
        stdin, stdout, stderr = client.exec_command('sed -i \'s/JENKINS_PORT=\"8080\"/JENKINS_PORT=\"8082\"/g\' /etc/sysconfig/jenkins')
        if stderr:
            res = stderr.readlines()
            result= ''.join(res)
            logger.critical('restart_jenkins http_port chnage on %s :%s' %(host,result))
        stdin, stdout, stderr = client.exec_command('service jenkins restart ')
        if stderr:
            res = stderr.readlines()
            result= ''.join(res)
            res1 = stdout.readlines()
            result1 = ''.join(res1)
            logger.info('restart_jenkins restart out: %s err:%s' %(result1,result))
        stdin, stdout, stderr = client.exec_command('chkconfig jenkins on')
        if stderr:
            res = stderr.readlines()
            result= ''.join(res)
            logger.critical('restart_jenkins chkconfig on %s :%s' %(host,result))
        stdin, stdout, stderr = client.exec_command('systemctl stop firewalld.service')
        if stdout:
            res = stdout.readlines()
            result= ''.join(res)
            logger.info('restart_jenkins firewalld %s :%s' %(host,result))
    #client2.close()
    except SSHException,e:
        logger.critical('restart_jenkins exceptions %s' %(str(e)))


client1 = remote_connect(host,'root','p@ssw0rd')
#do a clean up before installing

install_jenkins(client1)

time.sleep(60)

restart_jenkins(client1)

time.sleep(120)

#copy few required configuration files to temp location

scp = SCPClient(client1.get_transport())
scp.put('devops_config/jenkins/plugins.txt','/usr/local/etc')
scp.put('devops_config/jenkins/gerrit-trigger.xml','/usr/local/etc')
scp.put('devops_config/jenkins/jenkins.model.JenkinsLocationConfiguration.xml','/usr/local/etc')
scp.put('devops_config/jenkins/jenkins-cli.jar','/usr/local/etc')

#copy the gerrit configuration xml file
scp.put('devops_config/jenkins/gerrit-trigger.xml','/var/lib/jenkins/')
#copy the jenkins own location xml file
scp.put('devops_config/jenkins/jenkins.model.JenkinsLocationConfiguration.xml','/var/lib/jenkins/')
#copy the authentication method xml file
scp.put('devops_config/jenkins/config.xml','/var/lib/jenkins/')

#install required plugins

prog = subprocess.Popen('java -jar jenkins-cli.jar -s '+jenkins_url+' install-plugin jira jenkins-jira-issue-updater gerrit-trigger git-client git -deploy -restart', stdout=subprocess.PIPE, stderr=subprocess.PIPE,shell=True)
out,err = prog.communicate()
if err:
    logger.critical('jenkins plugin install error %d %s' %(prog.returncode,err.strip()))

#jenkins job creation
prog = subprocess.Popen('java -jar jenkins-cli.jar -s '+jenkins_url+' create-job job100 < devops_config/jenkins/jenkins_job_ldap.xml', stdout=subprocess.PIPE, stderr=subprocess.PIPE,shell=True)
out,err = prog.communicate()
if err:
    logger.critical('jenkins create_job error %d %s' %(prog.returncode,err.strip()))

client1.close()
