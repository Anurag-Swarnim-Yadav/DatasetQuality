# python codet5_main.py \
#     --num_beams 1 \
#     --output_dir=./saved_models \
#     --model_name=model.bin \
#     --do_test \
#     --test_data_file=./data/cve_fixes_test.csv \
#     --encoder_block_size 512 \
#     --decoder_block_size 256 \
#     --eval_batch_size 1 \
#     --n_gpu 1 \
#     --seed 70757  2>&1 | tee beam1test.log
# #
# python codet5_main.py \
#     --num_beams 2 \
#     --output_dir=./saved_models \
#     --model_name=model.bin \
#     --do_test \
#     --test_data_file=./data/cve_fixes_test.csv \
#     --encoder_block_size 512 \
#     --decoder_block_size 256 \
#     --eval_batch_size 1 \
#     --n_gpu 1 \
#     --seed 70757  2>&1 | tee beam2test.log
# #
# python codet5_main.py \
#     --num_beams 3 \
#     --output_dir=./saved_models \
#     --model_name=model.bin \
#     --do_test \
#     --test_data_file=./data/cve_fixes_test.csv \
#     --encoder_block_size 512 \
#     --decoder_block_size 256 \
#     --eval_batch_size 1 \
#     --n_gpu 1 \
#     --seed 70757  2>&1 | tee beam3test.log
# #
# python codet5_main.py \
#     --num_beams 4 \
#     --output_dir=./saved_models \
#     --model_name=model.bin \
#     --do_test \
#     --test_data_file=./data/cve_fixes_test.csv \
#     --encoder_block_size 512 \
#     --decoder_block_size 256 \
#     --eval_batch_size 1 \
#     --n_gpu 1 \
#     --seed 70757  2>&1 | tee beam4test.log
# #
# python codet5_main.py \
#     --num_beams 5 \
#     --output_dir=./saved_models \
#     --model_name=model.bin \
#     --do_test \
#     --test_data_file=./data/cve_fixes_test.csv \
#     --encoder_block_size 512 \
#     --decoder_block_size 256 \
#     --eval_batch_size 1 \
#     --n_gpu 1 \
#     --seed 70757  2>&1 | tee beam5test.log
# #
# python codet5_main.py \
#     --num_beams 10 \
#     --output_dir=./saved_models \
#     --model_name=model.bin \
#     --do_test \
#     --test_data_file=./data/cve_fixes_test.csv \
#     --encoder_block_size 512 \
#     --decoder_block_size 256 \
#     --eval_batch_size 1 \
#     --n_gpu 1 \
#     --seed 70757  2>&1 | tee beam10test.log
# #
# python codet5_main.py \
#     --num_beams 15 \
#     --output_dir=./saved_models \
#     --model_name=model.bin \
#     --do_test \
#     --test_data_file=./data/cve_fixes_test.csv \
#     --encoder_block_size 512 \
#     --decoder_block_size 256 \
#     --eval_batch_size 1 \
#     --n_gpu 1 \
#     --seed 70757  2>&1 | tee beam15test.log
# #
python codet5_main.py \
    --num_beams 20 \
    --output_dir=./saved_models \
    --model_name=model.bin \
    --do_test \
    --test_data_file=./data/cve_fixes_test.csv \
    --encoder_block_size 512 \
    --decoder_block_size 256 \
    --eval_batch_size 1 \
    --n_gpu 1 \
    --seed 70757  2>&1 | tee beam20test.log
# #
# python codet5_main.py \
#     --num_beams 50 \
#     --output_dir=./saved_models \
#     --model_name=model.bin \
#     --do_test \
#     --test_data_file=./data/cve_fixes_test.csv \
#     --encoder_block_size 512 \
#     --decoder_block_size 256 \
#     --eval_batch_size 1 \
#     --n_gpu 1 \
#     --seed 70757  2>&1 | tee beam50test.log
# #
# python codet5_main.py \
#     --num_beams 100 \
#     --output_dir=./saved_models \
#     --model_name=model.bin \
#     --do_test \
#     --test_data_file=./data/cve_fixes_test.csv \
#     --encoder_block_size 512 \
#     --decoder_block_size 256 \
#     --eval_batch_size 1 \
#     --n_gpu 1 \
#     --seed 70757  2>&1 | tee beam100test.log