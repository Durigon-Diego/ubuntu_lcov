FROM ubuntu:24.04

# Install dependencies for lcov
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
    lcov curl git bc ca-certificates && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Set default shell
SHELL ["/bin/bash", "-c"]
