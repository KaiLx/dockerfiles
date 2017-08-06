#!/bin/bash

export LOGIN_MODULE=ldap
export JAAS_CONF=/etc/rundeck/ldap.conf

/etc/init.d/rundeckd start && tail -f /var/log/rundeck/service.log