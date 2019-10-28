# -*- coding: UTF-8 -*-

require 'kafka'

KAFKA_HOST = "localhost:9092"
TOPIC_NAME = "test"

kafka = Kafka.new([KAFKA_HOST])

kafka.each_message(topic: TOPIC_NAME) do |message|
  puts "#{message.offset}(#{message.key}): #{message.value}"
end
