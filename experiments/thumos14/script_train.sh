#!/bin/bash

GPU_ID=0
EX_DIR=thumos14

export PYTHONUNBUFFERED=true

LOG="experiments/${EX_DIR}/log.txt.`date +'%Y-%m-%d_%H-%M-%S'`"


time python ./experiments/${EX_DIR}/train_net.py --gpu ${GPU_ID} \
  --solver ./experiments/${EX_DIR}/solver.prototxt \
  --weights ./pretrain/ucf101.caffemodel \
  --cfg ./experiments/${EX_DIR}/td_cnn_end2end.yml \
  ${EXTRA_ARGS} \
  2>&1 | tee $LOG


