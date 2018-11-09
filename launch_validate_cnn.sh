#!/bin/sh
#sbatch --job-name=KQH_val_cnn_fewimages --gres=gpu:0 --mem=4096 --cpus-per-task=2 --output=output/output_validate_cnn.out launch_validate_cnn.sh

python3 validate_cnn.py
