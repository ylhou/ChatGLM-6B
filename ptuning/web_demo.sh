PRE_SEQ_LEN=128
MODEL=/home/user/imported_models/chatglm-6b-20230419
CHECKPOINT=output/kefu-128-1e-2-64-512/checkpoint-3000
CUDA_VISIBLE_DEVICES=0 python3 web_demo.py \
    --model_name_or_path $MODEL \
    --ptuning_checkpoint $CHECKPOINT \
    --pre_seq_len $PRE_SEQ_LEN