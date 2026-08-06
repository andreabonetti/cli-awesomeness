docker run -it --rm \
    -w /workspace \
    -v "$(pwd)":/workspace \
    --entrypoint /bin/bash \
    my-opencode