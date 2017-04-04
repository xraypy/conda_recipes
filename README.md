# conda_recipes

This repository contains recipes for conda, the package manager for
Anaconda Python.  The latest versions of these recipes can be found on the
GSECARS conda channel.

Recipes are included many Python packages developed at GSECARS, or tools
that these packages depend on.


# Building packages

After editing `meta.yaml` for any package here (say, to update the version
to push to the GSECARS conda channel), you should run the script
`build_package.sh` as

```
   sh build_package.sh pyepics
```

which will build the package for the current platform using your current
Python/conda environment, and attempt to convert that package for all
platforms (win-32, win-64, linux-32, linux-64, and osx-64)
