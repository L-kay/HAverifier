#!/bin/bash

##############################################################################
# Copyright (c) 2015 Huawei Technologies Co.,Ltd and others.
#
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Apache License, Version 2.0
# which accompanies this distribution, and is available at
# http://www.apache.org/licenses/LICENSE-2.0
##############################################################################

# Start a service and check the service is started

set -e

source /root/openrc

service_name=$1

service $service_name start

swift list |grep test_container| wc -l|awk '{if($1>0){ print "swift delete test_container"|"/bin/bash"}}'
