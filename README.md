# Stable Diffusion Forge on Docker / RunPod

[Deploy to RunPod](https://runpod.io/console/deploy?template=whdfh5h5d4&ref=oxrbnozc)

Stable Diffusion ForgeをRunpodで簡単に動かすことができるやつ。

## ビルド方法

普通にビルドして良い感じにタグつけてDockerHubに投げればOK

```
tag="$(date +%F)"
docker build . -f Dockerfile.runpod -t "hdae/stable-diffusion-forge-runpod:${tag}"
docker push "hdae/stable-diffusion-forge-runpod:${tag}"
```

---

以下はRunpodに記載しているREADMEのコピー

# Stable Diffusion Forge (template by [hdae](https://github.com/hdae))

起動が少し速く、NVIDIA Blackwellにも対応しています。

- Tested on `B200` and `RTX 5090`, and `RTX A5000`
- Links
  - [GitHub](https://github.com/hdae/docker-stable-diffusion-forge)
  - [Report Issues](https://github.com/hdae/docker-stable-diffusion-forge/issues)

## 使い方

1. このテンプレートを使ってPodを起動します。
2. Podが準備完了になるまで待ちます。通常、1分ほどかかります。
3. デフォルトモデルのダウンロードが完了するのを待ちます。
  - または、Webターミナル / Jupyter Notebookを使用してカスタムモデルをダウンロードします。
4. ポート7860にアクセスします。
5. 画像生成をお楽しみください！

## モデルのダウンロード

追加のモデルをダウンロードするには`wget`を使用します。

```
wget https://civitai.com/api/download/models/[model_id] -O /workspace/models/Stable-diffusion/[model_name].safetensors
```

## 謝辞

以下のプロジェクトおよびモデルの開発者とコミュニティに心より感謝申し上げます。  
彼らの素晴らしい仕事が、このDockerイメージの作成に不可欠でした。

### プロジェクト

- [Stable Diffusion WebUI Forge](https://github.com/lllyasviel/stable-diffusion-webui-forge)

### モデル

- [WAI-NSFW-illustrious-SDXL v12.0](https://civitai.com/models/827184?modelVersionId=1490781)

---

# English version (Translate by gemini)

It can boot a bit faster, and it supports NVIDIA Blackwell.

## Usage

1. Launch a pod using this template.
2. Wait for it to become ready. This usually takes about 1 minutes.
3. Wait for the default model to download.
  - Alternatively, download a custom model using the Web Terminal / Jupyter Notebook.
4. Access port 7860.
5. Enjoy!

## Model download

Use `wget` to download additional models.

```
wget https://civitai.com/api/download/models/[model_id] -O /workspace/models/Stable-diffusion/[model_name].safetensors
```

## Acknowledgements

I would like to express my sincere gratitude to the developers and communities of the following projects and models.  
Their excellent work was instrumental in the creation of this Docker image.

### Projects

- [Stable Diffusion WebUI Forge](https://github.com/lllyasviel/stable-diffusion-webui-forge)

### Models

- [WAI-NSFW-illustrious-SDXL v12.0](https://civitai.com/models/827184?modelVersionId=1490781)
