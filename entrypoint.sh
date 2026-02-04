set -e

# echo 'PIP freeze (subset):'
# pip freeze | grep nvidia
# pip freeze | grep jax

echo GPUs:
nvidia-smi --query-gpu=gpu_name,memory.total,driver_version --format=csv || true
echo

xvfb-run -a -s '-screen 0 1024x768x24 -ac +extension GLX +render -noreset' "$@"
