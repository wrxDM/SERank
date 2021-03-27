python create_dataset.py -tfrecord Fold1/train.txt web30k/train.tfrecord 200 136
python create_dataset.py -tfrecord Fold1/vali.txt web30k/vali.tfrecord 800 136
python create_dataset.py -tfrecord Fold1/test.txt web30k/test.tfrecord 800 136
