library("vcfR")
library("QTLseqr")

##数据处理
vcf <- read.vcfR("hulltype.snp.vcf")
chrom <- getCHROM(vcf)
pos <- getPOS(vcf)
ref <- getREF(vcf)
alt <- getALT(vcf)
ad <- extract.gt(vcf, "AD")
ref_split <- masplit(ad, record = 1, sort = 0)
alt_split <- masplit(ad, record = 2, sort = 0)
gt <- extract.gt(vcf, "GT")
df <- data.frame(CHROM = chrom, POS = pos, REF = ref, ALT = alt, AD_REF.type1 = ref_split[,3], AD_ALT.type1 = alt_split[,3], AD_REF.type2 = ref_split[,4], AD_ALT.type2 = alt_split[,4])
mask <- which(gt[,"CRR176178"] != "0/1" &  gt[,"CRR176179"] != "0/1")
df <- df[mask,]
write.table(df, file = "hulltype.tsv", sep = "\t", row.names = F, quote = F)
df <- importFromTable("hulltype.tsv", highBulk = "type1", lowBulk = "type2", chromList = paste0("Chr", formatC(1:8, width = 2, flag = 0)), sep = "\t")
df <- subset(df, !is.na(SNPindex.LOW) & !is.na(SNPindex.HIGH))
##数据分析
df <- runGprimeAnalysis(SNPset = df, windowSize = 1e6, outlierFilter = "deltaSNP")
df <- runQTLseqAnalysis(SNPset=df, windowSize=1e6, popStruc="RIL", bulkSize=c(79,142))
plotQTLStats(SNPset=df, var="Gprime", plotThreshold=TRUE, q=0.01)

pdf("hull_qtl.pdf",width=15, height=10)
plotQTLStats(SNPset=df, var="deltaSNP", plotIntervals = TRUE) + ggplot2::ylim(-0.75,0.75)
dev.off()

##QTL区域输出
getQTLTable(df, method = "QTLseq", interval = 99, export = TRUE, fileName = "QTL.csv")

