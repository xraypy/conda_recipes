#!/bin/bash

osname=`uname -s`

echo "IN build.sh :: "  $osname

# for Darwin, we do no try to compile extension
if [[ "$osname" == 'Darwin' ]] ; then
    $PYTHON setup_nocompile.py install

elif [[ "$osname" == 'Linux' ]] ; then
    export C_INCLUDE_PATH=$PREFIX/include
    $PYTHON setup.py install
fi
