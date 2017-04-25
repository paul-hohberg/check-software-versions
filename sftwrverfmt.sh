#! /bin/bash

printf "%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s\n" \
"$(hostname -f)" "$(cat /etc/redhat-release |awk '{print $1 $2, $7}')" \
"$(rpm -qa httpd)" \
"$(if [ -d /usr/local/apache* ]; then
  ls /usr/local |grep apache |tail -1
fi)" \
"$(if [ -d /usr/java ]; then
  ls /usr/java |grep jdk |grep -v 'rpm\|tar' |tail -1
fi)" \
"$(if [ -d /usr/java ]; then
  ls /usr/java |grep jre |grep -v 'rpm\|tar' |tail -1
fi)" \
"$(rpm -qa php)" "$(rpm -qa python)" \
"$(rpm -qa openssl |tail -1)" \
"$(rpm -qa shibboleth)" \
"$(if [ -d /usr/local/tomcat/webapps/shibboleth-idp ]; then
  basename /usr/local/tomcat/webapps/shibboleth-idp/WEB-INF/lib/shibboleth-identityprovider* .jar
fi)" \
"$(rpm -qa openldap |tail -1)" "$(rpm -qa openldap-ltb)" \
"$(rpm -qa subversion |tail -1)"
