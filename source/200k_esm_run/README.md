On SciDB server:

`export PATH=$PATH:/opt/scidb/19.11/bin/`
`mkdir /tmp/mbrauer; chmod -R 777 /tmp/mbrauer; ./01_download_input_from_scidb.sh`
`./02_split_variants.sh`
`tar cvfz ukb_200k_inputs.tgz /home/mbrauer/staging/vep_run/input/*`

Copy to other instance then:
`tar xvfz ukb_200k_inputs.tgz -C .`
