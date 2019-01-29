# Docker Pact Provider Verifier using Gradle

Docker Hub: https://hub.docker.com/r/labuda/pact-provider-verifier-gradle

Simple docker image that uses Gradle in order to verify pacts against the API provider (producer).

## Building the image

```bash
docker build -t pact-provider-verifier-gradle:latest .
```

## Running the image

```bash
docker run -v "host-pact-files-location:container-path" \
-e "PROVIDER_NAME=<providerName>" \
-e "PROVIDER_PROTOCOL=<providerProtocol>" \
-e "PROVIDER_HOST=<providerHost>" \
-e "PROVIDER_PORT=<providerPort>" \
-e "USE_LOCAL_PACTS=<true|false>" \
-e "PACTS_LOCATION=<pathToPactFiles>" \
-e "PACT_BROKER_USERNAME=<brokerUsername>" \
-e "PACT_BROKER_PASSWORD=<brokerPassword>" \
--name pact-provider-verifier-gradle \
pact-provider-verifier-gradle:latest
```
