#!/bin/bash
clear
source ../cuda/env.sh
export PATH=$CUDA_HOME/bin:$PATH
export LD_LIBRARY_PATH=$CUDA_HOME/lib64:$LD_LIBRARY_PATH
nvcc -V

source ../llvm/env.sh
export PATH=$LLVM_HOME/bin:$PATH
which clang

# env
source /root/miniconda3/etc/profile.d/conda.sh
conda activate wangjh_DTCSpMM
numpy_version=$(python -c "import numpy as np; print(np.__version__)")
echo "numpy==$numpy_version"

#
cd SparseTIR
mkdir -p build && rm -rf ./build/*
cd build
cmake .. && make -j 20
