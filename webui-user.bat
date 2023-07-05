@echo off

set PYTHON=
set GIT=
set VENV_DIR=
set SAFETENSORS_FAST_GPU=1
set PYTORCH_CUDA_ALLOC_CONF=garbage_collection_threshold:0.6,max_split_size_mb:128
set COMMANDLINE_ARGS=--backend directml --disable-nan-check --skip-torch-cuda-test --hide-ui-dir-config --no-download-sd-model --enable-insecure-extension-access --medvram --precision full --upcast-sampling --use-cpu CLIP BLIP interrogate gfpgan bsrgan esrgan scunet codeformer --opt-sub-quad-attention --sub-quad-q-chunk-size 512 --sub-quad-kv-chunk-size 512 --sub-quad-chunk-threshold 80 --update-all-extensions --skip-version-check --update-check --listen --port 7860

call webui.bat %*
