#!/bin/bash

prefix=1111
sed_string="sed -i.bak 's/PASTASAUCE/$prefix/g' ./input/data-phase3.json"
echo $sed_string
eval $sed_string
cp ./input/data-phase3.json ./input/data-phase3-new.json
cp ./input/data-phase3.json.bak ./input/data-phase3.json