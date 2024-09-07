#update nvidia-smi every 1 second
watch -n 1 nvidia-smi

#set environment variable
CUDA_VISIBLE_DEVICES=0 python your_script.py  # Select GPU 0
