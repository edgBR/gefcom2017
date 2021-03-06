% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/clean-smd-data.R
\name{get_train_test_df}
\alias{get_train_test_df}
\title{Get train and test data frames}
\usage{
get_train_test_df(train_start_date, train_end_date, test_start_date,
  test_end_date, trend_start)
}
\arguments{
\item{train_start_date}{start date for model training data.}

\item{train_end_date}{end date for model training data.}

\item{test_start_date}{start date for model testing data.}

\item{test_end_date}{end date for model testing data.}

\item{trend_start}{numeric value indicating trend start.}
}
\value{
List containing train and test data frames.
}
\description{
Get train and test data frames
}
