#!/bin/bash

# Copy files
rsync -a --inplace /data/workspace/ /workspace 2>/dev/null
chown -Rf runner /workspace

export install_dir="/"
export clone_dir="/workspace"
export python_cmd="python"
export venv_dir="-"
export PYTHONPATH="$PYTHONPATH:/workspace/packages_3rdparty"
export LD_PRELOAD="/usr/lib/x86_64-linux-gnu/libtcmalloc.so"
export COMMANDLINE_ARGS="--server-name 0.0.0.0 --skip-install --no-download-sd-model --always-gpu --pin-shared-memory --cuda-stream --cuda-malloc"
export TORCH_COMMAND="### SKIP INSTALL ###"

nohup bash /download.sh &

exec gosu runner "$@"
