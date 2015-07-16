#!/usr/bin/env bash

ansible-playbook -U developer --private-key=~/.ssh/id_rsa pcu_dev.yml --limit $TARGET_HOSTNAME --skip-tags ora_xe