# Cloud ML Engine: Qwik Start-GSP076

# Install TensorFlow
pip install --user --upgrade tensorflow
python -c "import tensorflow as tf; print('TensorFlow version {} is installed.'.format(tf.VERSION))"

# Clone the example repo
git clone https://github.com/GoogleCloudPlatform/cloudml-samples.git
cd cloudml-samples/census/estimator

# Develop and validate your training application locally
# Get your training data
mkdir data
gsutil -m cp gs://cloud-samples-data/ml-engine/census/data/*data/

export TRAIN_DATA=$(pwd)/data/adult.data.csv
export EVAL_DATA=$(pwd)/data/adult.test.csv

head adult.data.csv

# Install dependencies
pip install --user -r ../requirements.txt

# Run a local training job
export MODEL_DIR=output

gcloud ai-platform local train \
  --module-name trainer.task
  --package-path trainer/ \
  --job-dir $MODEL_DIR \
  -- \
  --train-files $TRAIN_DATA \
  --eval-files $EVAL_DATA \
  --train-steps 1000 \
  --eval-steps 100

# Inspect the summary logs using Tensorboard
tensorboard --logdir=$MODEL_DIR --port=8080

# Running model prediction locally (in Cloud Shell)
ls output/export/census
