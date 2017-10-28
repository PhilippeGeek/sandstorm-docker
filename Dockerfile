FROM buildpack-deps:latest

RUN useradd --system --user-group sandstorm
COPY start.sh /bin/start
RUN chmod +x /bin/start

VOLUME /opt/sandstorm
CMD /bin/start
