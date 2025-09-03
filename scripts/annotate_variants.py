import sys
import vcf

resistance_db = {
    "M184V": ["3TC", "FTC"],
    "K65R": ["TDF", "ABC"],
    "K103N": ["EFV", "NVP"],
    "Y181C": ["NVP", "RPV"]
}

if len(sys.argv) < 2:
    print("Usage: python annotate_variants.py <vcf_file>")
    sys.exit(1)

vcf_file = sys.argv[1]
vcf_reader = vcf.Reader(open(vcf_file, "r"))

for record in vcf_reader:
    ref = record.REF
    pos = record.POS
    for alt in record.ALT:
        mutation = f"{ref}{pos}{alt}"
        if mutation in resistance_db:
            print(f"⚠️ Detected {mutation} → Resistance to {resistance_db[mutation]}")
