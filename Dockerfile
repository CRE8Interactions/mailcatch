FROM ruby:3.1-alpine

RUN apk add --no-cache build-base sqlite-dev

RUN gem install mailcatcher -v 0.8.2

EXPOSE 1025 1080

CMD ["mailcatcher", "--ip=0.0.0.0"]