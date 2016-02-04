#! /usr/bin/python

'''
Deveops tools installation script.
Copyright @msystechnologies.com
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
import time
import sys

logging.config.fileConfig('logging.conf')
logger = logging.getLogger('devOps_install')

if (len(sys.argv) < 2):
    print "invalid usage. Need arg <host>."
    exit(1)


host = sys.argv[1]

logger.info('Started')

'''
Method to create a connection handler to the target machine
and return the handler.
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

client1 = remote_connect(host,'root','p@ssw0rd')
stdin, stdout, stderr = client1.exec_command('uname -a')
uname = stdout.readlines()
host_os = ''.join(uname)
logger.info('OS type : %s :%s' %(host,host_os))



if 'Ubuntu' not in host_os:
  

    
    ##tested successfully 
    print 'Test0' 
    #install git on the target machine
    stdin, stdout, stderr = client1.exec_command('yum install git -y')
    result = stdout.readlines()
    logger.info('git instalation on %s : %s' %(host,''.join(result)))
    print 'Test1'


    # create a gerrit installer user
    stdin, stdout, stderr = client1.exec_command('adduser gerrit2')
    result = stderr.readlines()
    logger.info('add user on %s : %s' %(host,''.join(result)))
    

    #copy the gerrit-X.X.X.war file to the target machine
    scp = SCPClient(client1.get_transport())
    scp.put('gerrit-2.11.5.war','/home/gerrit2')
    
    # initilaize the gerrit server
    stdin, stdout, stderr = client1.exec_command('su - gerrit2 -c \'java -jar /home/gerrit2/gerrit-2.11.5.war init -d ./gerrit\'')
    result = stdout.readlines()
    logger.info('gerrit init %s : %s' %(host,''.join(result)))
    print 'test4'

    #replace gerrit.config with correct configuration like canonical url,auth,port etc.
    scp.put('devops_config/gerrit/gerrit.config','/home/gerrit2/gerrit/etc/')

    #time to restart the gerrit server
    stdin, stdout, stderr = client1.exec_command('su - gerrit2 -c \'/home/gerrit2/gerrit/bin/gerrit.sh restart\'')
    result = stdout.readlines()
    logger.info('gerrit restart on %s : %s' %(host,''.join(result)))

    # gerrit commandline tools requires an admin account for creating,modifying
    # of accounts. Caller must be a member of the privileged 'Administrators' group, 
    # or have been granted the 'Create Account' global capability. Thats why,to configure 
    # gerrit further we need to have an admin account. we will configure the gerrit from
    # another script called gerrit_configure.py, which will take the admin account as argument.
    
else:
    logger.info('Aborted !! installation steps unavailable')
    client1.close()


