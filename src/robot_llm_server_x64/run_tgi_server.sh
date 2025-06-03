#!/bin/bash

MODEL=Qwen/Qwen2.5-7B-Instruct
VOLUME=/home/$USER/.cache/huggingface
GPU_ID='"device=0"'
PORT=8000

echo "Starting LLM TGI server"
echo "GPU: $GPU_ID"
echo "Port: $PORT"
echo "Model: $MODEL"
echo "HF_TOKEN: $HF_TOKEN"

# --gpus all
docker run --gpus $GPU_ID --shm-size 64g \
    -p $PORT:80 \
    -v $VOLUME:/data \
    -e HF_TOKEN=$HF_TOKEN \
    ghcr.io/huggingface/text-generation-inference:3.3.2 \
    --model-id $MODEL \
    --max-total-tokens 8000