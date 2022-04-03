FROM alpine:3.15.3
ADD build/hello-world /usr/bin
ENTRYPOINT [ "/usr/bin/hello-world" ]