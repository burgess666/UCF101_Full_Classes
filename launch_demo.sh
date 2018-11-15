#!/bin/sh
#sbatch --job-name=KQ_demo --gres=gpu:0 --mem=10000 --cpus-per-task=4 launch_demo.sh

python3 demo.py
