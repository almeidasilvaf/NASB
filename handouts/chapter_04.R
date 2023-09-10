
set.seed(123) # for reproducibility

# Load required packages
library(tidyverse)
library(BioNERO)
library(SummarizedExperiment)
library(here)


# Getting to know the example data ----
load(here("data", "se_PRJNA800609.rda"))



load(here("data", "gma_tfs.rda"))




# GRN inference ----





## Individual algorithms ----







## Practice ----
#'
#' 1. Filter the GRN obtained with GENIE3 to keep only edges with weight >=0.2. 
#' Then, answer the questions below:
#' 
#' - What is the top TF in number of targets?
#' - What genes are regulated by the top TF?
#' 
#' 2. What is the rank of the edge Glyma.07G212400 -> Glyma.10G224500 in 
#' all three networks? What is the mean rank?
#' 








## Wisdom of the crowds ----








## Practice ----
#'
#' Explore the output of the GRN inferred with `exp2grn()` and answer the 
#' following questions.
#' 
#' - What regulator has the greatest number of targets?
#' - What genes are regulated by the top regulator?
#' - What is the minimum, maximum, mean, and median number of regulators 
#' per target?
#' 







# GRN analyses ----

## Finding GRN hubs ----







## Practice ----
#'
#' What is the minimum, maximum, mean, and median degree for GRN hubs?







## Exploring and visualizing GRNs ----







## Practice ----
#'
#' Create a subgraph with the top 10 hubs and their targets. Then, 
#' create different network visualizations based on the following instructions:
#'
#' *Network 1:* Default parameters in plot_grn()
#'
#' *Network 2:* Label all hubs.
#' 
#' *Network 3:* Label all hubs and change node colors (the fill aesthetics) so 
#' that regulators have the colors “black” and targets have the color “grey70”.
#'
#' *Network 4:* Label all hubs and add the following plot 
#' title: “Network representation of the top 10 hubs and their targets”
#'
#' *Network 5:* Label all hubs, change the network layout function 
#' to `with_gem`, and move the legend to the bottom of the plot.
#' 







