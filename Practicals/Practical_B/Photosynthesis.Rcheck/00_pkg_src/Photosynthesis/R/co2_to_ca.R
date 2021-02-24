#' co2_to_ca
#' @description Converts ambient CO2 from ppm to Pa
#'
#' This function is adapted from the rpmodel package, Stocker et al. 2019
#' @author Beni Stocker
#' @references Stocker et al., 2019 <doi:10.5194/gmd-2019-200>
#'
#' <https://cran.r-project.org/web/packages/rpmodel/index.html>
#' @param co2 annual atm. CO2 in ppm
#' @param patm atm.pressure in Pa
#'
#' @return ca in Pa
#' @export
#'
#' @examples
#'
co2_to_ca <- function( co2, patm ){ # from rpmodel Stocker et al. 2019
  #-----------------------------------------------------------------------
  # Input:    - float, annual atm. CO2, ppm (co2)
  #           - float, monthly atm. pressure, Pa (patm)
  # Output:   - ca in units of Pa
  # Features: Converts ca (ambient CO2) from ppm to Pa.
  #-----------------------------------------------------------------------
  ca   <- ( 1.0e-6 ) * co2 * patm         # Pa, atms. CO2
  return( ca )
}
