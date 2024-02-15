##Admixtools2
conda activate admixtools_env
devtools::install_github("uqrmaie1/admixtools")
library("admixtools")
library(tidyverse)
prefix = 'group.sample.snp'
my_f2_dir ='./'
extract_f2(prefix, my_f2_dir)
pops=c("Outgroup","G1","G2","G3","G4","G5","G6","G7","G8","G9","G10")
f2_blocks = f2_from_geno(my_f2_dir)
fst<-fst(f2_blocks)
write.table(fst,"group.f2.txt",sep="\t",row.names=F,col.names=T)
f3<-f3(f2_blocks, pops)
write.table(f3,"group.f3.txt",sep="\t",row.names=F,col.names=T)
D_stat<-qpdstat(f2_blocks, pops)
write.table(D_stat,"group.D-stat.txt",sep="\t",row.names=F,col.names=T)


