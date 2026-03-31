wget --quiet -O ./snyk-alpine https://downloads.snyk.io/cli/stable/snyk-alpine
wget --quiet -O ./snyk-alpine.sha256 https://downloads.snyk.io/cli/stable/snyk-alpine.sha256
sha256sum -c snyk-alpine.sha256
mv snyk-alpine /usr/local/bin/snyk
chmod +x /usr/local/bin/snyk
