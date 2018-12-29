#!/bin/bash
mdkir -p /root/compose/
cp -r ./config /root/compose/
docker-compose up -d
