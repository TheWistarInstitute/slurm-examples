# Environment Variables

Modules must be loaded before they can be used. A few examples of of these modules are R, Singularity, Python, Anaconda3, etc.

Modules should be loaded (if not already) by using the following command(s):

```bash
module load <module-name>
```

Please see our [Applications and Software](https://hpc.apps.wistar.org/guide/software/) page for more information on existing, installing, and searching for modules.

The **01.sh** script loads the ***R*** module and then prints the path to the its installation directory.
