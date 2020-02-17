#!/bin/bash

#Start redis server on 22122
#redis-server --port 22122 &
redis-server - <<EOF &
port 22122
save 900 1
save 300 10
save 60 10000
dir  /var/lib/redis
EOF

src/dynomite --conf-file=conf/redis_single.yml -v5
