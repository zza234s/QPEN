#!/usr/bin/env bash

#mbert_path=../trained-transformers/bert-multi-cased
#xlmr_path=../trained-transformers/xlmr-base

mbert_path=bert-base-multilingual-cased
xlmr_path=xlm-roberta-base

python main.py --tfm_type mbert \
            --exp_type acs \
            --model_name_or_path $mbert_path \
            --data_dir ./data \
            --src_lang en \
            --tgt_lang fr \
            --do_train \
            --do_eval \
            --ignore_cached_data \
            --per_gpu_train_batch_size 16 \
            --per_gpu_eval_batch_size 12 \
            --learning_rate 5e-5 \
            --tagging_schema BIEOS \
            --overwrite_output_dir \
            --max_steps 2000 \
            --train_begin_saving_step 1500 \
            --eval_begin_end 1500-2000
