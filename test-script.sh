#!/bin/bash

if curl http://44.201.219.200/ | grep "Jenkinss" > /dev/null
then 
    echo "Test passed"
    exit 1
else
    echo "Test Failed"
fi