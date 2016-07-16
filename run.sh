#!/bin/bash
#
# Run integration test for Ansible's Docker modules
#

source /ansible/hacking/env-setup
cd /ansible/test/integration
make test_docker
