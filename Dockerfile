FROM alpine:3.24.4@sha256:f59abe656b692d901e184be3445e084786602108599d2a51d229c0f5a48c71bf
ARG TARGETARCH

# Install & setup Snyk CLI
COPY scripts/install-snyk-${TARGETARCH}.sh /tmp/install-snyk.sh
RUN /tmp/install-snyk.sh

WORKDIR /app
ENTRYPOINT [ "/usr/local/bin/snyk" ]
