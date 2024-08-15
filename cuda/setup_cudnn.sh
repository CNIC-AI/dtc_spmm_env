#!/bin/bash
source env.sh
echo $CUDA_HOME
echo $CUDNN_HOME
# exit

cp $CUDNN_HOME/include/cudnn*.h $CUDA_HOME/include
cp -P $CUDNN_HOME/lib/libcudnn* $CUDA_HOME/lib64

chmod a+r $CUDA_HOME/include/cudnn*.h $CUDA_HOME/lib64/libcudnn*
