#!/bin/bash
#SBATCH --job-name=ito
#SBATCH --nodes=1
#SBATCH --gres=gpu:3
#SBATCH --ntasks-per-node=8
#SBATCH --time=5-00:00:00
#SBATCH --partition=dept_gpu
#SBATCH --output=/net/galaxy/home/koes/minhyekj/byob/byob/utils/output
#SBATCH --mail-type=ALL
#SBATCH --mail-user=minhyekj@andrew.cmu.edu


############################
##       Environment      ##
############################
cd /net/galaxy/home/koes/minhyekj/byob/byob/

eval "$(conda shell.bash hook)"
conda activate byob

############################
##   Check GPU status     ##
############################
nvidia-smi 


############################
##   Run Training Script  ##
############################
python -m utils.metrics 

sbatch metrics.sh
squeue -u <사용자명>
scancel <JOBID>
