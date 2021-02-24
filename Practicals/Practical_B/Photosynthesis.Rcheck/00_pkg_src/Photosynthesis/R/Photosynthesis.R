#' Photosynthesis
#' @description This function compute photosynthesis based on the FvCB model for carbon assimilation and the
#' Ball and Berry model for stomatal conductance and inputs from FLUXNET data
#'
#' It uses an iterative approach. Analytical solutions exists, however using the iterative approach will help you
#' to make the link with the FvCB.model function that was created during Practical_A
#' @param meteo List of meteorological variables TA in °C, CO2 in ppm, SW in W m-2, RH in %, PA in Pa
#' @param leaf List of leaf physiological parameters
#' @param physcon List of physical constants
#' @param LAI_layer Number of LAI layers to compute photosynthesise, default = 10
#'
#' This parameter will define the extinction of light into the canopy.
#' If LAI_layer = 1, all leaves are considered top sun exposed leaves and will receive all the light.
#' @param LAI_tot Total LAI at site in m2/m2
#'
#' @return Return a list with GPP and ET estimated at the canopy level
#' @export
#'
#' @examples
Photosynthesis<-function(meteo, leaf, physcon, LAI_layer = 10, LAI_tot = 4){
  ####### Prepare atmos data for FvCB #######
  # We initiate the list of arguments for the FvCB model PAR, Ci, Oi and tleaf
  atmos<-list()
  atmos$Oi<-209 # we fic Oi to atmospheric concentrations
  # We convert air temperature in K. Here we consider that leaf temperature = air temperature.
  # We could include an energy balance module to compute leaf temperature from radiations and wind.

  atmos$tleaf<-meteo$TA + physcon$tfrz

  # We convert atmospheric CO2 concentration in ppm to Ca in Pa
  Ca<-co2_to_ca(co2 = meteo$CO2, patm = meteo$PA)

  # We compute a first estimate of Ci
  # Several models make the assumption that Ci = 70% of Ca.In fact we know that Ci varies between biomes and climate conditions
  atmos$Ci <- 0.7 * Ca

  # We compute PAR at LAI_layer
  # we use an exponential extinction coefficient following the Beer-Lambert Law.
  # This approach is still commonly used in big leaf models and originates from Monsi & Saeki 1953 (slide 15 of Lecture 3)

  atmos$PAR<-2000

  ############ Compute An, gs and Ci in an iterative way until converge ##############
  # Using iterative approaches is not the best practice. Analytical solution exists.
  # However, you can see how the functioin FvCB.model that you created during Practical A is used here
  # This is also how it was done in the very first models (see slide 42 of lecture 2)


  # conditioins to end the iterations
  iter<-0 # number of iteration
  dCi<-0.1 # convergence criterion
  max_iter<-20 # max number of iteraction
  dCi_min<-0.01 # threshold for convergence

   while(dCi>dCi_min & iter<max_iter) {
    # we store the old ci
    old_ci<-atmos$ci

    # We compute cO2 assimilation with the approximation of Ci
    Assimi = FvCB.model(physcon = physcon, atmos = atmos, leaf = leaf)

    # we compute stomatal conductance based on boundary layer conductance gb (see Slide 36, lecture 2)
    Cs=Ca-Assimi$An*100/leaf$gb #Eq.15
    gs=leaf$gmin+leaf$gfac*(Assimi$An+Assimi$rd)*meteo$RH*100/Cs #Eq.14

    # We estimate the corresponding Ci
    atmos$Ci<-Cs-Assimi$An*100./gs #Eq.16

    # We check for convergence
    dCi<-abs(old_ci-atmos$Ci)
    iter=iter+1
  }

  # We integrate fluxes at the canopy level

}
