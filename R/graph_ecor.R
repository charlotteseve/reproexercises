plot_counts <- function(dataframe) {
  
  ## Check args ----
  
  if (missing(dataframe)) {
    stop("Argument 'x' is required", call. = FALSE)
  }
  
  if (!is.data.frame(dataframe)) {
    stop("Argument 'x' must be a data.frame", call. = FALSE)
  }
  
  # good format
  dataframe$spec_id <- as.factor(dataframe$spec_id)
  
  ggplot(data = dataframe, aes(x = stats::reorder(.data$spec_id, .data$n), 
                       y = .data$n)) +
    geom_bar(stat = "identity") +
    coord_flip() +
    theme_bw() +
    labs(y = "Number of distinct ecoregions", x = "")
}