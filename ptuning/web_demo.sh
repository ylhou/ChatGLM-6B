PRE_SEQ_LEN=256
MODEL=/home/user/imported_models/chatglm-6b
CHECKPOINT=output/kefu-256-1e-2-32-512/checkpoint-7000
CUDA_VISIBLE_DEVICES=0 python3 web_demo.py \
    --model_name_or_path $MODEL \
    --ptuning_checkpoint $CHECKPOINT \
    --pre_seq_len $PRE_SEQ_LEN