#!/usr/bin/env bash
dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
. ""${dir}"/../libraries/zemni/execution/microservice/spring/lib_spring.sh"
dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
. ""${dir}"/../templates/lib_configuration.sh"

echo "Welcome to Xhidon !"

profile_configuration -cd $1 -sp $2 -td $3 -c $4 -h $5 -p $6 -v $7

run -f $8 -c $1 -t $9


