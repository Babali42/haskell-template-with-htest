# Start from a base Debian image with GHC/Stack tools
FROM ubuntu:22.04

# Avoid prompts
ENV DEBIAN_FRONTEND=noninteractive

# Install dependencies
RUN apt-get update && apt-get install -y \
    curl \
    gnupg \
    git \
    vim \
    libtinfo-dev \
    libgmp-dev \
    zlib1g-dev \
    make \
    gcc \
    sudo \
    && rm -rf /var/lib/apt/lists/*

# Install Stack
RUN curl -sSL https://get.haskellstack.org/ | sh

# Create non-root user (recommended for Codespaces)
RUN useradd -m vscode && echo "vscode ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

USER vscode
WORKDIR /workspaces/${REPO_NAME:-app}

# Pre-download GHC and build tools if needed
RUN stack upgrade
