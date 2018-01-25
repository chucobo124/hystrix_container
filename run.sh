#!/bin/bash
docker build . -t hystrix
docker stop hystrix
sleep 3
docker rm hystrix
docker run --name hystrix --rm -d -p 9000:9000 hystrix
