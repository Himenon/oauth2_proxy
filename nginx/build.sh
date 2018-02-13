#!/bin/bash

for f in `find /etc/nginx/conf.d -name "*.conf.tpl"`
do
    echo $f
    envsubst < $f > ${f%.tpl}
done
