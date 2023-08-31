# kafka-kraft-docker

A docker image for [Kafka in KRaft mode](https://developer.confluent.io/learn/kraft/) (without ZooKeeper), making it easier to run. Meant for development and testing purposes.

Based on https://github.com/bashj79/kafka-kraft-docker.

## Run with Docker

Releases are [published on Docker Hub](https://hub.docker.com/r/noamtm/kafka-kraft). To run it: 

Detached mode:
```
docker run -p 9092:9092 -d noamtm/kafka-kraft:3.5.1
```

Interactive mode:
```
docker run -p 9092:9092 -it noamtm/kafka-kraft:3.5.1
```

Use `localhost:9092` as the bootstrap server address.
