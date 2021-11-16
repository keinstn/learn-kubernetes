#!/bin/bash

token=$(kubectl describe serviceaccount admin-user -n kubernetes-dashboard | grep Tokens | cut -d: -f2 | sed -e 's/ //g')

kubectl describe secret ${token} -n kubernetes-dashboard | grep "^token:" | cut -d: -f2 | sed -e "s/ //g"
