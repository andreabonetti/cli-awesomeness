FROM node:22-bookworm

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    less \
    vim \
    python3-venv \
    tree \
 && rm -rf /var/lib/apt/lists/*

RUN npm install -g @opencode/cli@latest

WORKDIR /workspace

COPY opencode.jsonc /root/.config/opencode/

RUN npx -y skills@latest add mattpocock/skills --all -g -a opencode

