#!/bin/sh
#sbatch --job-name=KQH_extFeat --gres=gpu:1 --mem=4096 --cpus-per-task=4 --output=output/output_extractFeature.out launch_extractfeature.sh

python3 extract_features.py