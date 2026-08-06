docker run -it --rm \
    -e YOUR_API_KEY_NAME="your_actual_api_key_here" \
    -e OPENCODE_ENABLE_EXA=1 \
    -w /workspace \
    -v "$(pwd)":/workspace \
    --entrypoint /bin/bash \
    my-opencode