---
title: "VEP annotation of UKB 200k exome variant"
subtitle: ""
author: "mbrauer@mazetx.com"
date: '`r format(Sys.Date(), "%B %d, %Y")`'
knit: (function(inputFile, encoding) {
  rmarkdown::render(inputFile, encoding = encoding, output_dir = "../output") })
output:
  BiocStyle::html_document:
    highlight: pygments
    number_sections: yes
    theme: united
    toc: yes
    code_folding: hide
---


# Running VEP

## Generate input variant lists from SciDB

```{sh generate-input-variant-lists}
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
```

```{r}


```

