
#' Download wildfinder dataset
#'
#'@description
#' This function downloads the wildfinder datasets (csv file) hosted on the 
#' GitHub repository <https://github.com/rdatatoolbox/datarepo/>. The file
#' won't be downloaded if already exists locally (except if `overwrite = TRUE`).
#' The files `wildfinder-ecoregions_list.csv`, 'wildfinder-ecoregions_species.csv' 
#' and 'wildfinder-mammals_list.csv' will be stored in 
#' `data/wildfinder/`. This folder will be created if required.
#' 
#' @param i select the csv file to download
#' @param overwrite a `logical`. If `TRUE`, the file will be downloaded again 
#'   and the previous version will be replaced.
#'
#' @return No return value.
#' @export
#'


dl_wildfinder_data <- function(i, overwrite = FALSE) {
  
  ## Destination path 
  path <- here::here("data", "wildfinder")
  
  ## File name (call function once for each file)
  filename <- c("wildfinder-ecoregions_list.csv", # i = 1
                "wildfinder-ecoregions_species.csv", # i = 2 
                "wildfinder-mammals_list.csv") # i = 3 
  
  ## GitHub URL
  url <- paste0("https://raw.githubusercontent.com/rdatatoolbox/datarepo/main/",
                "data/wildfinder/")
  
  ## If the files already exist, do not download them
  if (file.exists(file.path(path, filename[i])) && !overwrite) {
    
    ## Check if exists locally ----
    message("The filename already exists. Use 'overwrite = TRUE' to replace it")
    
    # If the files do not exist, create folder and download
  } else {
    
    ## Create destination folder 
    dir.create(path, showWarnings = FALSE, recursive = TRUE)
    
    ## Download file ----
    utils::download.file(url      = paste0(url, filename),
                         destfile = file.path(path, filename),
                         mode     = "wb")
    
  }
  
  ## Do not show "NULL" message after calling the function
  invisible(NULL) 
  
}