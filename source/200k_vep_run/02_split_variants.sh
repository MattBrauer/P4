#!/usr/bin/sh

#split -n l/96 -d /home/dgealow/staging/vep_run/UK_BIOBANK_470K_WES_LOW_MAF_vep_input.tsv /home/dgealow/staging/vep_run/input/UK_BIOBANK_470K_WES_LOW_MAF_vep_input_part_
#mkdir -p  /home/mbrauer/staging/vep_run/input
split -n l/96 -d /tmp/mbrauer/UK_BIOBANK_470K_WES_LOW_MAF_vep_input.tsv /home/mbrauer/staging/vep_run/input/UK_BIOBANK_470K_WES_LOW_MAF_vep_input_part_

