python ./RQ2A-Code/UniXcoder/unixcoder_main.py \
    --beam_size 50 \
    --output_dir=./RQ2A-Code/UniXcoder/UniXcoder_model/saved_models \
    --model_name=model.bin \
    --do_test \
    --test_data_file=./RQ2A-Dataset/test.csv \
    --encoder_block_size 512 \
    --decoder_block_size 256 \
    --eval_batch_size 1 \
    --n_gpu 1 \
    --seed 26312  2>&1 | tee ./RQ2A-Code/UniXcoder/UniXcoder_test.log
