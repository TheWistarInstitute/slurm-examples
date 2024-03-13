# Apptainer

Using Apptainer in a SLURM job is similar to how you would use any other software within a job. Load the module and then use your container:

```bash
module load apptainer
apptainer pull/build/shell/exec/run container.sif
```

## Apptainer commands

**pull** an image from a library (e.g docker, sylabs, etc.)
```bash
apptainer pull <library>://<image>
```

**build** a container from a definition file
```bash
apptainer build <container>.sif <definition>.def
```

**shell** into container (i.e. launch bash shell)
```bash
apptainer shell <container>.sif
```

**exec**ute command in container
```bash
apptainer exec <container>.sif <command>
```

**run** default container commands
```bash
apptainer run <container.sif>
```


Please see [https://hpc.apps.wistar.org/guide/containers](https://hpc.apps.wistar.org/guide/containers) for more information and documentation on using Apptainer in the WI-HPC Cluster
