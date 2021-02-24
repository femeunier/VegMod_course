rm(list = ls())

library(ggplot2)
library(dplyr)
library(tidyr)
library(Photosynthesis)

# Check the parameters for the functions FvCB.model
?FvCB.model

# we load needed parameters
# physical constants
physcon<-load.physcon()
# leaf physiolofical parameters
leaf <- Load.LeafPhysiologyParams()

# Note that we can manually modify some parameters or modify directly the Load.LeafPhysiologyParams() function
leaf$vcmax25 <- 30
leaf$jmax25 <- 1.67 * leaf$vcmax25

# We generate sensitivity figures to PAR, CO2 and leaf temperature
# boundary conditions for the sensitivity
par_min<-0
par_max<-2000
ci_min<-100
ci_max<-1000
tleaf_min<-0 + physcon$tfrz # convert 0°C in K
tleaf_max<-45 + physcon$tfrz

# We create empty vectors to store the results
plot_type = 2 # 1 = PAR, 2 = Ci, 3 = Tleaf
# for assimilation
ac<-aj<-an<-c()

# for atmos conditions
tleaf<-par<-ci<-c()

# We first create a list with atmospheric data
# Note that here we directly provide Ci, Oi and tleaf. In reality, we should provide atmospheric CO2, O2 and air temperature
atmos<-list(PAR=1000,Ci=400,Oi=209,tleaf=285)

if (plot_type == 1){
  for (i in seq(par_min,par_max,length.out = 1000)){
    atmos$PAR = i

    flux = FvCB.model (physcon = physcon, atmos = atmos, leaf = leaf)
    par <- c(par,atmos$PAR)
    tleaf <- c(tleaf,atmos$tleaf - physcon$tfrz)
    ci <- c(ci,atmos$Ci)
    ac <- c(ac,flux$Wc - flux$rd)
    aj <- c(aj,flux$Wj - flux$rd)
    an <- c(an,flux$An)
  }

  df <- data.frame(flux= flux,
                   par = par,
                   tleaf = tleaf,
                   ci = ci,
                   Ac = ac,
                   Aj = aj,
                   An = an)

  df_new <- df %>% pivot_longer(cols = c(Ac,Aj,An),
                                names_to = "A",
                                values_to = "value")

  newplot <- ggplot(data = df_new) +
    geom_line(aes(x = par,y = value, col = A)) +
    theme_bw()

} else if (plot_type == 2){

  for (i in seq(ci_min,ci_max,length.out = 1000)){

    atmos$Ci = i
    flux = FvCB.model (physcon = physcon, atmos = atmos, leaf = leaf)
    par <- c(par,atmos$PAR)
    tleaf <- c(tleaf,atmos$tleaf - physcon$tfrz)
    ci <- c(ci,atmos$Ci)
    ac <- c(ac,flux$Wc - flux$rd)
    aj <- c(aj,flux$Wj - flux$rd)
    an <- c(an,flux$An)
  }

  df <- data.frame(flux= flux,
                   par = par,
                   tleaf = tleaf,
                   ci = ci,
                   Ac = ac,
                   Aj = aj,
                   An = an)

  df_new <- df %>% pivot_longer(cols = c(Ac,Aj,An),
                                names_to = "A",
                                values_to = "value")

  newplot <- ggplot(data = df_new) +
    geom_line(aes(x = ci,y = value, col = A)) +
    theme_bw()

} else if (plot_type == 3){

  for (i in seq(tleaf_min,tleaf_max,length.out = 1000)){

    atmos$tleaf = i
    flux = FvCB.model (physcon = physcon, atmos = atmos, leaf = leaf)
    par <- c(par,atmos$PAR)
    tleaf <- c(tleaf,atmos$tleaf - physcon$tfrz)
    ci <- c(ci,atmos$Ci)
    ac <- c(ac,flux$Wc - flux$rd)
    aj <- c(aj,flux$Wj - flux$rd)
    an <- c(an,flux$An)
  }

  df <- data.frame(flux= flux,
                   par = par,
                   tleaf = tleaf,
                   ci = ci,
                   Ac = ac,
                   Aj = aj,
                   An = an)

  df_new <- df %>% pivot_longer(cols = c(Ac,Aj,An),
                                names_to = "A",
                                values_to = "value")

  newplot <- ggplot(data = df_new) +
    geom_line(aes(x = tleaf,y = value, col = A)) +
    theme_bw()

}

newplot
