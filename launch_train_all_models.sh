#!/bin/sh
#sbatch --job-name=KQ_c3d_conv3d --gres=gpu:1 --mem=32000 --cpus-per-task=4 --output=output/output_train_c3d_conv3d.out launch_train_all_models.sh


#python3 train.py -m lstm

#python3 train.py -m lrcn

#python3 train.py -m mlp

python3 train.py -m c3d

python3 train.py -m conv_3d
