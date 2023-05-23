PRE_SEQ_LEN=256
CHECKPOINT=kefu-256-1e-2-32-512
STEP=7000
SOURCE_LEN=32
TARGET_LEN=512

CUDA_VISIBLE_DEVICES=0 python3 main.py \
    --do_predict \
    --validation_file val.json \
    --test_file val.json \
    --overwrite_cache \
    --prompt_column prompt \
    --response_column response \
    --model_name_or_path /home/user/imported_models/chatglm-6b \
    --ptuning_checkpoint ./output/$CHECKPOINT/checkpoint-$STEP \
    --output_dir ./output/$CHECKPOINT \
    --overwrite_output_dir \
    --max_source_length $SOURCE_LEN \
    --max_target_length $TARGET_LEN \
    --per_device_eval_batch_size 1 \
    --predict_with_generate \
    --pre_seq_len $PRE_SEQ_LEN \