#!/bin/bash
#preprocess all data
# $1 - name of person Default = KyriacosXanthos
# $2 - datapath Defualt = /Users/lysi2/Other/Fitbit_Data/

python preprocess_data.py --datapath $2 --name $1

python data_cleaning.py --datapath $2  --name $1

python analysis.py --name $1

python ML_fitbit.py --name $1 --train steps
