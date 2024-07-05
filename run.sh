# inference with Medusa head
CUDA_VISIBLE_DEVICES=0 python -m medusa.inference.cli \
    --model ../ztl/model/medusa-vicuna-7b-v1.3 


python create_data.py --input-filename ../ztl/data/ShareGPT_Vicuna_unfiltered/ShareGPT_V4.3_unfiltered_cleaned_split.json \
    --output-filename ../ztl/data/ShareGPT_Vicuna_unfiltered/data_out.json
    