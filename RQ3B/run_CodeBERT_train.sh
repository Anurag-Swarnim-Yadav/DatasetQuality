python ./RQ3B-Code/CodeBERT/codebert_main.py \
    --output_dir=./RQ3B-Code/CodeBERT/CodeBERT_model/saved_models \
    --model_name=model.bin \
    --tokenizer_name=microsoft/codebert-base \
    --model_name_or_path=microsoft/codebert-base \
    --do_train \
    --train_data_file=./RQ3B-Dataset/train-whole.csv \
    --test_data_file=./RQ3B-Dataset/test.csv \
    --epochs 75 \
    --encoder_block_size 512 \
    --decoder_block_size 256 \
    --train_batch_size 8 \
    --eval_batch_size 8 \
    --learning_rate 2e-5 \
    --max_grad_norm 1.0 \
    --n_gpu 1 \
    --evaluate_during_training \
    --seed 26312  2>&1 | tee ./RQ3B-Code/CodeBERT/CodeBERT_train.log
