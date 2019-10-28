FROM ruby:2.6

WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock env ./
RUN bundle install

COPY producer/. .

EXPOSE 9092

CMD bundle exec ruby ./producer.rb
