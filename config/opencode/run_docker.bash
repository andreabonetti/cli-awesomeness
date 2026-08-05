docker run -it --rm \
    -v "$(pwd)":/workspace \
    -w /workspace \
    --entrypoint /bin/bash \
    my-opencode