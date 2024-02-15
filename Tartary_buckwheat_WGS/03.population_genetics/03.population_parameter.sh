##filtering SNP
plink --vcf raw.snp.gz --maf 0.05 --mind 0.3 --geno 0.1 --recode vcf-iid --out kuqiao.snp.filter

##LD filtering
plink --vcf kuqiao.snp.filter.vcf --indep-pairwise 50 5 0.3 --make-bed --out kuqiao.snp.filter_50_5_0.3
plink --bfile kuqiao.snp.filter_50_5_0.3 --extract kuqiao.snp.filter_50_5_0.3.prune.in --out kuqiao.snp.filter_50_5_0.3.prune.in

##Fst,π
vcftools --vcf kuqiao.snp.filter.vcf --weir-fst-pop pop1.txt --weir-fst-pop pop2.txt --fst-window-size 100000 --fst-window-step 50000 --out pop1_pop2.windows
vcftools --vcf kuqiao.snp.filter.vcf --keep sample.txt --window-pi 100000 --window-pi-step 50000 --out sample_windows
