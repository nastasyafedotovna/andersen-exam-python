#!/bin/bash
name="docker.test_hello"
docker image build -t ${name} .
docker container run --rm -dp 8000:8000 --name ${name} ${name}
