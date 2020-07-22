#!/bin/bash

docker-compose up -d
bash -c "cd frontend && yarn next"
