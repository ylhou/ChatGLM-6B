PRE_SEQ_LEN=256
LR=1e-2
CHAT_TRAIN_DATA=train.json
CHAT_VAL_DATA=val.json
SOURCE_LEN=32
TARGET_LEN=512
CHECKPOINT_NAME=output/kefu-$PRE_SEQ_LEN-$LR-$SOURCE_LEN-$TARGET_LEN\

CUDA_VISIBLE_DEVICES=0 python3 main.py \
    --do_train \
    --train_file $CHAT_TRAIN_DATA \
    --validation_file $CHAT_VAL_DATA \
    --prompt_column prompt \
    --response_column response \
    --history_column history \
    --overwrite_cache \
    --model_name_or_path /home/user/imported_models/chatglm-6b \
    --output_dir $CHECKPOINT_NAME \
    --overwrite_output_dir \
    --max_source_length $SOURCE_LEN \
    --max_target_length $TARGET_LEN \
    --per_device_train_batch_size 1 \
    --per_device_eval_batch_size 1 \
    --gradient_accumulation_steps 16 \
    --predict_with_generate True\
    --max_steps 8000 \
    --logging_steps 10 \
    --save_steps 500 \
    --learning_rate $LR \
    --pre_seq_len $PRE_SEQ_LEN \
