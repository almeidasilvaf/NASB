
set.seed(123) # for reproducibility

# Load required packages
library(tidyverse)
library(BioNERO)
library(SummarizedExperiment)
library(here)


# Getting to know the example data ----
load(here("data", "se_PRJNA800609.rda"))
load(here("data", "se_PRJNA574764.rda"))





## Practice ----
#'
#' Explore the sample metadata of exp1 and exp2 and answer the questions below:
#' 
#' - How many different cultivars are there?
#' - What are the levels of the Treatment variable, and how many samples 
#' are there for each level?
#' - How many samples are there for each timepoint?
#' 







# Data preprocessing ----







## Practice ----
#'
#' 1. How many genes and samples are there in each processed data?
#' 
#' 2. If we selected the top 10k genes with the highest variances, 
#' why do we not have 10k genes in each final set?
    
    




# Identifying and analyzing consensus modules ----






## Practice ----
#'
#' Explore the output of `consensus_modules()` and answer the following questions:
#'
#' 1. How many consensus modules were identified between the two data sets?
#' 
#' 2. What are the largest and the smallest consensus modules?
#' 
#' 3. What is the mean and median number of genes per consensus modules?
#'











## Practice ----
#'
#' Explore the output of `consensus_trait_cor()` and answer the questions below:
#' 
#' 1. Which consensus module has the highest positive correlation to the 
#' infected status of the `Treatment` variable?
#' 
#' 2. Which consensus module has the highest negative correlation to the 
#' infected status of the `Treatment` variable?
#' 
#' 3. (Advanced) Based on your biological knowledge, what gene functions 
#' would you expect to find in the modules you found in questions 1 and 2?
#' 







## Challenge ----
#'
#' Use the function `module_enrichment()` to perform a functional enrichment 
#' analysis for each consensus module. Then, try to interpret the results 
#' in light of the consensus module-trait associations you found previously.
#' 
#' Tip: to load the functional annotation data, use the following:
    
load(here("data", "gma_annotation.rda"))





# Calculating module preservation statistics ----







## Practice ----
#'
#' How many modules are there in each network?
#' 





    





## Practice ----
#'
#' 1. By default, {BioNERO} considers modules to be preserved if all 
#' preservation statistics (N=7) are significant (P <0.05). 
#' Suppose you want to be less stringent and consider modules as preserved 
#' if 5 or more statistics are significant. Would the number of 
#' preserved modules change? Verify that.
#' 
#' 2. Use the function `module_enrichment()` to find enriched functions in 
#' all modules of the reference network. Then, explore the enriched 
#' functions of preserved modules (if any).
#' 








