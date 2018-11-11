#!/bin/sh
#sbatch --job-name=KQ_val_rnn --gres=gpu:0 --mem=32000 --cpus-per-task=4  --output=output/output_val_lstm_lrcn_mlp.out launch_validate_rnn.sh

python3 validate_rnn.py -m lstm

python3 validate_rnn.py -m lrcn

python3 validate_rnn.py -m mlp

#python3 validate_rnn.py -m conv_3d

#python3 validate_rnn.py -m c3d



