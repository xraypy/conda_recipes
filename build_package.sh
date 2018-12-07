#!/bin/bash

PACKAGE=$1

PLAT=`conda info -a | grep platform | sed 's/[ ]*platform :[ ]*//g'`

ROOT=`conda info -a | grep 'sys.prefix:' | sed 's/[ ]*sys.prefix:[ ]*//g'`

echo 'Building Package ' $PACKAGE

conda build $PACKAGE

cp $ROOT/conda-bld/$PLAT/$PACKAGE* dist/$PLAT/.


conda convert --platform all $ROOT/conda-bld/$PLAT/$PACKAGE* -o dist


echo "# Now do"
echo '# '    anaconda upload -u gsecars dist/\*/$PACKAGE\*
