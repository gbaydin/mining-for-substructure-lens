#!/bin/bash

#SBATCH --job-name=sim-tr-pr
#SBATCH --output=log_simulate_train_pointref_%a.log
#SBATCH --nodes=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=16GB
#SBATCH --time=1-00:00:00
# #SBATCH --gres=gpu:1

source activate lensing
cd /scratch/jb6504/StrongLensing-Inference/

python -u simulate.py -n 10000 --pointref --name train_pointref_${SLURM_ARRAY_TASK_ID} --dir /scratch/jb6504/StrongLensing-Inference