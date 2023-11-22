#' Joining 3 dataframes
#'
#' @param a a dataframe with species_id column
#' @param b a dataframe with species_id column
#' @param c a dataframe with ecoregion_id column
#'
#' @return
#' @export
#'
join_df <- function(a, b, c) {
  
  ## merge by species_id
  temp <- merge(a, b, by = "species_id")
  
  ## merge by ecoregion_id
  final <- merge(temp, c, by = "ecoregion_id")
  
  return(final) 
  # NB: return optional here because the return is the last part of this function
  
}