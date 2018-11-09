#!/bin/sh
#sbatch --job-name=KQH_val_cnn_testset --gres=gpu:0 --mem=32768 --cpus-per-task=4 --output=output/output_validate_cnn_testset.out launch_validate_cnn_testset.sh

python3 validate_cnn_testset.py