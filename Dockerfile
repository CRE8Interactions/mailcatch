FROM ruby:3.1-slim

ENV MAILCATCHER_VERSION=0.9.0

# Install dependencies
RUN apt-get update && \
    apt-get install -y build-essential libsqlite3-dev && \
    gem install mailcatcher -v 0.8.2 && \
    apt-get clean

EXPOSE 1025 1080

CMD ["mailcatcher", "-f", "--ip", "0.0.0.0"]