#!/bin/bash

#pip install -r requirements.txt
output_dir=outputs
rm -r $output_dir
mkdir $output_dir

python serank.py \
  --train_path=web30k/train.tfrecord \
  --vali_path=web30k/vali.tfrecord \
  --test_path=web30k/test.tfrecord \
  --output_dir=$output_dir \
  --num_features=136 \
  --serank=True \
  --query_label_weight=False \
  --tfrecord=True
