model_dir="/workspace/models/Stable-diffusion"

if [ $(ls -A "${model_dir}" | wc -l) -gt 1 ];
then
  echo "Model Downloader: Model dir is not empty, aborted..."
  exit
fi

echo "Model Downloader: Download started."

declare -A models=(
  ["waiNSFWIllustrious_v120.safetensors"]="https://civitai.com/api/download/models/1490781"
)

for model in ${!models[@]};
do
  wget ${models[${model}]} -qO "${model_dir}/${model}.tmp"
  sync
  mv "${model_dir}/${model}.tmp" "${model_dir}/${model}"
done

echo "Model Downloader: Download completed."
