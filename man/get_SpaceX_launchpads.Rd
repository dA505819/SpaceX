% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_SpaceX_launchpads.R
\name{get_SpaceX_launchpads}
\alias{get_SpaceX_launchpads}
\title{GET info about SpaceX launchpads}
\usage{
get_SpaceX_launchpads(name = NULL)
}
\arguments{
\item{name}{\link{character}: Name of lauchnpads. Choose "ksc_lc_39a" or NULL.
By default all three rocket data are returned.}
}
\value{
\link{data.frame} with parsed data from SpaceX API.
}
\description{
GET info about SpaceX launchpads
}
\examples{

## get details about all launchpads
get_SpaceX_launchpads()

## get details about launchpad "ksc_lc_39a"
get_SpaceX_launchpads("ksc_lc_39a")

}
