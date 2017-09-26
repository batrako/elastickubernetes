#!/usr/bin/env bash

ulimit -l unlimited
su elasticsearch -c "bin/es-docker"