# Start from Node image for tests
FROM node:12.20.1-stretch

ENV DEBIAN_FRONTEND=noninteractive

# Install packages
RUN apt-get update -y && \
  apt-get install --no-install-recommends -y curl unzip groff jq bc && \
  rm -rf /var/lib/apt/lists/*

# Download and unzip install
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip

# Run AWS install
RUN ./aws/install

