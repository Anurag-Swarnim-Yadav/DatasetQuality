python ./RQ3A-Code/VulRepair/vulrepair_replication.py \
    --output_dir=./RQ3A-Code/VulRepair/VulRepair_model/saved_models \
    --model_name=model.bin \
    --tokenizer_name=Salesforce/codet5-base \
    --model_name_or_path=Salesforce/codet5-base \
    --do_train \
    --train_data_file=./RQ3A-Dataset/train-whole.csv \
    --test_data_file=./RQ3A-Dataset/test.csv \
    --epochs 75 \
    --encoder_block_size 512 \
    --decoder_block_size 256 \
    --train_batch_size 8 \
    --eval_batch_size 8 \
    --learning_rate 2e-5 \
    --max_grad_norm 1.0 \
    --n_gpu 1 \
    --evaluate_during_training \
    --seed 26312  2>&1 | tee ./RQ3A-Code/VulRepair/VulRepair_train.log
