#!/usr/bin/bash

/opt/atlassian/jira/bin/stop-jira.sh
/opt/atlassian/jira/uninstall -y
rm -rf /opt/atlassian
rm -rf /var/atlassian/application-data/jira
