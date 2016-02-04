# dev_ops_traditional

We will be installing and configuring git/gerrit,jenkins,jira through script.
All this tool will be using LDAP as authentication protocol.

Prerequisite: 

1.  Host OS: CentOS7
2.  Make sure that LDAP server is running and configured with multiple devops account i.e
  admin,developer,reviewer etc. for this purpose please have a look at another repo called "ldap_vagrant"

How to run the individual script:

1.  Modify gerrit.config file under "devops_config/gerrit" dir for gerrit configuration.
    1.  modify canonical url
    2.  modify http or https port
    3.  modify authtype
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
