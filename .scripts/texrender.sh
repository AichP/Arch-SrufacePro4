#!/bin/bash
latexmk -time -pvc -pdf -new-viewer- -view=pdf -output-directory=tex_output -recorder $1 &
