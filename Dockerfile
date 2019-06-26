FROM ruby:2.5.1-alpine

RUN apk add bash

RUN apk add alpine-sdk -t build && \
  gem install engineyard -v '3.2.5' && \
  apk del build

ENTRYPOINT [ "/bin/bash" ]
