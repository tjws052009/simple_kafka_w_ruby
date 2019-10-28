# -*- coding: UTF-8 -*-

require 'kafka'
require 'date'
require 'json'

KAFKA_HOST = "localhost:9092"
KAFKA_CLIENT_ID = "rubyapp"
TOPIC_NAME = "test"

loop_time = 10

kafka = Kafka.new([KAFKA_HOST], client_id: KAFKA_CLIENT_ID)
random = Random.new

loop_time.times do
  message = {date: DateTime.now().strftime("%Y/%m/%d %H:%M:%S"), data: random.rand(100)}
  kafka.deliver_message(message.to_json, topic: TOPIC_NAME)
  sleep random.rand(1.5)
end
