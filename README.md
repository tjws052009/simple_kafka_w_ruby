# Summary

A quick example of running Kafka and 2 containers, one as a producer, one as a consumer.

# Setup

We assume that the Kafka cluster is up running and you have a topic already created

Update the `env` file to match your environemnt.

```
# Build image
> docker build -t kafka-producer-rb -f producer/Dockerfile .
> docker build -t kafka-consumer-rb -f consumer/Dockerfile .

# Run images. You would want to run the two in a different session, consumer first.
>  docker run -it --name consumer --env-file env kafka-consumer-rb
>  docker run -d --name producer --env-file env kafka-producer-rb
```
