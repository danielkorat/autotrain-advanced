#!/bin/bash
#SBATCH -p g80
#SBATCH --gres=gpu:3
#SBATCH -c 36

source ~/anaconda/bin/activate $ENV_NAME

autotrain llm \
--train \
--model meta-llama/Llama-2-70b-chat-hf \
--project-name llama2_70b_ee_cnn \
--data-path $HF_USERNAME/cnn_dailymail \
--text-column text \
--lr 2e-4 \
--batch-size 1 \
--epochs 1 \
--block-size 4096 \
--model_max_length 32768 \
--warmup-ratio 0.1 \
--lora-r 16 \
--lora-alpha 32 \
--lora-dropout 0.05 \
--target_modules q_proj,v_proj \
--weight-decay 0.01 \
--gradient-accumulation 1 \
--fp16 \
--use-peft \
--use-int4 \
--push-to-hub \
--token ${HF_KEY} \
--repo-id $HF_USERNAME/llama2_70b_ee_cnn \
--save_total_limit 1 \
--logging_steps 2500 \
--early_exit \
