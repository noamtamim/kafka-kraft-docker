# kafka-kraft-docker

A docker image for [Kafka](https://kafka.apache.org) without Zookeeper. Meant for development and testing purposes.

For more information about the Kafka running in KRaft mode, 
check out the [introductory blog post](https://www.confluent.io/blog/kafka-without-zookeeper-a-sneak-peek).

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
