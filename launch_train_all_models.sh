#!/bin/sh
#sbatch --job-name=KQH_lstm --gres=gpu:0 --mem=32000 --cpus-per-task=4 --output=output/output_train_lstm_lrcn.out launch_train_all_models.sh


python3 train.py -m lstm

python3 train.py -m lrcn

#python3 train.py -m mlp

#python3 train.py -m c3d

#python3 train.py -m conv_3d
