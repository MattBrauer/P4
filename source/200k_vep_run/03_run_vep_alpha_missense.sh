#!/usr/bin/sh

parallel ~/ensembl-vep/vep \
--input_file ~/staging/vep_run/input/UKB_200K_WES/UKB_200K_WES_vep_input_part_{} \
--fasta /home/jovyan/.vep/homo_sapiens/dna/Homo_sapiens.GRCh38.dna.primary_assembly.fa \
--assembly GRCh38 \
--protein \
--uniprot \
--plugin AlphaMissense,file=/home/jovyan/.vep/Plugins/AlphaMissense_hg38.tsv.gz,cols=all \
--output_file /home/jovyan/staging/vep_run/output/UKB_200K_WES/UKB_200K_WES_vep_input_part_{} \
--cache --offline --tab --verbose --no_stats --force_overwrite \
::: {00..95}
