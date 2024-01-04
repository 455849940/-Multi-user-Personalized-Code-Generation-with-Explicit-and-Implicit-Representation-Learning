export NCCL_P2P_DISABLE=1
CUDA_VISIBLE_DEVICES=1,2,3,5 torchrun --master_port=65432 --nproc_per_node 4 run.py \
    --do_train_first False \
    --do_train_second True \
    --forwardChoose2 1 \
    --output_dir ./stylePrompt_model/stylePrompt_modelA/len2048/e4batch8 \
    --output_dir2 ./stylePrompt_model/stylePrompt_modelB/all_A \
    --do_eval True \
    --debug_mode False \
    --learning_rate 1e-4 \
    --learning_rate2 1e-4 \
    --per_device_feature_train_batch_size 1\
    --per_device_feature_dev_batch_size 3 \
    --num_feature_train_epochs 10 \
    --per_device_train_batch_size 1 \
    --per_device_eval_batch_size 2 \
    --num_train_epochs 20 \
    --train_data_path ../data/Java_programming/Java_programming_train.json \
    --eval_data_path ../data/Java_programming/Java_programming_dev.json \
    --continue_train False \
    --enable_contrast True \
    --alpha 0.5