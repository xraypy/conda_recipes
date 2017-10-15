#!/bin/bash

$PYTHON setup.py install

$PREFIX/bin/pip install --upgrade --use-wheel fabio pyFAI
