#!/bin/bash
# Start the qwen3-embeddings-mlx server with the 4B model
# Intended to run in a tmux pane or as a persistent service

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$SCRIPT_DIR"

export MODEL_NAME="mlx-community/Qwen3-Embedding-4B-4bit-DWQ"
export PORT=8000
export HOST="0.0.0.0"
export LOG_LEVEL="INFO"

# Activate venv and start
exec "$SCRIPT_DIR/.venv/bin/python" "$SCRIPT_DIR/server.py"
