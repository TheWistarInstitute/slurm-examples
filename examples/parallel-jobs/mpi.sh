#!/bin/bash
# Job name:
#SBATCH --job-name=mpi-job
#
# Account:
#SBATCH --account=wistar
#
# Partition:
#SBATCH --partition=defq
#
# Number of MPI tasks needed for use case (example):
#SBATCH --ntasks=40
#
# Processors per task:
#SBATCH --cpus-per-task=1
#
# Wall clock limit:
#SBATCH --time=00:00:30
#
## Command(s) to run (example):
module load gcc openmpi
mpirun ./a.out