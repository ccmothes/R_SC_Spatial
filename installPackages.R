###
# script to run to ensure all libraries are installed
# carverd@colostate.edu 
# 20210902
### 


# code taken from https://rpubs.com/ccmothes/ColoradoSpecies
packageLoad <-
  function(x) {
    for (i in 1:length(x)) {
      if (!x[i] %in% installed.packages()) {
        install.packages(x[i])
      }
      library(x[i], character.only = TRUE)
    }
  }