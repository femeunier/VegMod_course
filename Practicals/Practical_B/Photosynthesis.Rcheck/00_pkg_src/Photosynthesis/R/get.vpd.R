#' @description Calculate VPD
#'
#' Calculate vapor pressure deficit from relative humidity and temperature.
#' @title VPD
#' @param rh relative humidity, in percent
#' @param temp temperature, degrees Kelvin
#' @return vpd: vapor pressure deficit, in mb
#' @export
#' @author David LeBauer
#' @examples
#' temp <- -30:30
#' plot(temp, get.vpd(0, temp))
get.vpd <- function(rh, temp) {
  ## calculate saturation vapor pressure
  es <- get.es(temp)
  ## calculate vapor pressure deficit
  return(((100 - rh)/100) * es)
}
