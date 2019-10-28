# -*- coding: UTF-8 -*-

require 'kafka'

KAFKA_HOST = ENV['KAFKA_HOST'] || "172.17.0.1:9092"
TOPIC_NAME = ENV['TOPIC_NAME'] || "test"

kafka = Kafka.new([KAFKA_HOST])

kafka.each_message(topic: TOPIC_NAME) do |message|
  puts "#{message.offset}(#{message.key}): #{message.value}"
end
