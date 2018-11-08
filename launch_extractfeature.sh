#!/bin/sh
#sbatch --job-name=KQH_extFeat --gres=gpu:0 --mem=65536 --cpus-per-task=4 --output=./output/output_extractFeature.out launch_extractfeatures.sh

python3 extract_features.py