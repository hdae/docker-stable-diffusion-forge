model_dir="/workspace/models/Stable-diffusion"

echo "[Model Downloader] Download started."

declare -A models=(
  ["waiNSFWIllustrious_v120.safetensors"]="https://civitai.com/api/download/models/1490781"
)

for model in ${!models[@]};
do
  if [[ -e "${model_dir}/${model}" ]]; then
    echo "[Model Downloader] Skip: ${model}"
    continue
  fi

  echo "[Model Downloader] Downloading: ${model}"
  wget ${models[${model}]} -qcO "${model_dir}/${model}.tmp"
  sync
  mv "${model_dir}/${model}.tmp" "${model_dir}/${model}"
  echo "[Model Downloader] Downloaded: ${model}"
done

echo "[Model Downloader] Download completed."
