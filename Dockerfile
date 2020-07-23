FROM ruby:2.3-alpine

RUN apk --update add \
  build-base \
  sqlite-dev \
  tzdata
RUN rm -rf /var/cache/apk/*

WORKDIR /usr/src/redmine

CMD ["rails", "s", "-b", "0.0.0.0"]
