#!/usr/bin/env bash

ansible-playbook -U developer --private-key=~/.ssh/id_rsa pcu_dev.yml --tags nexus_fetch_deployable_pcu,jboss_eap_install_package

