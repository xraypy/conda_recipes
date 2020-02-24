#!/bin/bash

PACKAGE=$1

PLAT=`conda info -a | grep platform | sed 's/[ ]*platform :[ ]*//g'`

ROOT=`conda info -a | grep 'sys.prefix:' | sed 's/[ ]*sys.prefix:[ ]*//g'`

echo 'Building Package ' $PACKAGE

conda build $PACKAGE

cp $ROOT/conda-bld/$PLAT/$PACKAGE* dist/$PLAT/.


for TARG in win-64 osx-64 linux-64 linux-armv7l ; do
    if [ $PLAT != $TARG ]  ; then
        conda convert -f -p $TARG  $ROOT/conda-bld/$PLAT/$PACKAGE* -o dist
    fi
done

echo "# Now do"
echo '# '    anaconda upload -u gsecars dist/\*/$PACKAGE\*
