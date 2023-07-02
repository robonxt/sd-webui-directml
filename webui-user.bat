@echo off

set PYTHON=
set GIT=
set VENV_DIR=
set SAFETENSORS_FAST_GPU=1
set PYTORCH_CUDA_ALLOC_CONF=garbage_collection_threshold:0.6,max_split_size_mb:128
set COMMANDLINE_ARGS=--backend directml --disable-nan-check --no-download-sd-model --no-gradio-queue --enable-insecure-extension-access --medvram --always-batch-cond-uncond --no-half --precision full --upcast-sampling --use-cpu CLIP BLIP interrogate gfpgan bsrgan esrgan scunet codeformer --opt-split-attention --sub-quad-q-chunk-size 512 --sub-quad-kv-chunk-size 512 --sub-quad-chunk-threshold 80 --update-all-extensions --update-check --listen --port 7860

call webui.bat
