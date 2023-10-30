#!/usr/bin/sh

mkdir -p ~/staging/esm_run/output/UKB_200K_WES

parallel ~/ensembl-vep/vep \
--input_file ~/staging/vep_run/input/UKB_200K_WES/UKB_200K_WES_vep_input_part_{} \
--fasta /home/jovyan/.vep/homo_sapiens/110_GRCh38/Homo_sapiens.GRCh38.dna.toplevel.fa \
--assembly GRCh38 \
--symbol \
--hgvs \
--check_ref \
--dont_skip \
--mane \
--output_file /home/jovyan/staging/vep_run/output/UKB_200K_WES/UKB_200K_WES_vep_input_part_{} \
--cache --offline --tab --verbose --no_stats \
::: {00..95}
