#!/bin/sh
#sbatch --job-name=KQ_cnn --gres=gpu:1 --mem=32000 --cpus-per-task=4 --output=output/output_train_cnn_3_gpu_with_logs.out launch_train_cnn.sh

python3 train_cnn.py