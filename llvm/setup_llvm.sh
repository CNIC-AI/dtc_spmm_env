#!/bin/bash
clear
source env.sh
WORKSPACE=$(dirname $(readlink -f "${BASH_SOURCE[0]}"))

# source ~/anaconda3/etc/profile.d/conda.sh
source /root/miniconda3/etc/profile.d/conda.sh
conda activate wangjh_DTCSpMM
# pip install ninja
# pip install pybind11

#
cd $VERSION
mkdir -p build && rm -rf build/*
cd build
cmake -G Ninja ../llvm \
    -DLLVM_ENABLE_PROJECTS="mlir;clang" \
    -DLLVM_TARGETS_TO_BUILD="host" \
    -DLLVM_ENABLE_ASSERTIONS=ON \
    -DCMAKE_BUILD_TYPE=Release \
    -DMLIR_ENABLE_BINDINGS_PYTHON=ON \
    -DPython3_EXECUTABLE=$(which python3) \
    -DCMAKE_INSTALL_PREFIX="$LLVM_HOME"

ninja -j 30
ninja check-mlir
