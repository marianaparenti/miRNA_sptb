# Placental microRNA signatures of spontaneous preterm birth

This repository contains the code for the analyses of placental microRNAs associated with spontaneous preterm birth and for establishing the placental microRNA--mRNA regulatory network presented in [this _bioRxiv_ preprint](https://doi.org/10.64898/2026.08.21.746278). We have made the full results of the miRNA–-mRNA network available in a separate, searchable web application, Placenta miRNA–mRNA Regulatory Network, which can be accessed at [https://www.paquettelab.org/placental-computational-tools/mirnanetwork](https://www.paquettelab.org/placental-computational-tools/mirnanetwork). 

### Directory Information

This repository includes the code used to:

+ Establish the microRNA--mRNA regulatory network
+ Test microRNA regulons for enrichment with genes in KEGG pathways
+ Conduct the differential micorRNA analysis for microRNAs associated with spontaneous preterm birth and subsequent network analyses
+ Generate the figures and tables from the manuscript

In the `network_construction` directory, the RMarkdown files are ordered.

The complete differential microRNA expression analysis was conducted in the `DEG_analysis.Rmd`.

```
.
└── miRNA_sPTB/
    ├── network_construction/
    │   ├── TargetScan/
    │   │   ├── Summary_Counts.all_predictions.txt
    │   │   ├── Gene_info.txt
    │   │   └── miR_Family_Info.txt
    │   ├── miRDB/
    │   │   └── miRDB_v6.0_prediction_results.txt
    │   ├── gencode_v33/
    │   │   ├── gencode.v33.annotation.gff3
    │   │   ├── gencode.v33.metadata.EntrezGene
    │   │   ├── gencode.v33.metadata.HGNC
    │   │   └── genecode.v33.metadata.RefSeq
    │   ├── KEGG_pathways/
    │   │   ├── kegg_pathways_cleaning.R
    │   │   └── KEGG_database_20240719.Rds
    │   ├── 01_clean_sequencing_data.Rmd
    │   ├── 02_clean_targetscan_mirdb.Rmd
    │   ├── 03_network_construction.Rmd
    │   └── 04_network_interpretation.Rmd
    ├── sptb_analysis/
    │   └── DEG_analysis.Rmd
    └── README.md
```

### Data availability

Data accessed from publicly accessible databases was downloaded and saved in directories in this repository so that the same versions are available here. 

Human participant data from the Conditions Affecting Neurocognitive Development and Learning in Early childhood (CANDLE) cohort are accessible through the following pathways: 

+ **CANDLE sequencing data.** Placental microRNA and mRNA-sequencing data are available in the database of Genotypes and Phenotypes (dbGAP; accession number: phs003619.v1.p1). 
+ **CANDLE dietary and covariate data.** Covariate and birth outcomes data are maintained by the CANDLE study team and CANDLE has specific policies and procedures for accessing covariate data, which are outlined in the ECHO cohort profile paper (PMCID: PMC9594508). 
