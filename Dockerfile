FROM alpine:3.23.7@sha256:ff7f0c727dd796aa36787bfcd9a64bf35a6ce72a73451b3359fde849b6703d63
ARG TARGETARCH

# Install & setup Snyk CLI
COPY scripts/install-snyk-${TARGETARCH}.sh /tmp/install-snyk.sh
RUN /tmp/install-snyk.sh

WORKDIR /app
ENTRYPOINT [ "/usr/local/bin/snyk" ]
