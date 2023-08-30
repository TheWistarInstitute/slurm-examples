#!/bin/bash

# Job Options - must be set before ANY executable lines
#SBATCH --job-name="modules-example"
#SBATCH --output="modules-examples.%j.out

module load R
which R
