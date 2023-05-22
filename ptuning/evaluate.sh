PRE_SEQ_LEN=128
CHECKPOINT=kefu-128-1e-2-64-512
STEP=7000

CUDA_VISIBLE_DEVICES=0 python3 main.py \
    --do_predict \
    --validation_file val.json \
    --test_file val.json \
    --overwrite_cache \
    --prompt_column prompt \
    --response_column response \
    --model_name_or_path /home/user/imported_models/chatglm-6b-20230419 \
    --ptuning_checkpoint ./output/$CHECKPOINT/checkpoint-$STEP \
    --output_dir ./output/$CHECKPOINT \
    --overwrite_output_dir \
    --max_source_length 64 \
    --max_target_length 512 \
    --per_device_eval_batch_size 1 \
    --predict_with_generate \
    --pre_seq_len $PRE_SEQ_LEN \