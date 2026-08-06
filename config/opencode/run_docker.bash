docker run -it --rm \
    -e YOUR_API_KEY_NAME="your_actual_api_key_here" \
    -w /workspace \
    -v "$(pwd)":/workspace \
    --entrypoint /bin/bash \
    my-opencode