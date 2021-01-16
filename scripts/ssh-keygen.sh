#!/bin/bash

ssh-keygen -t rsa -f /root/.ssh/id_rsa -q -P ""
cat /root/.ssh/id_rsa.pub
