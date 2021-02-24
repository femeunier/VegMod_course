#' @description Calculate saturation vapor pressure
#'
#' @title get es
#' @param temp temperature in degrees K
#' @return saturation vapor pressure in mb
#' @export
#' @author David LeBauer
#' @examples
#' temp <- -30:30
#' plot(temp, get.es(temp))
get.es <- function(temp) {
  return(6.11 * exp((2500000/461) * (1/273 - 1/(temp))))
} # get.es
