#!/bin/bash
# pipeline.sh - full pipeline (mapping + variant calling + annotation)

REF="data/hiv_ref.fasta"
READS="reads.fastq"
BAM="results/reads.bam"
VCF_DIR="results/clair3_output"

# 1. Map reads
minimap2 -a $REF $READS | samtools view -Sb - | samtools sort -o $BAM
samtools index $BAM

# 2. Variant calling
run_clair3.sh \
  --bam_fn=$BAM \
  --ref_fn=$REF \
  --threads=2 \
  --platform=ont \
  --model_path=/usr/local/lib/python3.10/dist-packages/clair3/models/ont \
  --output=$VCF_DIR

# 3. Annotation
python scripts/annotate_variants.py $VCF_DIR/variants.vcf
