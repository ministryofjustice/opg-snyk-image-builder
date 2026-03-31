wget --quiet -O ./snyk-alpine-arm64 https://downloads.snyk.io/cli/stable/snyk-alpine-arm64
wget --quiet -O ./snyk-alpine-arm64.sha256 https://downloads.snyk.io/cli/stable/snyk-alpine-arm64.sha256
sha256sum -c snyk-alpine-arm64.sha256
mv snyk-alpine-arm64 /usr/local/bin/snyk
chmod +x /usr/local/bin/snyk
