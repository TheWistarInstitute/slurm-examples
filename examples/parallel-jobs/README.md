# Job Parallelization

## Index of Examples

> All of the contained examples have default arguments in the scripts- so these
> can be run just with `sbatch <script_name>`.  Any arguments you use in the
> command line will override those built into the script

### threaded-job.sh

Here `--cpus-per-task` should be no more than the number of cores on a node in the partition you request. You may want to experiment with the number of thread for your job to determine the optimal number, as computation speed does not always increase with more threads.

Note that if ``--cpus-per-task` is fewer than the number of cores on a node, your job will not make full use of the node. Strictly speaking the defaults will be set to 1 node and 1 task per node.

### simple-multicore.sh

This job script would be appropriate for multi-core R, Python, or MATLAB jobs. In the commands that launch your code and/or within your code itself, you can reference the `SLURM_NTASKS` environment variable to dynamically identify how many tasks(i.e. processing units) are available to you.

Here the number of CPUs used by your code at any given time should be no more than the number of cores on a node (~48 cores).

### mpi.sh

You should set the number of tasks to be a multiple of the number of cores per node in that partition, thereby making use of all the cores on the node(s) to which your job is assigned.

This example assumes that each task will use a single core; otherwise there could be resource contention amongst the tasks assigned to a node.

### alt-mpi.sh

This alternative explicitly specifies the number of nodes, tasks per node, and CPUs per task rather than simply specifying the number of tasks and having SLURM determine the resources needed. As before, one would generally when the number of tasks per node to equal a multiple of the number of cores on a node, assuming only 1 CPU per task.

### hybrid.sh

Here we request a total of 8 (= 2 x 4) MPI tasks, with 5 cores per task. This would make us of 40 cores in total (= 2 x 4 x 5) split across 2 nodes.