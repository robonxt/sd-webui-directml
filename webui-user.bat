@echo off

set PYTHON=
set GIT=
set VENV_DIR=
set SAFETENSORS_FAST_GPU=1
set PYTORCH_CUDA_ALLOC_CONF=garbage_collection_threshold:0.6,max_split_size_mb:128
set COMMANDLINE_ARGS=--backend directml --disable-nan-check --enable-insecure-extension-access  --listen --no-download-sd-model --opt-sub-quad-attention --precision autocast  --skip-torch-cuda-test --skip-version-check --sub-quad-chunk-threshold 80 --sub-quad-kv-chunk-size 512 --sub-quad-q-chunk-size 512 --upcast-sampling  --update-all-extensions --use-cpu CLIP BLIP INTERROGATE GFPGAN BSRGAN ESRGAN SCUNet CodeFormer 
call webui.bat %*
