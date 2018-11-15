#!/bin/sh
#sbatch --job-name=KQ_cnn --gres=gpu:1 --mem=4096 --cpus-per-task=4 --output=output/output_train_cnn.out launch_train_cnn.sh

python3 train_cnn.py