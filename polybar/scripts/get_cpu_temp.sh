#! /bin/bash
sensors | grep Package | cut -d ' ' -f 5
