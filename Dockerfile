FROM alpine:3.18 AS build

ENV KAFKA_VERSION=3.5.1
ENV SCALA_VERSION=2.13

RUN apk add --no-cache bash openjdk17-jre \
    && wget "https://downloads.apache.org/kafka/$KAFKA_VERSION/kafka_$SCALA_VERSION-$KAFKA_VERSION.tgz" -O /tmp/kafka.tgz \
    && tar -xzf /tmp/kafka.tgz \
    && rm /tmp/kafka.tgz \
    && mv kafka_$SCALA_VERSION-$KAFKA_VERSION /opt/kafka \
    && ln -s /opt/kafka/bin /kbin

COPY start_kafka.sh /bin

CMD [ "/bin/start_kafka.sh" ]
