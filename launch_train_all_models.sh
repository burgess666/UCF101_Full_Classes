#!/bin/sh
#sbatch --job-name=KQH_lstm --gres=gpu:0 --mem=65536 --cpus-per-task=8 --output=./output/output_train_all_models.out launch_train_all_models.sh


python3 train.py -m lstm

python3 train.py -m lcrn

python3 train.py -m mlp

python3 train.py -m c3d

python3 train.py -m conv_3d