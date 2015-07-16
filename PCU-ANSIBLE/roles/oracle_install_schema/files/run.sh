#!/bin/bash
. /u01/app/oracle/product/11.2.0/xe/bin/oracle_env.sh
cd /tmp/pcu/sql
sqlplus system/pword@XE @portal_master_build_script.sql |tee run.log
