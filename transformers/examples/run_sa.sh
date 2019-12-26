export GLUE_DIR=../../glue_data/
export TASK_NAME=MLSA

python3 ./run_sa.py \
    --model_type bert \
    --model_name_or_path bert-base-multilingual-uncased \
    --task_name $TASK_NAME \
    --do_train \
    --do_eval \
    --do_lower_case \
    --data_dir $GLUE_DIR/$TASK_NAME \
    --max_seq_length 128 \
    --per_gpu_eval_batch_size=30   \
    --per_gpu_train_batch_size=30   \
    --learning_rate 2e-5 \
    --num_train_epochs 2 \
    --overwrite_output_dir \
    --output_dir /tmp/$TASK_NAME/
