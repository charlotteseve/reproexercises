% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dl_pantheria_data.R
\name{dl_pantheria_data}
\alias{dl_pantheria_data}
\title{Download PanTHERIA dataset}
\usage{
dl_pantheria_data(overwrite = FALSE)
}
\arguments{
\item{overwrite}{a \code{logical}. If \code{TRUE}, the file will be downloaded again
and the previous version will be replaced.}
}
\value{
No return value.
}
\description{
This function downloads the PanTHERIA dataset (text file) hosted on the
GitHub repository \url{https://github.com/rdatatoolbox/datarepo/}. The file
won't be downloaded if already exists locally (except if \code{overwrite = TRUE}).
The file \verb{PanTHERIA_1-0_WR05_Aug2008.txt} will be stored in
\verb{data/pantheria/}. This folder will be created if required.
}
