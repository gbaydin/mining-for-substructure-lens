#!/bin/bash

#SBATCH --job-name=train_alices_alpha_0.1
#SBATCH --output=log_train_alices_alpha_0.1.log
#SBATCH --nodes=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=32GB
#SBATCH --time=7-00:00:00
#SBATCH --gres=gpu:1

source activate lensing
cd /scratch/jb6504/StrongLensing-Inference/

python -u train.py alices --alpha 0.1 --name alices_alpha_0.1 --dir /scratch/jb6504/StrongLensing-Inference
