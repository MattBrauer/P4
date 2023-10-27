#!/usr/bin/sh

mkdir -p ~/staging/vep_run/output

parallel ~/workspace/ensembl-vep/vep \
--input_file ~/workspace/staging/vep_run/input/UKB_200K_WES/UKB_200K_WES_vep_input_part_{} \
--fasta /home/jovyan/.vep/homo_sapiens/110_GRCh38/Homo_sapiens.GRCh38.dna.toplevel.fa.gz
--assembly GRCh38 \
--symbol \
--max_af \
--show_ref_allele \
--check_ref \
--dont_skip \
--mane \
--plugin LoF,loftee_path:/home/dgealow/.vep/Plugins/,\
human_ancestor_fa:/home/dgealow/.vep/Plugins/human_ancestor.fa.gz,\
conservation_file:/home/dgealow/.vep/Plugins/loftee.sql \
--plugin REVEL,/home/dgealow/.vep/Plugins/new_tabbed_revel_grch38.tsv.gz \
--output_file ~/staging/vep_run/output/UK_BIOBANK_470K_WES_LOW_MAF_vep_output_part_{}.tsv \
--cache --offline --tab --verbose --no_stats \
::: {00..95}

