#' Read wildfilder dataset
#' 
#' @description
#' This function loads the wildfinder datasets (csv file) stored in 
#' `data/wildfinder/`. 
#' 
#' @param filename is the csv name i.e. "wildfinder-ecoregions_list.csv"
#'
#' @return no return value.
#' @export
#'
open_wildfinder_csv <- function(filename) {
  
  ## Localisation path 
  path <- here::here("data", "wildfinder")
   
  ## open csv
  data <- read.csv(file.path(path, filename))

  return(data) 
  # NB: return optional here because the return is the last part of this function
  
}