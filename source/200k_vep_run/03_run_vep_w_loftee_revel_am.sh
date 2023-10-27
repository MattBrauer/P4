#!/usr/bin/sh

mkdir -p ~/staging/vep_run/output/UKB_200K_WES

parallel ~/ensembl-vep/vep \
--input_file ~/staging/vep_run/input/UKB_200K_WES/UKB_200K_WES_vep_input_part_{} \
--fasta /home/jovyan/.vep/homo_sapiens/110_GRCh38/Homo_sapiens.GRCh38.dna.toplevel.fa \
#--fasta /home/jovyan/.vep/homo_sapiens/110_GRCh38/Homo_sapiens.GRCh38.dna.toplevel.fa.gz \
--assembly GRCh38 \
--symbol \
--max_af \
--show_ref_allele \
--check_ref \
--dont_skip \
--mane \
--plugin LoF,loftee_path:/home/jovyan/loftee/,human_ancestor_fa:/home/jovyan/.vep/Plugins/human_ancestor.fa.gz,conservation_file:/home/jovyan/.vep/Plugins/loftee.sql \
#--plugin LoF,loftee_path:/home/jovyan/loftee/,human_ancestor_fa:/home/jovyan/.vep/Plugins/human_ancestor.fa,conservation_file:/home/jovyan/.vep/Plugins/loftee.sql \
#--plugin AlphaMissense,file=/home/jovyan/.vep/Plugins/AlphaMissense_hg38.tsv.gz,cols=all \
--plugin AlphaMissense,file=/home/jovyan/.vep/Plugins/AlphaMissense_hg38.tsv.gz,cols=all \
#--plugin REVEL,/data/maze-reference-data-public/vep/new_tabbed_revel_grch38.tsv.gz \
--plugin REVEL,/data/maze-reference-data-public/vep/new_tabbed_revel_grch38.tsv.gz \
--output_file /home/jovyan/staging/vep_run/output/UKB_200K_WES/UKB_200K_WES_vep_input_part_{} \
--cache --offline --tab --verbose --no_stats \
::: {00..95}

