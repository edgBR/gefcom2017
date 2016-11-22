#' Get lagged variables
#'
#' Calculates lagged temperature variables for GEFCOM smd data.
#'
#' @param x cleaned data frame. Should be the output from \code{clean_smd_data()} function.
#'
#' @return A data frame containing lagged variables.
#' @export
#'
#' @author Cameron Roach
get_lagged_vars <- function(x) {
  x <- x %>%
    mutate(DryBulb_lag1 = lag(DryBulb, 1),
           DryBulb_lag2 = lag(DryBulb, 2),
           DryBulb_lag3 = lag(DryBulb, 3),
           DryBulb_lag4 = lag(DryBulb, 4),
           DryBulb_lag5 = lag(DryBulb, 5),
           DryBulb_lag6 = lag(DryBulb, 6),
           DryBulb_lag7 = lag(DryBulb, 7),
           DryBulb_lag8 = lag(DryBulb, 8),
           DryBulb_lag9 = lag(DryBulb, 9),
           DryBulb_lag10 = lag(DryBulb, 10),
           DryBulb_lag11 = lag(DryBulb, 11),
           DryBulb_lag12 = lag(DryBulb, 12),
           DryBulb_lag13 = lag(DryBulb, 13),
           DryBulb_lag14 = lag(DryBulb, 14),
           DryBulb_lag15 = lag(DryBulb, 15),
           DryBulb_lag16 = lag(DryBulb, 16),
           DryBulb_lag17 = lag(DryBulb, 17),
           DryBulb_lag18 = lag(DryBulb, 18),
           DryBulb_lag19 = lag(DryBulb, 19),
           DryBulb_lag20 = lag(DryBulb, 20),
           DryBulb_lag21 = lag(DryBulb, 21),
           DryBulb_lag22 = lag(DryBulb, 22),
           DryBulb_lag23 = lag(DryBulb, 23),
           DryBulb_lag24 = lag(DryBulb, 24),
           DryBulb_lag25 = lag(DryBulb, 25),
           DryBulb_lag26 = lag(DryBulb, 26),
           DryBulb_lag27 = lag(DryBulb, 27),
           DryBulb_lag28 = lag(DryBulb, 28),
           DryBulb_lag29 = lag(DryBulb, 29),
           DryBulb_lag30 = lag(DryBulb, 30),
           DryBulb_lag31 = lag(DryBulb, 31),
           DryBulb_lag32 = lag(DryBulb, 32),
           DryBulb_lag33 = lag(DryBulb, 33),
           DryBulb_lag34 = lag(DryBulb, 34),
           DryBulb_lag35 = lag(DryBulb, 35),
           DryBulb_lag36 = lag(DryBulb, 36),
           DryBulb_lag37 = lag(DryBulb, 37),
           DryBulb_lag38 = lag(DryBulb, 38),
           DryBulb_lag39 = lag(DryBulb, 39),
           DryBulb_lag40 = lag(DryBulb, 40),
           DryBulb_lag41 = lag(DryBulb, 41),
           DryBulb_lag42 = lag(DryBulb, 42),
           DryBulb_lag43 = lag(DryBulb, 43),
           DryBulb_lag44 = lag(DryBulb, 44),
           DryBulb_lag45 = lag(DryBulb, 45),
           DryBulb_lag46 = lag(DryBulb, 46),
           DryBulb_lag47 = lag(DryBulb, 47),
           DryBulb_lag48 = lag(DryBulb, 48),
           DryBulb_lag49 = lag(DryBulb, 49),
           DryBulb_lag50 = lag(DryBulb, 50),
           DryBulb_lag51 = lag(DryBulb, 51),
           DryBulb_lag52 = lag(DryBulb, 52),
           DryBulb_lag53 = lag(DryBulb, 53),
           DryBulb_lag54 = lag(DryBulb, 54),
           DryBulb_lag55 = lag(DryBulb, 55),
           DryBulb_lag56 = lag(DryBulb, 56),
           DryBulb_lag57 = lag(DryBulb, 57),
           DryBulb_lag58 = lag(DryBulb, 58),
           DryBulb_lag59 = lag(DryBulb, 59),
           DryBulb_lag60 = lag(DryBulb, 60),
           DryBulb_lag61 = lag(DryBulb, 61),
           DryBulb_lag62 = lag(DryBulb, 62),
           DryBulb_lag63 = lag(DryBulb, 63),
           DryBulb_lag64 = lag(DryBulb, 64),
           DryBulb_lag65 = lag(DryBulb, 65),
           DryBulb_lag66 = lag(DryBulb, 66),
           DryBulb_lag67 = lag(DryBulb, 67),
           DryBulb_lag68 = lag(DryBulb, 68),
           DryBulb_lag69 = lag(DryBulb, 69),
           DryBulb_lag70 = lag(DryBulb, 70),
           DryBulb_lag71 = lag(DryBulb, 71),
           DryBulb_lag72 = lag(DryBulb, 72),
           DewPnt_lag1 = lag(DewPnt, 1),
           DewPnt_lag2 = lag(DewPnt, 2),
           DewPnt_lag3 = lag(DewPnt, 3),
           DewPnt_lag4 = lag(DewPnt, 4),
           DewPnt_lag5 = lag(DewPnt, 5),
           DewPnt_lag6 = lag(DewPnt, 6),
           DewPnt_lag7 = lag(DewPnt, 7),
           DewPnt_lag8 = lag(DewPnt, 8),
           DewPnt_lag9 = lag(DewPnt, 9),
           DewPnt_lag10 = lag(DewPnt, 10),
           DewPnt_lag11 = lag(DewPnt, 11),
           DewPnt_lag12 = lag(DewPnt, 12),
           DewPnt_lag13 = lag(DewPnt, 13),
           DewPnt_lag14 = lag(DewPnt, 14),
           DewPnt_lag15 = lag(DewPnt, 15),
           DewPnt_lag16 = lag(DewPnt, 16),
           DewPnt_lag17 = lag(DewPnt, 17),
           DewPnt_lag18 = lag(DewPnt, 18),
           DewPnt_lag19 = lag(DewPnt, 19),
           DewPnt_lag20 = lag(DewPnt, 20),
           DewPnt_lag21 = lag(DewPnt, 21),
           DewPnt_lag22 = lag(DewPnt, 22),
           DewPnt_lag23 = lag(DewPnt, 23),
           DewPnt_lag24 = lag(DewPnt, 24),
           DewPnt_lag25 = lag(DewPnt, 25),
           DewPnt_lag26 = lag(DewPnt, 26),
           DewPnt_lag27 = lag(DewPnt, 27),
           DewPnt_lag28 = lag(DewPnt, 28),
           DewPnt_lag29 = lag(DewPnt, 29),
           DewPnt_lag30 = lag(DewPnt, 30),
           DewPnt_lag31 = lag(DewPnt, 31),
           DewPnt_lag32 = lag(DewPnt, 32),
           DewPnt_lag33 = lag(DewPnt, 33),
           DewPnt_lag34 = lag(DewPnt, 34),
           DewPnt_lag35 = lag(DewPnt, 35),
           DewPnt_lag36 = lag(DewPnt, 36),
           DewPnt_lag37 = lag(DewPnt, 37),
           DewPnt_lag38 = lag(DewPnt, 38),
           DewPnt_lag39 = lag(DewPnt, 39),
           DewPnt_lag40 = lag(DewPnt, 40),
           DewPnt_lag41 = lag(DewPnt, 41),
           DewPnt_lag42 = lag(DewPnt, 42),
           DewPnt_lag43 = lag(DewPnt, 43),
           DewPnt_lag44 = lag(DewPnt, 44),
           DewPnt_lag45 = lag(DewPnt, 45),
           DewPnt_lag46 = lag(DewPnt, 46),
           DewPnt_lag47 = lag(DewPnt, 47),
           DewPnt_lag48 = lag(DewPnt, 48),
           DewPnt_lag49 = lag(DewPnt, 49),
           DewPnt_lag50 = lag(DewPnt, 50),
           DewPnt_lag51 = lag(DewPnt, 51),
           DewPnt_lag52 = lag(DewPnt, 52),
           DewPnt_lag53 = lag(DewPnt, 53),
           DewPnt_lag54 = lag(DewPnt, 54),
           DewPnt_lag55 = lag(DewPnt, 55),
           DewPnt_lag56 = lag(DewPnt, 56),
           DewPnt_lag57 = lag(DewPnt, 57),
           DewPnt_lag58 = lag(DewPnt, 58),
           DewPnt_lag59 = lag(DewPnt, 59),
           DewPnt_lag60 = lag(DewPnt, 60),
           DewPnt_lag61 = lag(DewPnt, 61),
           DewPnt_lag62 = lag(DewPnt, 62),
           DewPnt_lag63 = lag(DewPnt, 63),
           DewPnt_lag64 = lag(DewPnt, 64),
           DewPnt_lag65 = lag(DewPnt, 65),
           DewPnt_lag66 = lag(DewPnt, 66),
           DewPnt_lag67 = lag(DewPnt, 67),
           DewPnt_lag68 = lag(DewPnt, 68),
           DewPnt_lag69 = lag(DewPnt, 69),
           DewPnt_lag70 = lag(DewPnt, 70),
           DewPnt_lag71 = lag(DewPnt, 71),
           DewPnt_lag72 = lag(DewPnt, 72),
           Demand_lag1 = lag(Demand, 1),
           Demand_lag2 = lag(Demand, 2),
           Demand_lag3 = lag(Demand, 3),
           Demand_lag4 = lag(Demand, 4),
           Demand_lag5 = lag(Demand, 5),
           Demand_lag6 = lag(Demand, 6),
           Demand_lag7 = lag(Demand, 7),
           Demand_lag8 = lag(Demand, 8),
           Demand_lag9 = lag(Demand, 9),
           Demand_lag10 = lag(Demand, 10),
           Demand_lag11 = lag(Demand, 11),
           Demand_lag12 = lag(Demand, 12),
           Demand_lag13 = lag(Demand, 13),
           Demand_lag14 = lag(Demand, 14),
           Demand_lag15 = lag(Demand, 15),
           Demand_lag16 = lag(Demand, 16),
           Demand_lag17 = lag(Demand, 17),
           Demand_lag18 = lag(Demand, 18),
           Demand_lag19 = lag(Demand, 19),
           Demand_lag20 = lag(Demand, 20),
           Demand_lag21 = lag(Demand, 21),
           Demand_lag22 = lag(Demand, 22),
           Demand_lag23 = lag(Demand, 23),
           Demand_lag24 = lag(Demand, 24),
           Demand_lag25 = lag(Demand, 25),
           Demand_lag26 = lag(Demand, 26),
           Demand_lag27 = lag(Demand, 27),
           Demand_lag28 = lag(Demand, 28),
           Demand_lag29 = lag(Demand, 29),
           Demand_lag30 = lag(Demand, 30),
           Demand_lag31 = lag(Demand, 31),
           Demand_lag32 = lag(Demand, 32),
           Demand_lag33 = lag(Demand, 33),
           Demand_lag34 = lag(Demand, 34),
           Demand_lag35 = lag(Demand, 35),
           Demand_lag36 = lag(Demand, 36),
           Demand_lag37 = lag(Demand, 37),
           Demand_lag38 = lag(Demand, 38),
           Demand_lag39 = lag(Demand, 39),
           Demand_lag40 = lag(Demand, 40),
           Demand_lag41 = lag(Demand, 41),
           Demand_lag42 = lag(Demand, 42),
           Demand_lag43 = lag(Demand, 43),
           Demand_lag44 = lag(Demand, 44),
           Demand_lag45 = lag(Demand, 45),
           Demand_lag46 = lag(Demand, 46),
           Demand_lag47 = lag(Demand, 47),
           Demand_lag48 = lag(Demand, 48),
           Demand_lag49 = lag(Demand, 49),
           Demand_lag50 = lag(Demand, 50),
           Demand_lag51 = lag(Demand, 51),
           Demand_lag52 = lag(Demand, 52),
           Demand_lag53 = lag(Demand, 53),
           Demand_lag54 = lag(Demand, 54),
           Demand_lag55 = lag(Demand, 55),
           Demand_lag56 = lag(Demand, 56),
           Demand_lag57 = lag(Demand, 57),
           Demand_lag58 = lag(Demand, 58),
           Demand_lag59 = lag(Demand, 59),
           Demand_lag60 = lag(Demand, 60),
           Demand_lag61 = lag(Demand, 61),
           Demand_lag62 = lag(Demand, 62),
           Demand_lag63 = lag(Demand, 63),
           Demand_lag64 = lag(Demand, 64),
           Demand_lag65 = lag(Demand, 65),
           Demand_lag66 = lag(Demand, 66),
           Demand_lag67 = lag(Demand, 67),
           Demand_lag68 = lag(Demand, 68),
           Demand_lag69 = lag(Demand, 69),
           Demand_lag70 = lag(Demand, 70),
           Demand_lag71 = lag(Demand, 71),
           Demand_lag72 = lag(Demand, 72))
  return(x)
}