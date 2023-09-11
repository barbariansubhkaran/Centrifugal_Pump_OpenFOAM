#!/bin/bash

source /opt/openfoam8/etc/bashrc

decomposePar -force

foamJob -parallel -screen blueSolver
