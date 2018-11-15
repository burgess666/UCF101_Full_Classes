#!/bin/sh
#sbatch --job-name=KQ_val_cnn_testset --gres=gpu:1 --mem=4096 --cpus-per-task=2 --output=output/output_validate_cnn_testset.out launch_validate_cnn_testset.sh

python3 validate_cnn_testset.py