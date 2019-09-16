## load the library for Linear Mixed-Effects Models using 'Eigen' and S4 
library(lme4) 

## read the phenotype data
pheno = read.table("./100_kernels_weight.me.txt", sep="\t", header=T) 

## Check to ensure data imported correctly 
str(pheno)
head(pheno)
tail(pheno)

## Attach dataset
attach(pheno)

# Rename variables for ease of use 
KW_100 = as.numeric(KW_100) 
LINE = as.factor(line)
ENV = as.factor(env) 

## Calculate variance components
# Linear Model with random effects for variance components
blp = lmer(KW_100 ~ (1|LINE) + (1|ENV), data = pheno, control=lmerControl(check.nobs.vs.nlev = "ignore", check.nobs.vs.rankZ = "ignore", check.nlev.gtr.1 = "ignore", check.nobs.vs.nRE="ignore")) 

# Extract variance components 
summary(blp)

# estimate BLUPS 
blups = ranef(blp) 
# look at output structure
str(blups)

names(blups) 

## blup add the mean 
lines=blups$LINE+blp@beta 
res=data.frame(id=rownames(lines),blup=lines) 
write.table(res, file="./100_kernels_weight.me.blup.txt", row.names = F, quote = F, sep = "\t") 
