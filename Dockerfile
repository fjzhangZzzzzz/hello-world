FROM alpine:3.15.3
COPY build/hello-world /usr/bin/hello-world
RUN chmod u+x /usr/bin/hello-world
ENTRYPOINT [ "/usr/bin/hello-world" ]