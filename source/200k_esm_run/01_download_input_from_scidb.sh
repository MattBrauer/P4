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
    chrom_attr,      chrom,
    pos_attr,        pos,
    ref_attr,        ref,
    alt_attr,        alt
  ),
  chrom_attr, pos_attr, ref_attr, alt_attr
 ),
 '$MYDIR/${NAMESPACE}_esm_input.tsv', 'format=tsv'
)" 
