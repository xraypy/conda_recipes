# conda_recipes

This repository contains recipes for conda, the package manager for
Anaconda Python.  The latest versions of these recipes can be found on the
GSECARS conda channel.

Recipes are included many Python packages developed at GSECARS, or tools
that these packages depend on.


# Building packages

After editing `meta.yaml` for any package here (say, to update the version
to push to the GSECARS conda channel), you should do:

```

PKG='pyepics'
PY='$HOME/anaconda3'  #

conda build $PKG

conda convert --platform all $PY/conda-bld/$PLATFORM/$PKG* -o dist

anaconda upload -u gsecars output/*/$PKG*
```
