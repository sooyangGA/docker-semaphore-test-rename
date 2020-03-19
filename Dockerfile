FROM ruby:2.3.7

WORKDIR /usr/src/docker-semaphore

ENV BUNDLER_VERSION 2.1.4
RUN gem install bundler:$BUNDLER_VERSION

COPY Gemfile Gemfile.lock ./

RUN bundle install

CMD ["bundle", "exec", "rails", "s", "--host", "0.0.0.0", "-p", "8080"]
