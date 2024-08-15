WORKSPACE=$(dirname $(readlink -f "${BASH_SOURCE[0]}"))

# VERSION=llvm-project-16.0.6.src
VERSION=llvm-project-14.0.6.src
LLVM_HOME="$WORKSPACE/$VERSION-install"
