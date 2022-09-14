#! /bin/bash

echo $(free -h --si | awk '{print $3}' | head -n 2 | tail -n 1)
