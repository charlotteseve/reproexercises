#' Counting number of ecoregions each species is present in
#'
#' @description
#' This function count the number of ecoregion in which a species_id is present
#' 
#' @param dataframe un dafaframe avec species_id et ecoregion_id
#'
#' @return
#' @export
#'
#'
#'
count_ecor <- function(dataframe) {
  
  # vector with species_id
  spec_id <- levels(as.factor(dataframe$species_id))
  
  # Create an empty data frame to store the results
  result_df <- data.frame(spec_id = character(), n = integer(), stringsAsFactors = FALSE)
  
  # each species_id
  for(i in spec_id) {
    
    # count number of unique ecoregions for each species
    temp <- dataframe |>
      dplyr::filter(.data$species_id == i) |>
      dplyr::summarize(n = dplyr::n_distinct(.data$ecoregion_id))
    
    # Add the results to the final data frame
    result_df <- rbind(result_df, data.frame(spec_id = i, n = temp$n, stringsAsFactors = FALSE))
    
  }
  
  return(result_df)
  
}