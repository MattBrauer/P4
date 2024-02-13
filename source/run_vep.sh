#!/usr/bin/bash

parallel ~/ensembl-vep/vep \
--input_file /home/jovyan/staging/vep_run/input/genes_and_health/vep_input_part_{} \
--fasta /home/jovyan/.vep/homo_sapiens/110_GRCh38/homo_sapiens_vep_110_GRCh38.tar.gz \
--fasta /home/jovyan/.vep/homo_sapiens/dna/Homo_sapiens.GRCh38.dna.primary_assembly.fa \
--assembly GRCh38 \
--symbol \
--merged \
--max_af \
--show_ref_allele \
--check_ref \
--dont_skip \
--mane \
--plugin LoF,loftee_path:/home/jovyan/loftee/,human_ancestor_fa:/home/jovyan/.vep/Plugins/human_ancestor.fa.gz,conservation_file:/home/jovyan/.vep/Plugins/loftee.sql \
--plugin REVEL,/data/maze-reference-data-public/vep/new_tabbed_revel_grch38.tsv.gz \
--output_file /home/jovyan/staging/vep_run/output/genes_and_health/vep_output_part_{}.tsv \
--cache --offline --tab --verbose --no_stats \
::: {00..63}

