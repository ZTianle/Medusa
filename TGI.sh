# TGI inference
# share a volume with the Docker container to avoid downloading weights every run

# model=/home/liulingfeng/zhangtianle/ztl/model/folder_72/version_136
model=/home/liulingfeng/zhangtianle/ztl/model
volume=/home/liulingfeng/zhangtianle/ztl/data

# 运行 Docker 命令
docker run -it --rm --gpus '"device=3"' --shm-size 4G -p 8080:80 \
    -v $volume:/data \
    -v $model:/model \
    --entrypoint /bin/bash \
    163c78bc6f7d 

# CUDA_VISIBLE_DEVICES=3 \
    text-generation-launcher \
    --model-id /model/medusa-vicuna-7b-v1.3 \
    --max-input-length 4000 \
    --max-total-tokens 4096 \
    --max-batch-prefill-tokens 4000
