FROM alpine:3.15.3
ARG TARGETARCH
ADD distr/* /tmp/distr
RUN cp -rf /tmp/distr/$TARGETARCH/* /usr/bin && rm -rf /tmp/distr
ENTRYPOINT [ "/usr/bin/hello-world" ]