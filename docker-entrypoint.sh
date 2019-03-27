#!/bin/sh

kaggle competitions download $1 -p ./work/inputs

shift
exec jupyter lab --ip=0.0.0.0 $@ /home/jupyter/work
