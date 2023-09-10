
set.seed(123) # for reproducibility

## Load required packages
library(tidyverse)
library(BioNERO)
library(SummarizedExperiment)
library(here)

# Getting to know the example data ----
load(here("data", "se_PRJNA800609.rda"))








## Practice ----
#' 
#' Explore the exp object to answer the questions below:
#' 
#' 1. How many levels are there for the `Treatment` variable?
#' 
#' 2. Subset the expression data to keep only treated samples and calculate 
#' the mean expression for each gene. What is the ID of the gene with the 
#' greatest mean expression in treated samples? 
#' Tip: use the `rowMeans()` function to calculate means for all genes.
#' 









# Data preprocessing ----









## Practice ----
#' 
#' 1. Compare the objects `final_exp1` and `final_exp2` to verify that they are 
#' indeed the same.
#' 
#' 2. After correcting for confounders with `PC_correction()`, the expression 
#' data are quantile-normalized so that the expression levels for 
#' all genes are normally distributed. Visualize the distribution of 
#' expression levels for a few genes to verify that.
#' 






# Exploratory data analyses ----







## Practice ----
#' 
#' 1. Recreate the heatmap of sample correlations, but now add individual 
#' legends for the variables `Cultivar` and `Timepoint`.
#' 
#' 2. Create a PCA plot showing the 1st and 3rd principal components.
#' 






# Gene coexpression network inference ----





## Practice ----
#' 
#' Explore the object `gcn` to answer the following questions:
#' 
#' 1. How many modules are there?
#' 
#' 2. What is the intramodular degree of the gene Glyma.15G171800?
#' 
#' 3. What is the correlation coefficient of the gene pair Glyma.15G158200-Glyma.15G158400?
#' 
#' 4. The grey module is not actually a real module; it contains genes 
#' that could not be assigned to any other module, so it’s basically a 
#' trash bin. How many genes are in this module?
#'   






# Visual summary of the inferred coexpression modules ----






# Identifying module-trait associations ----






## Challenge ---
#' 
#' Create a multi-panel figure showing the expression profiles of 
#' the four modules with the highest absolute correlations (sign must 
#' be ignored) with the infected state of the variable `Treatment`. 
#' For that, use the following steps:
#' 
#' 1. Filter the data frame `me_trait` to include only correlations between 
#' modules and infected;
#' 
#' 2. Arrange the rows in descending order based on the absolute value of `cor`;
#' 
#' 3. Extract the name of the top 4 modules.
#' 
#' 4. Iterate (with `lapply()` or a for loop) through each module name 
#' and create a plot with `plot_expression_profile()`;
#' 
#' 5. Combine the plots into a multi-panel figure using the `wrap_plots()`
#' function from the {patchwork} package.
#' 








# Functional analyses of coexpression modules ----





## Practice ----
#' 
#' 1. Inspect the enrichment results in `sea_mapman` and answer 
#' the following questions:
#' 
#' - How many modules had enriched terms?
#' - What proportion of the total number of modules does that represent?
#'
#' 2. Rerun the enrichment analysis, but now using the annotation data frame 
#' in `gma_annotation$InterPro`. Then, answer the questions below:
#' 
#' - How many modules had enriched terms?
#' - What proportion of the total number of modules does that represent?
#' - Were the number of modules with enriched terms different when using 
#' MapMan annotation and InterPro annotation? If so, 
#' why do you think that happened?
#' 
#' 3. (Optional, advanced) Choose one of the interesting modules you found 
#' in the previous section (on module-trait correlations) and look at 
#' the enrichment results for it. Based on the expression profiles 
#' and enrichment results, can you come out with a reasonable 
#' biological explanation for the observed expression patterns?
#' 








# Identifying hub genes and visualizing networks ----








## Practice ----
#'
#' 1. Recreate the edge list for the 'royalblue' module, but now 
#' use `method = 'min_cor'` and `rcutoff = 0.4`. Then, plot the network. 
#' Does that change the network? If so, how?
#' 
#' 2. Visualize the network from the previous question in the interactive mode.
#' 





