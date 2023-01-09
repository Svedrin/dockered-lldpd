FROM ubuntu:jammy

ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install -y dumb-init lldpd && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["dumb-init", "--"]
CMD ["lldpd", "-d"]
