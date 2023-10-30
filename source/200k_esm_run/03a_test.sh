~/ensembl-vep/vep --input_file ~/staging/vep_run/input/UKB_200K_WES/UKB_200K_WES_vep_input_part_00 \
--fasta /home/jovyan/.vep/homo_sapiens/dna/Homo_sapiens.GRCh38.dna.primary_assembly.fa \
--assembly GRCh38 --symbol --merged --max_af --show_ref_allele --check_ref --dont_skip --mane --ambiguous_hgvs \
--symbol --protein --hgvs --hgvsg --uniprot --biotype \
--output_file /home/jovyan/staging/vep_run/output/UKB_200K_WES_ESM/UKB_200K_WES_vep_input_part_00 \
--cache --offline --tab --verbose --no_stats --force_overwrite
