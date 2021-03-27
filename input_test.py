import tensorflow as tf
tf.enable_eager_execution()
ds = tf.data.TFRecordDataset('web30k/train.tfrecord')
def parse_fn(proto):
   features = {}
   features['label'] = tf.io.FixedLenFeature([200], tf.float32)
   example = tf.io.parse_single_example(proto, features)
   return example
ds = ds.map(parse_fn).batch(2)
gen = ds.make_one_shot_iterator()
print(next(gen))
#while True:
#    next(gen)
