#!/bin/bash
#SBATCH --time=01:10:59
#SBATCH --mem=250G
#SBATCH --partition=gpu-h100-80g 
#SBATCH --gpus=1
#SBATCH --cpus-per-task=6
#SBATCH --output=logs/%A.out
#SBATCH --job-name=conv
#SBATCH -n 1

module load mamba

source activate merbench-env

python toolkit/proprocess/iemocap.py
