import  paramiko
import logging
import logging.config
import paramiko
import platform
import socket
import os
import subprocess
from scp import SCPClient
import sys
import time

logging.config.fileConfig('logging.conf')
logger = logging.getLogger('devOps_install')

if (len(sys.argv) < 2):
    print "invalid usage. Required arg <jira_host>."
    exit(1)

host = sys.argv[1]

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

client1 = remote_connect(host,'root','p@ssw0rd')
#do a clean up before installing

'''
stdin, stdout, stderr = client1.exec_command('/opt/atlassian/jira/uninstall')
res = stdout.readlines()
result= ''.join(res)
logger.info('JIRA installation on %s :%s' %(host2,result))
'''
#copy files
scp = SCPClient(client1.get_transport())
scp.put('devops_config/jira/atlassian-jira-software-7.0.10-jira-7.0.10-x64.bin','/tmp/')
scp.put('devops_config/jira/response.varfile','/tmp/')
time.sleep(60)

#unattended installation
stdin, stdout, stderr = client1.exec_command('/tmp/atlassian-jira-software-7.0.10-jira-7.0.10-x64.bin -q -varfile /tmp/response.varfile')

res = stdout.readlines()
result= ''.join(res)
logger.info('JIRA installation on %s :%s' %(host,result))

#connect db to jira
scp.put('devops_config/jira/dbconfig.xml','/var/atlassian/application-data/jira/')
scp.put('devops_config/jira/mysql-connector-java-5.1.35-bin.jar','/opt/atlassian/jira/lib')

#restart jira

stdin, stdout, stderr = client1.exec_command('/opt/atlassian/jira/bin/stop-jira.sh')
res = stdout.readlines()
result= ''.join(res)
logger.info('stopping jira on %s :%s' %(host,result))

stdin, stdout, stderr = client1.exec_command('/opt/atlassian/jira/bin/start-jira.sh')
res = stdout.readlines()
result= ''.join(res)
logger.info('starting jira on %s :%s' %(host,result))

client1.close()
