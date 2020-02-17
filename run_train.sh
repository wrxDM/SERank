#!/bin/bash

pip install -r requirements
output_dir=outputs
mkdir $output_dir

python serank.py \
  --train_path=data/train.txt \
  --vali_path=data/vali.txt \
  --test_path=data/test.txt \
  --output_dir=$output_dir \
  --num_features=136 \
  --serank=True