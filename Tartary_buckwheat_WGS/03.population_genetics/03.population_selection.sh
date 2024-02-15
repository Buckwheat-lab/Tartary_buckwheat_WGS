conda activate xpclr_env
##HW_NL
xpclr --input /ku/567.passed_SNP.recode.vcf --samplesA  HW.txt --samplesB  NLF.txt --chr Ft1 --size 100000  --step 50000 --out ./HW-vs-NLF_Ft1.out
xpclr --input /ku/567.passed_SNP.recode.vcf --samplesA  HW.txt --samplesB  NLF.txt --chr Ft3 --size 100000  --step 50000 --out ./HW-vs-NLF_Ft3.out
xpclr --input /ku/567.passed_SNP.recode.vcf --samplesA  HW.txt --samplesB  NLF.txt --chr Ft4 --size 100000  --step 50000 --out ./HW-vs-NLF_Ft4.out
xpclr --input /ku/567.passed_SNP.recode.vcf --samplesA  HW.txt --samplesB  NLF.txt --chr Ft5 --size 100000  --step 50000 --out ./HW-vs-NLF_Ft5.out
xpclr --input /ku/567.passed_SNP.recode.vcf --samplesA  HW.txt --samplesB  NLF.txt --chr Ft6 --size 100000  --step 50000 --out ./HW-vs-NLF_Ft6.out
xpclr --input /ku/567.passed_SNP.recode.vcf --samplesA  HW.txt --samplesB  NLF.txt --chr Ft7 --size 100000  --step 50000 --out ./HW-vs-NLF_Ft7.out
xpclr --input /ku/567.passed_SNP.recode.vcf --samplesA  HW.txt --samplesB  NLF.txt --chr Ft8 --size 100000  --step 50000 --out ./HW-vs-NLF_Ft8.out
xpclr --input /ku/567.passed_SNP.recode.vcf --samplesA  HW.txt --samplesB  NLF.txt --chr Ft2 --size 100000  --step 50000 --out ./HW-vs-NLF_Ft2.out

##HW_SL
xpclr --input /ku/567.passed_SNP.recode.vcf --samplesA  HW.txt --samplesB  SLO.txt --chr Ft1 --size 100000  --step 50000 --out ./HW-vs-SLO_Ft1.out
xpclr --input /ku/567.passed_SNP.recode.vcf --samplesA  HW.txt --samplesB  SLO.txt --chr Ft3 --size 100000  --step 50000 --out ./HW-vs-SLO_Ft3.out
xpclr --input /ku/567.passed_SNP.recode.vcf --samplesA  HW.txt --samplesB  SLO.txt --chr Ft4 --size 100000  --step 50000 --out ./HW-vs-SLO_Ft4.out
xpclr --input /ku/567.passed_SNP.recode.vcf --samplesA  HW.txt --samplesB  SLO.txt --chr Ft5 --size 100000  --step 50000 --out ./HW-vs-SLO_Ft5.out
xpclr --input /ku/567.passed_SNP.recode.vcf --samplesA  HW.txt --samplesB  SLO.txt --chr Ft6 --size 100000  --step 50000 --out ./HW-vs-SLO_Ft6.out
xpclr --input /ku/567.passed_SNP.recode.vcf --samplesA  HW.txt --samplesB  SLO.txt --chr Ft7 --size 100000  --step 50000 --out ./HW-vs-SLO_Ft7.out
xpclr --input /ku/567.passed_SNP.recode.vcf --samplesA  HW.txt --samplesB  SLO.txt --chr Ft8 --size 100000  --step 50000 --out ./HW-vs-SLO_Ft8.out
xpclr --input /ku/567.passed_SNP.recode.vcf --samplesA  HW.txt --samplesB  SLO.txt --chr Ft2 --size 100000  --step 50000 --out ./HW-vs-SLO_Ft2.out

##NL_SL
xpclr --input /ku/567.passed_SNP.recode.vcf --samplesA  SLO.txt --samplesB  NLF.txt --chr Ft1 --size 100000  --step 50000 --out ./SLO-vs-NLF_Ft1.out
xpclr --input /ku/567.passed_SNP.recode.vcf --samplesA  SLO.txt --samplesB  NLF.txt --chr Ft3 --size 100000  --step 50000 --out ./SLO-vs-NLF_Ft3.out
xpclr --input /ku/567.passed_SNP.recode.vcf --samplesA  SLO.txt --samplesB  NLF.txt --chr Ft4 --size 100000  --step 50000 --out ./SLO-vs-NLF_Ft4.out
xpclr --input /ku/567.passed_SNP.recode.vcf --samplesA  SLO.txt --samplesB  NLF.txt --chr Ft5 --size 100000  --step 50000 --out ./SLO-vs-NLF_Ft5.out
xpclr --input /ku/567.passed_SNP.recode.vcf --samplesA  SLO.txt --samplesB  NLF.txt --chr Ft6 --size 100000  --step 50000 --out ./SLO-vs-NLF_Ft6.out
xpclr --input /ku/567.passed_SNP.recode.vcf --samplesA  SLO.txt --samplesB  NLF.txt --chr Ft7 --size 100000  --step 50000 --out ./SLO-vs-NLF_Ft7.out
xpclr --input /ku/567.passed_SNP.recode.vcf --samplesA  SLO.txt --samplesB  NLF.txt --chr Ft8 --size 100000  --step 50000 --out ./SLO-vs-NLF_Ft8.out
xpclr --input /ku/567.passed_SNP.recode.vcf --samplesA  SLO.txt --samplesB  NLF.txt --chr Ft2 --size 100000  --step 50000 --out ./SLO-vs-NLF_Ft2.out
