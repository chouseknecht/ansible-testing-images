#!/bin/bash
#
# Create a secure private registry for testing docker_login and docker_image 
#
source /ansible/hacking/env-setup
cd /ansible/test/integration
make test_registry
