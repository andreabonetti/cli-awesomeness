# OpenCode Environment

A Docker environment for running [opencode](https://opencode.ai) in an isolated container.

## Configuration

[opencode.jsonc](opencode.jsonc) can be copied here as global configuration:

```
~/.config/opencode/opencode.jsonc 
```

## Docker (orbstack)

Here we consider `orbstack` as Docker.

Start orbstack:

```bash
orb start
```

Check that it's running:

```bash
orb status
```

To stop orbstack:

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

Copy [run_opencode_in_docker.bash](run_opencode_in_docker.bash) to the project folder where you want to start opencode.

opencode will have access to the files only in that folder, given the argument `-v "$(pwd)":/workspace`.

```bash
bash run_opencode_in_docker.bash
```