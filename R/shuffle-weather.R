#' Shuffle historical weather
#'
#' @param x data frame containing historical data
#' @param fcst_start_date start date of forecasts
#' @param fcst_end_date end date for forecasts
#' @param trend_start numeric value indicating trend start.
#'
#' @return Data frame containing shuffled weather scenarios.
#' @export
shuffle_weather <- function(x, fcst_start_date, fcst_end_date, trend_start) {
  # This prevents incomplete shuffles being returned for lead shuffles in forecast year
  x <- x %>%
    dplyr::filter(Year < year(fcst_start_date))

  output <- NULL
  for (iD in -4:4) {
    tmp <- x
    tmp$ts <- tmp$ts + days(iD)
    tmp$Date <- tmp$Date + days(iD)
    if (iD <= 0) {
      tmp$Shuffle <- paste0("Lag", -iD)
    } else {
      tmp$Shuffle <- paste0("Lead", iD)
    }
    output <- bind_rows(output, tmp)
  }

  output <- output %>%
    # TODO: This doesn't work if there is more than two months. Months
    # inbetween start and end months will not have year updated!
    dplyr::mutate(Simulation = paste(Year, Shuffle, sep = "_"),
                  Year = if_else(as.character(Month) ==
                                   as.character(month(fcst_start_date, lab = TRUE)),
                                 lubridate::year(fcst_start_date), Year),
           Year = if_else(as.character(Month) ==
                            as.character(month(fcst_end_date, lab = TRUE)),
                          lubridate::year(fcst_end_date), Year))

  lubridate::year(output$ts) <- output$Year # how to do this in dplyr?
  lubridate::year(output$Date) <- output$Year # how to do this in dplyr?

  output <- output %>%
    dplyr::filter(lubridate::date(ts) <= fcst_end_date,
                  lubridate::date(ts) >= fcst_start_date) %>%
    get_calendar_vars() %>%
    clean_smd_data() %>%
    dplyr::mutate(Trend = as.numeric(ts)/3600,
                  Trend = Trend - trend_start + 1) %>%
    na.omit()

  return(output)
}
