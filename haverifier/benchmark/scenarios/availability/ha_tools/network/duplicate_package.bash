#!/bin/bash

##############################################################################
# Copyright (c) 2015 Huawei Technologies Co.,Ltd and others.
#
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Apache License, Version 2.0
# which accompanies this distribution, and is available at
# http://www.apache.org/licenses/LICENSE-2.0
##############################################################################

# this script duplicate the out flow packages of a interface at a certain probability
# Usage:
#   duplicate_package <interface> <probability>
# parameter interface - the target network interface for example eth0.
# parameter probability - the duplicate probability, for example 1% means duplicate packages at 1% probability.

tc qdisc add dev $1 root netem duplicate $2