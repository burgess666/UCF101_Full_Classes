#!/bin/sh
#sbatch --job-name=KQ_val_rnn --gres=gpu:1 --mem=4096 --cpus-per-task=2 --output=output/output_val_lstm.out launch_validate_rnn.sh

python3 validate_rnn.py -m lstm

#python3 validate_rnn.py -m lrcn

#python3 validate_rnn.py -m mlp

#python3 validate_rnn.py -m conv_3d

#python3 validate_rnn.py -m c3d

