FROM anapsix/alpine-java:8

WORKDIR /pact-verifier

COPY gradlew gradlew
COPY build.gradle build.gradle
COPY gradle gradle

RUN ./gradlew clean resolveDependencies

ENTRYPOINT ./gradlew pactVerify
