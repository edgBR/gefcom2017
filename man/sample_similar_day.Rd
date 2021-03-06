% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sample-similar-day.R
\name{sample_similar_day}
\alias{sample_similar_day}
\title{Sample similar days}
\usage{
sample_similar_day(fcst_dates, resid_dates)
}
\arguments{
\item{fcst_dates}{vector containing forecasts dates. These are the dates
we wish to find similar dates for.}

\item{resid_dates}{data frame of residual date info. Must contain Date and
Holiday_flag columns. Only unique values should be included}
}
\value{
The forecast data frame with a new residuals column.
}
\description{
Takes a vector of dates as inputs and randomly samples another similar date
from the residual data frame. Similar dates can be defined by day of the week
or working/non-working days.
}
\details{
TODO: remove DST days from potential sample candidates.

TODO: maybe include a window so that samples come from same time of year
(i.e. within a few months)
}
\author{
Cameron Roach
}
