FROM alpine:3.15.3
ARG TARGETARCH
ADD distr_* /tmp
RUN ls -lR /tmp/distr*
RUN cp -rf /tmp/distr_$TARGETARCH/* /usr/bin && rm -rf /tmp/distr
ENTRYPOINT [ "/usr/bin/hello-world" ]