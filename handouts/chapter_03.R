
set.seed(123) # for reproducibility

# Load required packages
library(SummarizedExperiment)
library(GenomicRanges)
library(cageminer)
library(here)


# Getting to know the example data ----
load(here("data", "se_soyfungi.rda"))



gma_ranges <- rtracklayer::import(
    here("data", "gma_primary_transcripts.gff3.gz")
)








## Practice ----
#'
#' Explore the `GRanges` object created from the GFF3 file to answer the 
#' following questions:
#'
#' 1. How many ranges represent genes and CDS, respectively?
#' 2. How many chromosomes are there?
#' 3. Which chromosome has the greatest number of genes?
#' 4. What is the mean number of genes per chromosome?
#' 







load(here("data", "snps_soyfungi.rda"))






## Practice ----
#'
#' 1. Explore the `GRangesList` object with trait-related SNPs and 
#' answer the questions below:
#' 
#' - How many resistance-related SNPs are there against each pathogen?
#' - How many soybean chromosomes have SNPs associated with resistance 
#' to *Cadophora gregata*?
#' 






# Exploratory data analyses ----






load(here("data", "gma_chrlen.rda"))







# Mining high-confidence candidate genes ----

load(here("data", "gcn_soyfungi.rda"))
load(here("data", "guides_soyfungi.rda"))






## Practice ----
#' 
#' 1. Verify that results obtained with the one-step and with the 
#' step-by-step mining are the same.
#' 
#' 2. Repeat the candidate mining with `mine_candidates()`, but now look 
#' for high-confidence candidates against *Fusarium virguliforme*. 
#' Use the following vector as `sample_group`:
#'
fvir_conditions <- paste0(
    "Fvirguliforme_",
    c(
        "stress_0dpi", "stress_10-24days", "stress_10dpi", "stress_14dpi",
        "stress_2dpi", "stress_3-5days", "stress_4dpi", "stress_7dpi"
    )
)
#'
#' How many high-confidence candidate genes are there?
#' 







# Scoring prioritized candidate genes ----
load(here("data", "gma_tfs.rda"))









## Practice ----
#'
#' Explore the output of `score_genes()` and answer the questions below:
#' 
#' - Which gene has the highest score?
#' - Which gene has the lowest score?
#' 








