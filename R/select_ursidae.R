#' select Ursidae family
#' 
#' @description
#' This function filter only the "Ursidae" family in a dataframe 
#' using dplyr function "filter"
#' 
#'
#' @param dataframe the dataframe to filter
#'
#' @return no return value.
#' @export
#'
select_ursidae <- function(dataframe) {
  
  ## open csv
  dataframe <- dataframe |> dplyr::filter(.data$family == "Ursidae")
  
  return(dataframe) 
  # NB: return optional here because the return is the last part of this function
  
}