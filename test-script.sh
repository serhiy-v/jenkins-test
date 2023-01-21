#!/bin/bash

if curl http://44.201.219.200/ | grep "Jenkinss" > /dev/null
then 
    echo "Test passed"
else
    echo "Test Failed"
    exit 1
fi