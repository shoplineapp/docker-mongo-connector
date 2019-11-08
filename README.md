# docker for mongo-connector

## usage
1. update `SOURCE_HOST` and `TARGET_HOST` in `docker-compose.yml`

note: 
  - host includes scheme, eg: `mongodb://192.168.0.1`
  - remember replica set name if the source db is not sharded, eg `mongodb://192.168.0.1/shopline?replicaSet=shard01`

2. update `config.json` if needed, see the detail setting in https://github.com/yougov/mongo-connector/wiki/Configuration-Options

3. `docker-compose up` 
