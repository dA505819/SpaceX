% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/create_SpaceX_request.R
\name{create_SpaceX_request}
\alias{create_SpaceX_request}
\title{Create request to SpaceX API}
\usage{
create_SpaceX_request(path, query = NULL)
}
\arguments{
\item{path}{\link{character}: Path to requested data from SpaceX API, e.g., "info" or "rockets".}

\item{query}{\link{character}: Query to request.}
}
\value{
\link{data.frame} with parsed data from SpaceX API
}
\description{
Create request to SpaceX API
}
\section{Function version 0.0.1}{
NA
}

\author{
Johannes Friedrich
}
