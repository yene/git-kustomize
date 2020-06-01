#!/bin/bash
set -e

git checkout master
# NOTE: make sure its a clean checkout of master
kubectl apply -k "01-prod"
