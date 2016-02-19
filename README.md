# dev_ops_traditional

We will be installing and configuring git/gerrit,jenkins,jira on traditional VM through below scripts.
All this tool will be using LDAP as authentication protocol.

Prerequisite: 

1.  Host OS: CentOS7
2.  Make sure that LDAP server is configured and running with multiple devops account i.e
  admin,developer,reviewer etc. for this purpose please have a look at another repo called "ldap_vagrant"

How to run the individual script:

1.  Modify gerrit.config file under "devops_config/gerrit" dir for gerrit configuration.
    1.  modify canonical url
    2.  modify http or https port
    3.  modify authtype, if authtype is ldap then provide relevant ldap server details.
    4.  modify smtp server field etc.
    
2.  Run gerrit_installation script.
    gerrit_test.py  <gerrit_host_ip>

2.  log in to gerrit GUI with admin account and add ssh key against it.
    specially add email against admin account.
 
3.  Run gerrit configuration script.
    gerrit_configure.py <gerrit_host_ip> <admin> <admin_email>

4.  Modify following config files under "devops_config/jenkins" dir for jenkins configuration
    1.  config.xml : provide ldap server details
    2.  gerrit-trigger.xml : provide gerrit server details
    3.  jenkins.model.JenkinsLocationConfiguration.xml : provide jenkins own location details
    
5.  Run jenkins installation and configuration script.
    python jenkins_test.py <jenkins_host_ip> <jenkins_http_url>
6.  Create and add jenkins ssh key against the gerrit account. Run below comamnd in jenkins machine.
    1.  sudo -u jenkins ssh-keygen
    2.  cat /var/lib/jenkins/.ssh/id_rsa.pub | ssh -p 29418 admin@gerrit_host gerrit set-account jenkins --active --add-ssh-key -

7.1  Jira part:

    1. download atlassian jira bin file under devops_config/jira dir i.e.atlassian-jira-software-7.0.10-jira-7.0.10-x64.bin
    2. modify response.var file for http port and all
    3. modify dbconfig.xml file for mysql db name,port,db server,user and password
    
7.2 run jira_test.py with ip of the machine i.e python jira_test.py <jira_server>

7.3 jira must be running ok.

Note: Jira instance comes as a trial version for 1 months,post 1 month, same license may not work for jira instance since license is also checks db validity. So in that case we need to get a new jira instance with new license.
