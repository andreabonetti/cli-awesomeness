FROM node:22-bullseye

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    less \
    vim \
    python3-venv \
    tree \
 && rm -rf /var/lib/apt/lists/*

RUN npm install -g opencode-ai

WORKDIR /workspace

COPY opencode.jsonc /root/.config/opencode/