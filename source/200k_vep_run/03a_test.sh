~/ensembl-vep/vep --input_file ~/staging/vep_run/input/UKB_200K_WES/UKB_200K_WES_vep_input_part_00 \
--fasta /home/jovyan/.vep/homo_sapiens/dna/Homo_sapiens.GRCh38.dna.primary_assembly.fa \
--assembly GRCh38 --symbol --merged --max_af --show_ref_allele --check_ref --dont_skip --mane \
--plugin LoF,loftee_path:/home/jovyan/loftee/,human_ancestor_fa:/home/jovyan/.vep/Plugins/human_ancestor.fa.gz,conservation_file:/home/jovyan/.vep/Plugins/loftee.sql \
--plugin AlphaMissense,file=/home/jovyan/.vep/Plugins/AlphaMissense_hg38.tsv.gz,cols=all \
--plugin REVEL,/data/maze-reference-data-public/vep/new_tabbed_revel_grch38.tsv.gz \
--output_file /home/jovyan/staging/vep_run/output/UKB_200K_WES/UKB_200K_WES_vep_input_part_00 \
--cache --offline --tab --verbose --no_stats --force_overwrite
