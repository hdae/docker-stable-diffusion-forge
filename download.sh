model_dir="/workspace/models"

# Default model list
declare -A models=(
  ["Stable-diffusion/waiNSFWIllustrious_v120.safetensors"]="https://civitai.com/api/download/models/1490781"
)

# Use model list.
if [[ -n "$MODEL_LIST_URL" ]]; then
  echo "Load model list from ${MODEL_LIST_URL}"
  model_list=$(mktemp)
  curl -fsSL "$MODEL_LIST_URL" -o "${model_list}"
  source "${model_list}"
fi

# Donwload models.
for model in ${!models[@]};
do

  # Skip if exists.
  if [[ -e "${model_dir}/${model}" ]]; then
    echo "Exist: ${model}"
    continue
  fi

  echo "Downloading: ${model}"
  curl -fsSL "${models[${model}]}" -o "${model_dir}/${model}.tmp"
  sync
  mv "${model_dir}/${model}.tmp" "${model_dir}/${model}"
  echo "Downloaded: ${model}"
  sleep 1
done

echo "Download completed."
