FROM alpine:3.15.3
RUN ARCH=$(uname -m)
RUN if [ "$ARCH" == "aarch64" ]; then ARCH='arm64' fi
RUN wget "https://github.com/fjzhangZzzzzz/hello-world/releases/download/v0.4/hello-world_linux_${ARCH}" \
    -O /usr/bin/hello-world
RUN chmod u+x /usr/bin/hello-world
ENTRYPOINT [ "/usr/bin/hello-world" ]