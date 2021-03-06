#!/bin/bash

echo "Checking for Redis authentication"
readonly redis_password=$1

if [ -z ${redis_password} ]
then
    echo "Redis is not password protected"
    redis-server
else
    echo "Redis is password protected"
    redis-server --requirepass ${redis_password}
fi
