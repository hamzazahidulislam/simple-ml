#!/bin/bash



# conda activate ./env
# ls -a /home/user/miniconda3/bin/ | grep conda

# ls -a /home/user/miniconda3/etc/profile.d/conda.sh 

# Path to your conda.sh script (adjust if your installation path differs)
CONDA_SH_PATH=eval "$(/home/user/miniconda3/bin/conda shell.bash hook)"
 
# Source the conda.sh script to initialize Conda
if [ -f "$CONDA_SH_PATH" ]; then
    # . "$CONDA_SH_PATH"
    echo "D"
else
    echo "Error: conda.sh not found at $CONDA_SH_PATH"
    exit 1
fi

# conda activate base

# my_function() {
#     # eval echo hi
#     echo "First argument: $1"
#     echo "Second argument: $2"
#     eval "$(/home/user/miniconda3/bin/conda shell.bash hook)"
#     # sleep 5
# }

# my_function "hello" "world"

# if [ my_function ]; then
#   echo "Hi"
# fi