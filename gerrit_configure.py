#! /usr/bin/python

'''
Gerrit configuration script.
Copywright @msystechnologies.com
Author suja.uddin@msystechnologies.com

'''
import logging
import logging.config
import paramiko
import platform
import socket
import os
import subprocess
from scp import SCPClient
import sys

logging.config.fileConfig('logging.conf')
logger = logging.getLogger('devOps_install')

if (len(sys.argv) < 4):
    print "invalid usage. Need 2 args <host> <admin> <admin_email>"
    exit(1)

host = sys.argv[1]
admin = sys.argv[2]
admin_email = sys.argv[3]


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
def create_group(admin,new_group):
    prog = subprocess.Popen('ssh -p 29418 '+admin+' gerrit create-group '+new_group, stdout=subprocess.PIPE, stderr=subprocess.PIPE,shell=True)
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
def create_account(admin,new_acc,email,fullname):
    group="\"\'Non-Interactive Users\'\""
    prog = subprocess.Popen('ssh -p 29418 '+admin+ ' gerrit create-account '+new_acc+' --email '+email+' --full-name '+fullname+' --group '+group, stdout=subprocess.PIPE, stderr=subprocess.PIPE,shell=True)
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
    prog = subprocess.Popen('cat /root/.ssh/id_rsa.pub | ssh -p 29418 '+admin+' gerrit set-account '+account+' --active --add-ssh-key -', stdout=subprocess.PIPE, stderr=subprocess.PIPE,shell=True)
    out,err = prog.communicate()
    if err:
        logger.critical('add_sshKey error %d %s' %(prog.returncode,err.strip()))
'''
Method to set access control in gerrit 
parameter:
1-admin
2-email of the admin
3-repo url i.e. ssh://user1@server:29418/test_repo1

return value:

'''

def configure_gerritAccessControl(admin,email,url):
    try:
        
        prog = subprocess.Popen('git config --global user.name '+admin, stdout=subprocess.PIPE, stderr=subprocess.PIPE,shell=True)
        prog.communicate()  # Returns (stdoutdata, stderrdata): stdout and stderr are ignored, here
        prog = subprocess.Popen('git config --global user.email '+email, stdout=subprocess.PIPE, stderr=subprocess.PIPE,shell=True)
        
        prog = subprocess.Popen('git clone '+url, stdout=subprocess.PIPE, stderr=subprocess.PIPE,shell=True)
        out,err = prog.communicate()
        if err:
            logger.critical('Error in cloning %s error %d %s' %(url,prog.returncode,err.strip()))
        
        #prog = subprocess.Popen('cd All-Projects ', stdout=subprocess.PIPE, stderr=subprocess.PIPE,shell=True)
        os.chdir('All-Projects')
        prog = subprocess.Popen('git fetch origin refs/meta/config', stdout=subprocess.PIPE, stderr=subprocess.PIPE,shell=True)
        prog = subprocess.Popen('git checkout -b config FETCH_HEAD', stdout=subprocess.PIPE, stderr=subprocess.PIPE,shell=True)
        print os.getcwd()
 
        prog = subprocess.Popen('/bin/cp -rf devops_config/gerrit/project.config .', stdout=subprocess.PIPE, stderr=subprocess.PIPE,shell=True)
        prog = subprocess.Popen('git add . ', stdout=subprocess.PIPE, stderr=subprocess.PIPE,shell=True)
        prog = subprocess.Popen('git commit -m \"config ACL added from script\" ', stdout=subprocess.PIPE, stderr=subprocess.PIPE,shell=True)
        prog = subprocess.Popen('git push origin HEAD:refs/meta/config ', stdout=subprocess.PIPE, stderr=subprocess.PIPE,shell=True)
        out,err = prog.communicate()
        if err:
            logger.critical('Error in push %s error %d %s' %(url,prog.returncode,err.strip()))
        
    except OSError as e:
        logger.critical('configure_gerritAccessControl error: %d %s',e.errno,e.strerror)
        
client1 = remote_connect(host,'root','p@ssw0rd')

#create groups in gerrit profile
gerrit_admin = admin+'@'+host

profile = ['committer','reviewer','Integrator']

for pro in profile:
    create_group(gerrit_admin,pro)

#create accounts in gerrit and add it to the relevant groups
# We should be having yahoo mail id at least for developer,reviewer and submitter
# I think only jenkins account is enough for our automation purpose.
# creating more groups and account then part of admin's job. We just make the system 
# up for that job.
'''
create_account(gerrit_admin,'developer1','msysdev1@yahoo.in','developer1',profile[0])
create_account(gerrit_admin,'reviewer1','msysrev1@yahoo.in','reviewer1',profile[1])
create_account(gerrit_admin,'submitter1','msyssubmitter1@yahoo.in','submitter1',profile[2])
'''
create_account(gerrit_admin,'jenkins','jenkins1_msys@yahoo.in','jenkins')

#add ssh key to corresponding gerrit account
'''
add_sshKey(gerrit_admin,'developer1')
add_sshKey(gerrit_admin,'reviewer1')
add_sshKey(gerrit_admin,'submitter1')
'''
#project creation
prog = subprocess.Popen('ssh -p 29418 '+gerrit_admin+' gerrit create-project --empty-commit --name test_repo', stdout=subprocess.PIPE, stderr=subprocess.PIPE,shell=True)
out,err = prog.communicate()
if err:
    logger.critical('project creation error %d %s' %(prog.returncode,err.strip()))


#setup access control in gerrit
repo_url = 'ssh://'+gerrit_admin+':29418/All-Projects'
configure_gerritAccessControl(admin,admin_email,repo_url)

