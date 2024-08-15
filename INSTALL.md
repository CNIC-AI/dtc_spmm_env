#

## CUDA

``` bash
wget https://developer.download.nvidia.com/compute/cuda/12.1.1/local_installers/cuda_12.1.1_530.30.02_linux.run

```

## LLVM

- 指定使用14版本：<https://github.com/llvm/llvm-project/releases/tag/llvmorg-14.0.6>

``` bash
tar -xvf ${}

```

## DTC-SpMM_ASPLOS24

``` bash
conda install pytorch pytorch-cuda=12.1 -c pytorch -c nvidia
pip install numpy
pip install scipy
```

## SparseTIR

- <https://sampl.cs.washington.edu/SparseTIR/install.html>

``` bash
git clone --recursive https://github.com/uwsampl/SparseTIR.git
```
