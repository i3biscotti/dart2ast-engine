# Official Dart image: https://hub.docker.com/_/dart
# Specify the Dart SDK base image version using dart:<version> (ex: dart:2.17)
FROM dart:stable AS build

WORKDIR /app

# Resolve app dependencies.
COPY . .

RUN cd /app && dart pub get

EXPOSE 8080

CMD ["dart", "/app/bin/server.dart"]
