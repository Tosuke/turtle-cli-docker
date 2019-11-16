FROM node:12

RUN npm install --global --unsafe-perm turtle-cli
RUN apt-get update && \
    apt-get install -y openjdk-8-jdk ant ca-certificates-java && \
    apt-get clean && \
    update-ca-certificates -f
