#!/bin/bash
#

echo Script para cortar la cuarta parte de los ficheros

echo $1
head -n $(($( cat $1 | wc -l)/4)) $1 > ${1/%.fastq/_cut.fastq}

echo El fichero dividido en 4 partes : ${1/%.fastq/_cut.fastq}

