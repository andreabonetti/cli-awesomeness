# OpenCode Environment

A Docker environment for running OpenCode in an isolated container.

## Configuration

[opencode.jsonc](opencode.jsonc) can be copied to this path as global configuration:

```
~/.config/opencode/opencode.jsonc 
```

## Docker (OrbStack)

Here we consider OrbStack as the Docker provider.

Start OrbStack:

```bash
orb start
```

Check that it's running:

```bash
orb status
```

To stop OrbStack:

```bash
orb stop
```

## Image

Build the image, as defined in [Dockerfile]

```bash
docker build -t my-opencode .
```

Check that the image was built:

```bash
docker images
```

## Run OpenCode in Docker

Copy [run_opencode_in_docker.bash](run_opencode_in_docker.bash) to the project folder where you want to start OpenCode.

This script will start opencode in Docker and OpenCode will have access to the files only in that folder, given the argument `-v "$(pwd)":/workspace`.
This is a security/isolation feature.

```bash
bash run_opencode_in_docker.bash
```