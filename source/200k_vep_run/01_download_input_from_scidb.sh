#!/bin/bash
#This generates input variant lists for VEP in a format that VEP likes
MYDIR=/tmp/mbrauer
#/home/mbrauer/staging
NAMESPACE='UKB_200K_WES'
set -ex
iquery -aq "
aio_save(
 project(
  apply(
    ${NAMESPACE}.VARIANT,
    chrom_attr, chrom,
    start,      pos,
    end,        pos + strlen(ref) - 1,
    allele,     ref + '/' + alt,
    strand,     '+'
  ),
  chrom_attr, start, end, allele, strand
 ),
 '$MYDIR/${NAMESPACE}_vep_input.tsv', 'format=tsv'
)" 
