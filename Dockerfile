FROM google/dart

WORKDIR /app

ADD pubspec.* /app/
RUN pub get
ADD . /app
RUN pub get --offline

CMD []
ENTRYPOINT ["/usr/bin/dart", "/app/example/example.dart", "-d", "/opt/data_pub", "-h", "0.0.0.0"]