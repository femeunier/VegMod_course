% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Photosynthesis.R
\name{Photosynthesis}
\alias{Photosynthesis}
\title{Photosynthesis}
\usage{
Photosynthesis(atmos, leaf, physcon)
}
\arguments{
\item{atmos}{List of environemental variables to run the FvCB and gs model}

\item{leaf}{List of leaf physiological parameters}

\item{physcon}{List of physical constants}
}
\value{
Return a list with assimilation, Ci and gs
}
\description{
This function compute photosynthesis based on the FvCB model for carbon assimilation and the
Ball and Berry model for stomatal conductance

It uses an iterative approach. Analytical solutions exists, however using the iterative approach will help you
to make the link with the FvCB.model function that was created during Practical_A
}
