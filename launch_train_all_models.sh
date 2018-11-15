#!/bin/sh
#sbatch --job-name=KQ_lstm --gres=gpu:1 --mem=4096 --cpus-per-task=2 --output=output/output_train_lstm.out launch_train_all_models.sh


python3 train.py -m lstm

#python3 train.py -m lrcn

#python3 train.py -m mlp

#python3 train.py -m c3d

#python3 train.py -m conv_3d
