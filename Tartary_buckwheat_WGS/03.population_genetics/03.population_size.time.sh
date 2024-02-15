##SMC++ pipeline
Pn1=$1
Pn2=$2

for i in {1..20}
do
    pop1=$(shuf -n 10 $Pn1.sample.txt|sed ':a;N;s/\n/,/g;ta')   ##normalize sample size
    pop2=$(shuf -n 10 $Pn2.sample.txt|sed ':a;N;s/\n/,/g;ta')  
    mkdir ./${Pn1}.data.${i}          
    mkdir ./${Pn2}.data.${i}        
    mkdir ./SLO_NLN.merge.data.${i}     
    for k in {1..8}
    do
        smc++ vcf2smc --cores 30 --ignore-missing \
	  /data/Professeor/population_history/smc/567sample.snp.recode.vcf.gz ./${Pn1}.data.${i}/${Pn1}.${k}.smc.gz Ft${k} ${Pn1}:${pop1}
        smc++ vcf2smc --cores 30 --ignore-missing \
	  /data/Professeor/population_history/smc/567sample.snp.recode.vcf.gz ./${Pn2}.data.${i}/${Pn2}.${k}.smc.gz Ft${k} ${Pn2}:${pop2}
        smc++ vcf2smc --cores 30 --ignore-missing \
	  /data/Professeor/population_history/smc/567sample.snp.recode.vcf.gz ./${Pn1}_${Pn2}.merge.data.${i}/${Pn1}_${Pn2}.${k}.smc.gz Ft${k} ${Pn1}:${pop1} ${Pn2}:${pop2}
        smc++ vcf2smc --cores 30 --ignore-missing \
	  /data/Professeor/population_history/smc/567sample.snp.recode.vcf.gz ./${Pn2}_${Pn1}.merge.data.${i}/${Pn2}_${Pn1}.${k}.smc.gz Ft${k} ${Pn2}:${pop2} ${Pn1}:${pop1}
    done
    smc++ estimate --cores 30 --spline cubic -o ./${Pn1}.data.${i} 7e-9 ./${Pn1}.data.${i}/.*.smc.gz      
    smc++ estimate --cores 30 --spline cubic -o ./${Pn2}.data.${i} 7e-9 ./${Pn2}.data.${i}/*.smc.gz      
    smc++ split -o ${Pn1}_${Pn2}.split.${i}/ ./${Pn1}.data.${i}/model.final.json ./${Pn2}.data.${i}/model.final.json ./${Pn1}_${Pn2}.merge.data.${i}/*.smc.gz
    smc++ plot --csv --cores 20 -g 1 ${Pn1}_${Pn2}.split.${i}.pdf ./${Pn1}_${Pn2}.split.${i}/model.final.json 
done
echo 'finishing the SMC++ workflow'
