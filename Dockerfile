FROM alpine:latest
ARG TARGETARCH

# Install & setup Snyk CLI
COPY scripts/install-snyk-${TARGETARCH}.sh /tmp/install-snyk.sh
RUN /tmp/install-snyk.sh

WORKDIR /app
ENTRYPOINT [ "/usr/local/bin/snyk" ]
