#!/bin/bash

# simple shell script to download the exercise form exercism
# and create a new git branch for it.

exercism download --exercise=$1 --track=julia
git checkout -b $1
