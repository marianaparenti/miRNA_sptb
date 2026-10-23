library(tidyverse)
library(edgeR)

## start by generating the KEGG pathways map
keggs <- getGeneKEGGLinks()

kegglst <- split(keggs$GeneID, keggs$PathwayID)

## conducted 19 July 2024: this corresponds to KEGG release 111.0 (1 July 2024)
keggmapper <- read.table("http://rest.kegg.jp/list/pathway/hsa/", sep = "\t", quote = "\"", fill = TRUE, comment.char = "")
keggmapper[,2] <- sapply(strsplit(keggmapper[,2], " - "), function(x) gsub(" ", "_", paste(x[-length(x)], collapse = " ")))

## remove prefix
names(kegglst) <- gsub("path:","", names(kegglst))

## then remove Human Disease Pathways
## Note: Get rid of 1, the superpathway "Metabolic pathways"
keggmapper<-keggmapper[2:263,]

# Map to pathways
kegglst<-kegglst[keggmapper$V1]
names(kegglst)<-keggmapper$V2

save(kegglst, keggmapper, keggs, file = here::here("network_construction", "KEGG_pathways", "KEGG_database_20240719.Rds"))