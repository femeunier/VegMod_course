--- 
title: "Vegetation modelling"
author: "Hans Verbeeck, Elizabeth Kearsley, Félicien Meunier, Marc Peaucelle"
date: "2021-03-01"
output: pdf_document
geometry: "left=3cm,right=3cm,top=2cm,bottom=2cm"
description: Syllabus associated to the course XX taught at Ghent University
classoption: oneside
documentclass: book
link-citations: yes
bibliography:
- book.bib
- packages.bib
site: bookdown::bookdown_site
biblio-style: apalike
---


<!--chapter:end:index.Rmd-->

---
output:
  pdf_document: default
  html_document: default
---

\mainmatter

# Introduction {#intro}
## Soil-plant-atmosphere continuum: the central role of vegetation in the earth system

\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap1/planetary_boundaries} 

}

\caption{The planetary boundaries (www.stockholmresilience.org)}(\#fig:f1)
\end{figure}

\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap1/carbon_budget} 

}

\caption{The global carbon budget (www.globalcarbonproject.org)}(\#fig:f2)
\end{figure}

\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap1/GCM_ESM} 

}

\caption{Scientific scope of (a) climate models and (b) earth system models. (Bonan 2019)}(\#fig:f3)
\end{figure}

\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap1/cycles_bonan} 

}

\caption{Scientific scope of terrestrial biosphere model. (Bonan 2019)}(\#fig:f4)
\end{figure}


- Global change context
- Terrestrial ecosystems are central to solving the environmental and socioeconomic threats posed by changes in climate, atmospheric composition, and air quality; land use and land-cover change; habitat loss, species extinction, and invasive species; appropriation of freshwater, net primary production, and other ecosystems goods and services for human uses; and anthropogenic addition of reactive nitrogen. (Bonan)
- Earth System Models and climate models (Fig 1.1 Bonan). In climate models vegetation is just representing physical fluxes, in ESM vegetation is representing biogeochemical cycles, biogeography, and dynamic vegetation – typically the realm of ecosystem models
- Land component  continuum of terrestrial ecosystem models (vegetation models) (Fig 1.7)

## Why do we need modelling?

- Devising suitable solutions to these global change challenges require not only strong empirically and experimentally based research at the local scale to understand how ecosystems are structured and how they function, but also sound theoretical foundations to generalize this understanding to regional, continental, and global scales and to make projections of the future. Computer models of terrestrial ecosystems are essential to this generalization. (Bonan)
- For prediction: study system behavior in conditions beyond which measurements can be made; to allow predictions of system behavior, especially in response to some imposed perturbation; and to inform management and policy decisions. These usages of models are particularly important in the context ofglobal change.
- For understanding: a formal organization of understanding; it originates from the knowledge of its developers about how the system operates. One purpose of modeling, then, is to identify the processes needed to adequately simulate the system. If a model replicates some observations, a scientist must ask why the model works correctly. If the model performs poorly, then the scientist
must ask what is missing. It is testing hypotheses, just like you do with physical experiments. 
- For data integration: to organize and link data in a structure way,  as a research tool to guide data collection. What are the critical parameters that need to be measured? How precisely must these parameters be measured to reduce model uncertainty? What new observations are needed to test the model? In this context, models inform data collection and experimental design to both test the model and advance process understanding.

## Model types

\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap1/table_model_types} 

}

\caption{Continuum of terrestrial biosphere/ecosystem models. (Bonan 2019)}(\#fig:f5)
\end{figure}

\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap1/tables_PB_empirical} 

}

\caption{Continuum of process-based versus empirical models. (Adams et al. 2013)}(\#fig:f6)
\end{figure}

- continuum of terrestrial ecosystem models, from models with emphasis on biogeochemical pools and fluxes, dynamic vegetation models with focus on individual plants or size cohorts, canopy models with focus on coupling leaf physiological processes with canopy physics, and global models of the land surface for climate simulation. (Table 1.1, Bonan)
- Continuum of empirical to process-based models
- Types of vegetation models (depending on the purpose, questions, scales) (e.g. timber, yield, biogeochemistry, …) (ecologists, foresters, climatologist, atmospheric chemists, hydrologist all have different vegetation models…)
- Compare vegetation models to for example species distribution models…


## The history of vegetation models

\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap1/timeline} 

}

\caption{Timeline showing the parallel development of model types and the integration of model types into land surface models towards terrestrial biosphere models. (Bonan 2019)}(\#fig:f7)
\end{figure}

- Conceptualisation of ecosystem to mass and energy flows among various compartments  (refer to ecology course of Steppe in the Bio-ir Bachelors.  ‘box models in the 1960’s and 1970’s  current global biogeochemical models are still box-type of models (Fig 1.4)
- In parallel individual based models of forest dynamics were developed, based on population dynamics, life cycle of species. They are also called “gap models” that simulate the demography in an area of 0.1 ha (size of a gap in the canopy) (Fig 1.5). Ecosystem properties such as carbon stocks are emerging from the demography simulation.
- More recently  cohort based models
- DGVMs: These models also simulate changes in community composition, biomass, productivity, and nutrient cycling. Because the models are applied globally, they do not recognize individual species. Rather, they employ plant functional types, Table 1.2
- Fig 1.2 Bonan

## Components of a model

\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap1/table_components} 

}

\caption{Definition of key model components and examples for a typical TBM}(\#fig:f8)
\end{figure}

\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap1/time_steps} 

}

\caption{Structure of a vegattion model indicating the different time steps at which each process is simulated (Williams et al. 2009)}(\#fig:f9)
\end{figure}

\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap1/grid_vert_hor} 

}

\caption{Three dimensional grid of a TBM structured in terms of longitude x latitude x level. The number of soil and canopy layers and the geographical resolution is model dependent, (Bonan 2019)}(\#fig:f10)
\end{figure}

\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap1/grid_ED2} 

}

\caption{Example: the spatial multi-level grid structure of of the ED2 vegetation model (Longo et al. 2019)}(\#fig:f11)
\end{figure}

- Table 1.3 and Table 1.4
- Model structure (constraints: resolving of fluxes on short time scales, conservation of mass and energy, 
- Parameters
- i/o variables, state variable
- time steps (fluxes must be resolved on a short time interval, diurnal cycles) 
- spatial structure (Fig 1.11)
- Prognostic equations use time derivatives to describe the change in a state variable and are integrated forward in time from some initial condition. Prognostic variables must be numerically stepped forward from time n to n + 1 over the time interval deltat.
- Conservation equations
- Diagnostic equations (e.g. ideal gas law) linking variables time-independent
- Initial conditions
- Model code, There is an enormous leap between seeing a mathematical equation in a research paper and actually using that equation in a model (Bonan Book).
- Model uncertainty and complexity (fig 1.12) (+ fig from Dietze book)

## Modelling workflow and structure of the course

\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap1/course_overview} 

}

\caption{Progression through spatial and temporal scales throughout this course}(\#fig:f12)
\end{figure}

\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap1/williams_fusion} 

}

\caption{Model data fusion in every step of the model development cycle (Williams et al. 2009)}(\#fig:f13)
\end{figure}

\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap1/dietze_workflow} 

}

\caption{Methodological workflow of model data fusion (Dietze: Ecological Forecasting)}(\#fig:f14)
\end{figure}

- a science that spans boundary layer meteorology, micrometeorology, atmospheric chemistry, plant physiology, ecosystem ecology, biogeochemistry, soil science, hydrology, and geochemistry …  we will not discuss all the basics in this course, but we expect you to know from other courses (Ecology, plant physiology, forestry, hydrology, soil science …), but we will of course go into the processes, but focus on there mathematical formulation and translation into a workin model (code)
- progression through the course (space-time figure, with chapters)
- Model development cycle (structure for the methodological focus of each application/practical) (Dietze figure)

**to test: Idea of a conceptual figure that we will build block by block as we go deeper in the course. It represents the concept that vegetation modelling is to have an integrated representation of the plant functioning and all the underlying processes at different scales. **

<!--chapter:end:01-Intro.Rmd-->

# (PART) Biophysical and physiological models {-}
<!-- We could buid a schematic of what is a vegetation model throughout the course, starting with independent boxes that we link together as we upscale the processes?  -->

# Modelling plant basic processes
\chaptermark{photsynthesis}

**For all processes, we provide an overview of existing models and approaches and we will detail only one of them for the practical course. This also apply for the other chapters, the idea of the course is to be more conceptual about how we model vegetation and the different applications and assumptions.**

## Photosynthesis models
### Refreshing the basic knowledge


\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap2/leaf_level_processes} 

}

\caption{Leaf level processes transpiration and photosysnthesis are strongy interlinked and both regulated by stomatal conductance}(\#fig:f21)
\end{figure}

\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap2/photosynthesis_obs} 

}

\caption{Photosynthesis in relation to (a) photosynthetically active radiation,(b) temperature, (c) vapor pressure deficit at 25°C and 35°C,(d) foliage water potential, (e) ambient CO2 concentration, and (f) foliage water potential for jack pine trees (Pinus banksiana). Bonan (2019)}(\#fig:f22)
\end{figure}

\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap2/Trespons_interactions} 

}

\caption{Temperature responses of photosynthesis, respiration and net CO2 exchange, interaction with CO2 concentration (A) and light  (B)  Schulze ()}(\#fig:f23)
\end{figure}


### C3 photosynthesis

#### Light response curve models

\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap2/LRC} 

}

\caption{Conceptual figure of a leaf-level light reponse curve}(\#fig:f24)
\end{figure}

\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap2/hyperbola} 

}

\caption{Co-limitation illustrated for photosynthetic response to light. The two dashed lines show the rates Amax adn EI The solid lines show the co-limited rate. (Bonan 2019)}(\#fig:f25)
\end{figure}



#### Light use efficiency models


\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap2/MODIS_GPP} 

}

\caption{MODIS based GPP map of the US, based on a LUE model.}(\#fig:f26)
\end{figure}



#### The Farquahar model


\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap2/conductance} 

}

\caption{Diffusion of CO2 from free air across the leaf boundary layer and through stomata to the intercellular space. Diffusion to the chloroplast is additionally regulated by mesophyl conductance. (Bonan 2019)}(\#fig:f27)
\end{figure}


\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap2/simulated_responses} 

}

\caption{Simulated responses of C3 photosynthesis in relation to (a) intercellular CO2 (at I<U+2193> = 2000 µmol m–2 s–1) and (b) photosynthetically active radiation (at ci = 266 µmol mol–1). (Bonan 2019)}(\#fig:f28)
\end{figure}




- UCL 4.6.1
- Bonan, Chapter 11.1
The FvCB model
Most equations between 11.1 and 11.31
Figure 11.2 a and b
Table 11.1 for parameters values + a few simulations to illustrate
Table 11.4

### Parameter and temperature dependencies


\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap2/temp_responses} 

}

\caption{Relative temperature responses of the parameters of the Farquhar model (Bonan 2019)}(\#fig:f28bis)
\end{figure}


\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap2/vcmax_jmax} 

}

\caption{Linear relation between observed Vcmax and Jmax values for Beech (Verbeeck et al. 2008)}(\#fig:f29)
\end{figure}


\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap2/full_farquhar} 

}

\caption{Equations of the full Farquhar model}(\#fig:f210)
\end{figure}


- Bonan, Chapter 11.2
Equations 11.34-11.37
Table 11.2
Figure 11.3 for illustration

Summary with Table 11.5 and Figure 11.4

### C4 photosynthesis
- Bonan, Chapter 11.7
PEP carboxylase
Equations 11.69-11.74
Find an illustration


\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap2/c3_c4} 

}

\caption{Comparison of C3 and C4 photosynthesis in response to (a) photosynthetically active radiation, (b) ambient CO2 concentration, (c) leaf temperature, and (d) vapor pressure deficit. In this figure, stomatal conductance is calculated using the Ball–Berry model and ci is obtained from the diffusion equation}(\#fig:f210b)
\end{figure}





## Stomatal models

### Refreshing the basic knowledge

\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap2/conductance} 

}

\caption{Diffusion of CO2 from free air across the leaf boundary layer and through stomata to the intercellular space. Diffusion to the chloroplast is additionally regulated by mesophyl conductance. (Bonan 2019)}(\#fig:f211)
\end{figure}

\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap2/gs_obs} 

}

\caption{Observed responses of stomatal conductance for Pinus banksiana. (Bonan 2019)}(\#fig:f212)
\end{figure}
### Empirical multiplicative models
- Bonan, Chapter 12.2

### Semiempirical photosynthesis-based models
- Bonan, Chapter 12.3


\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap2/ball_berry} 

}

\caption{Relationship between stomatal conductance and Anhs/cs for soybean.(Bonan 2019)}(\#fig:f213)
\end{figure}

\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap2/numerical_solution} 

}

\caption{Flow diagram of the iterative procedure to numerically calculate ci.(Bonan 2019)}(\#fig:f214)
\end{figure}



### WUE models and optimality theory
- Bonan, Chapter 12.4 + add optimality approach from Prentice et al.

\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap2/optimality} 

}

\caption{Flow diagram of leaf flux calculations to numerically solve for stomatal conductance that optimizes water-use efficiency.(Bonan 2019)}(\#fig:f215)
\end{figure}

### Soil drought stress

\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap2/leafWP} 

}

\caption{Leaf carbon uptake in response to leaf water potential for multiple tree species.}(\#fig:f216)
\end{figure}

\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap2/SWfactor} 

}

\caption{Soil moisture wetness factor in relation to volumetric water content. (Bonan 2019)}(\#fig:f217)
\end{figure}




### Hydraulic models
\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap2/hydraulics} 

}

\caption{Flow of water and representative water potentials along the soil–plant–atmosphere continuum. Also shown are conductances along the hydraulic pathway.(Bonan 2019)}(\#fig:f218)
\end{figure}

\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap2/SPA} 

}

\caption{Depiction of (a) plant hydraulics and (b) leaf gas exchange in the Soil–Plant–Atmosphere (SPA) model. SPA is a multilayer canopy model.(Bonan 2019)}(\#fig:f219)
\end{figure}

\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap2/modelling_approaches} 

}

\caption{Simulated stomatal responses for various modelling approaches. (Bonan 2019)}(\#fig:f220)
\end{figure}

Figure 13.1
The soil-plant-atmosphere model
Leaf water potential
Plant water uptake
Resistance analogy
Multinode models


## Upscaling from leaf to canopy
- Quickly introduce the problem of scaling in ecology (review paper of Jerome Chave) and refer to chapter 10 on upscalling
- Canopy integration: LAI layers, etc... Nice transition to chap 3 with the interception of light by the canopy

Leaf microclimate and boundary layer processes in relation to leaf dimension for sun and shade conditions.

\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap2/sun_shade} 

}

\caption{Leaf microclimate and boundary layer processes in relation to leaf dimension for sun and shade conditions.(Bonan 2019)}(\#fig:f221)
\end{figure}

\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap2/GPPcontrols} 

}

\caption{Controlling facors on ecosystem GPP. (Chapin)}(\#fig:f222)
\end{figure}


## Case studies
### Case study 2.1 Ozone impact on global GPP

\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap2/ozone} 

}

\caption{Simulated global GPP reduction in response to current and future atmospheric ozone concentrations}(\#fig:f223)
\end{figure}



### Case study 2.2 Drought impact on rainforest GPP

\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap2/fisher1} 

}

\caption{Simulated (SPA model) and observed sapflow for a drought experiment in the Amazon; Fisher et al. 2007}(\#fig:f224)
\end{figure}

\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap2/fisher2} 

}

\caption{Simulated (SPA model) gs and GPP for a drought experiment in the Amazon. Fisher et al. 2007}(\#fig:f225)
\end{figure}

<!--chapter:end:02-chapter2.Rmd-->

# Modelling radiation, vegetation canopies, and energy balance
\chaptermark{Light}

## Introduction

\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap3/f31_LAD} 

}

\caption{Generalized profiles of leaf area density in plant canopies. (Bonan)}(\#fig:f31)
\end{figure}

\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap3/f32_cLAI} 

}

\caption{Cumulative LAI and WAI in a deciduous oak-hickory forest. (Bonan)}(\#fig:f32)
\end{figure}
\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap3/f33_Langle} 

}

\caption{Illustration of a leaf (thick line) oriented at an angle Tl to horizontal. (Bonan)}(\#fig:f33)
\end{figure}

\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap3/f34_angle_distr} 

}

\caption{Planophile, erectophile, plagiophile, and spherical leaf angle distributions showing (a) the probability density function f(Tl) and (b) the cumulative distribution F(Tl). (Bonan)}(\#fig:f34)
\end{figure}

\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap3/f35_architecture} 

}

\caption{Illustration of leaf angle distributions and canopy architecture in general influences radiation attenuation in vegetation canopies.}(\#fig:f35)
\end{figure}

\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap3/f36_obs_profile} 

}

\caption{Profile of light and foliage in a stand of herbaceous plants approximately 130 cm tall. The horizontal axis shows transmittance as a fraction of incident radiation (top axis) and foliage mass (bottom axis) at various heights in the canopy. (Bonan)}(\#fig:f36)
\end{figure}


## Radiative transfer modelling

\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap3/f37_RT_principle} 

}

\caption{Representation of a canopy as (a) one-dimensional with a vertical profile of leaf area (shown by grayscale gradation in which darker shading denotes more leaves) that is horizontally homogenous and (b) threedimensional with vertical and spatial structure determined by crown geometry and spacing. (Bonan)}(\#fig:f37)
\end{figure}


### Leaf optical properties


\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap3/f37_leaf_optical} 

}

\caption{Spectrum of absorptance, reflectance and transmittance of a typical plant leaf (Jones, 2014)}(\#fig:f37b)
\end{figure}

\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap3/f38_table_optical} 

}

\caption{Table showing typical reflectance and absorptance values for leaves and vegetation canopies of different Plant Functional Types (PFT).(Jones, 2014)}(\#fig:f38)
\end{figure}

### Light transmission without scattering

\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap3/f39_beer} 

}

\caption{Transmission of solar radiation through a homogeneous medium in the absence of scattering. In this example, n non-overlapping opaque particles each with cross-sectional area a oriented perpendicular to the path of light are placed in a medium with cross-sectional area A and thickness dz. The radiation absorbed in the medium is dI.(Bonan)}(\#fig:f39)
\end{figure}

\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap3/f310_Kb} 

}

\caption{Transmission of direct beam radiation tb in relation to leaf area index for typical values of the extinction coefficient Kb. (Bonan)}(\#fig:f310)
\end{figure}

\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap3/f311_LLh} 

}

\caption{Extinction coefficient in relation to solar zenith angle <U+0396> and leaf inclination angle Tl. In each panel, a unit leaf area (L = 1), shown with a thick line, is projected onto a horizontal surface LH so that Kb = LH. The leaf inclination angle is 0° (bottom panels), 30° (middle panels), and 60° (top panels). In the left and middle columns, the leaf is oriented towards the Sun (<U+0391>l - <U+0391> = 0°) and the solar zenith angle is 0° (left column) and 15° (middle column). In the right column, <U+0396> = 15°, but the leaf is oriented away from the Sun (<U+0391>l - <U+0391> = 180°). In each panel, the arrows indicate the solar beam (Bonan)}(\#fig:f311)
\end{figure}


\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap3/f312_Kb_angle} 

}

\caption{Extinction coefficients for horizontal, spherical, and vertical leaf angle distributions. (a) Direct beam radiation Kb in relation to solar zenith angle. (b) Diffuse radiation Kd in relation to leaf area index(Bonan)}(\#fig:f312)
\end{figure}


\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap3/f313_sun_shade} 

}

\caption{Radiative transfer and sunlit leaf area index for a canopy of horizontal leaves (top panels) with Kb = 1 and vertical leaves (bottom panels) with Kb = 0.112. The left-hand panels show a canopy consisting of four layers of leaves. Each thick black line represents a leaf area index of 0.1 m2 m–2. The thin lines depict interception or transmission of beam radiation with a zenith angle of 10°. The middle panels show cumulative leaf area index and sunlit leaf area index with depth in the canopy. The right-hand panels show direct beam transmittance with depth in the canopy. (Bonan)}(\#fig:f313)
\end{figure}

\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap3/f314_sunlit} 

}

\caption{Sunlit leaf area index in relation to total leaf area index for horizontal, spherical, and vertical foliage orientations with solar zenith angle <U+0396> = 30°. Kb = 1, 0.577, and 0.368 for horizontal, spherical, and vertical foliage. (Bonan)}(\#fig:f314)
\end{figure}

\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap3/f315_clumping} 

}

\caption{Images illustrating leaf/canopy clumping a various scales: leaf, crown, stand.}(\#fig:f315)
\end{figure}


### Diffuse transmittance

\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap3/f316_diffuse} 

}

\caption{Illustration of direct beam and diffuse radiation. The sky forms a bowl, or inverted hemisphere, over a horizontal surface. Shown is a cross section of the sky hemisphere. Direct beam (solid line) originates from the    direction of the Sun with zenith angle <U+0396>. Diffuse radiation (dashed lines) can be treated as independent beams of radiation each with an angle <U+0396>. The shaded region is the relative contribution between sky angles <U+0396>1 and <U+0396>2 to total sky irradiance.(Bonan)}(\#fig:f316)
\end{figure}

\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap3/f317_diff_trans} 

}

\caption{Transmittance of diffuse radiation td in relation to leaf area index for a spherical leaf distribution. Show are the transmittances for sky zones of 0°–30°, 30°–60°, and 60°–90° and also the total transmittance. Fill patterns show the contribution of each sky zone to total transmittance.(Bonan)}(\#fig:f317)
\end{figure}

\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap3/f318_diff_dir_trans} 

}

\caption{Transmission of solar radiation through a canopy with spherical leaf distribution in relation to leaf area index. The solid lines show direct beam transmittance tb for solar zenith angles of 0°–80° (in 10° increments).The dashed line shows the diffuse transmittance td. (Bonan)}(\#fig:f318)
\end{figure}


### The Norman Model(1979)

\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap3/f319_Norman} 

}

\caption{Radiative fluxes in a canopy of N leaf layers. The vertical profile is oriented with i = 1 the leaf layer at the bottom of the canopy, leaf layer i + 1 above layer i, and i = N the leaf layer at the top of the canopy. Each layer has a leaf area index <U+0394>L. is the downward diffuse shortwave flux onto layer i, is the upward diffuse shortwave flux above layer i, and is the unscattered direct beam flux onto layer i. and are the corresponding downward and upward fluxes of longwave radiation. These depend on leaf Tland ground Tg temperatures. Thick arrows denote boundary conditions of diffuse solar radiation , direct beam solar radiation, and atmospheric longwave radiation at the top of the canopy.(Bonan)}(\#fig:f319)
\end{figure}


### The Goudriaan and van Laar Model (1994)


\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap3/f320_goudriaan} 

}

\caption{ Derivation of absorbed direct beam solar radiation for a leaf layer with leaf area index <U+0394>L (Goudriaan 1982). <U+03C1>c is the reflectance of the leaf layer.(Bonan)}(\#fig:f320)
\end{figure}


### The Two-Stream approximation

\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap3/f321_two_stream} 

}

\caption{Fluxes for (a) direct beam and (b) diffuse radiation in the twostream approximation for a canopy with leaf area index L.(Bonan)}(\#fig:f321)
\end{figure}

### Longwave radiation

\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap3/f322_LW} 

}

\caption{Longwave radiation fluxes represented for a single leaf layer.(a) Norman’s (1979) numerical model. Shown is the radiative balance for leaf layer i + 1 located above leaf layer i. (b) A simplified model to allow only forward scattering (<U+03C1>l = 0 and tl = <U+03C9>l = 1 - el) and to permit an analytical solution integrated over a canopy. In both panels, emitted radiation is excluded. Thick lines denote fluxes incident onto the layer. (Bonan)}(\#fig:f322)
\end{figure}



## Representing canopy structure in models

### Big-leaf models

\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap3/f323_bigleaf} 

}

\caption{Scaling of leaf fluxes to the canopy using a big-leaf model. (a) Shown are leaf sensible heat, transpiration, and CO2 fluxes in relation to various conductances. Fluxes are exchanged between the leaf and air around the leaf. Also shown is the total resistance. (b) Shown are big-leaf canopy fluxes in which leaf fluxes are scaled by the average conductance and leaf area index and are further modified by turbulent transport in the atmospheric surface layer. Surface layer processes are commonly omitted for CO2 exchange. Only a single big leaf is shown, but separate sunlit and shaded big leaves can be similarly depicted. (Bonan)}(\#fig:f323)
\end{figure}

\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap3/f324_vcamx_profile} 

}

\caption{Canopy profiles of relative photosynthetic capacity in relation to cumulative leaf area index. Thin lines show exponential profiles using values of Kn for 16 temperate broadleaf forests and two tropical forests ranging from 0.10 to 0.43 (Lloyd et al. 2010). The two thick lines show observed profiles of Vcmax and Jmax from Niinemets and Tenhunen (1997) obtained for sugar maple (Acer saccharum). (Bonan)}(\#fig:f324)
\end{figure}


### Multilayer models

\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap3/f325_multilayer_process} 

}

\caption{Overview of the main processes in a multilayer canopy model.The canopy is represented by N leaf layers with layer i + 1 above layer i. (a) Diffuse and direct beam solar radiation is transmitted or intercepted. The intercepted portion is absorbed or scattered in the forward and backward direction. Longwave radiation is similar to diffuse radiation. (b) Leaf sensible heat, transpiration, and CO2 fluxes depend on absorbed radiation and leaf boundary layer and stomatal conductances. Sensible heat is exchanged from both sides of the leaf. Water vapor and CO2 can be exchanged from one or both sides of the leaf depending on stomata. Leaf temperature is the temperature that balances the energy budget. (c) Stomatal conductance depends on leaf water potential. Plant water uptake for a canopy layer is in relation to belowground soil and root conductance and aboveground stem conductance acting in series and also a capacitance term. See Figure 13.4a for more details. (d) Scalar profiles are calculated from a conductance network. Leaf fluxes provide the source or sink of heat, water vapor, and CO2, along with soil fluxes. (e) Sensible heat, latent heat, and heat storage in soil depend on the ground temperature that balances the soil energy budget. (f) The wetted fraction of the canopy layer depends on the portion of precipitation that is intercepted. (Bonan)}(\#fig:f325)
\end{figure}

\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap3/f326_multilayer_solving} 

}

\caption{Flow diagram of processes in a multilayer canopy model. The shaded area denotes leaf processes resolved at each layer in the canopy. This is a generalized diagram of the required calculations for a dry leaf. Specific models differ in how the equation set is solved and the iterative calculations. Evaporation of intercepted water requires additional complexity.(Bonan)}(\#fig:f326)
\end{figure}


### 3D ray tracing models

\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap3/f327_DART} 

}

\caption{Example of the PROSPECT leaf optical model and the DART 3D ray tracing model.}(\#fig:f327)
\end{figure}

\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap3/f328_TLS_RT} 

}

\caption{Example of a study that uses terrestrial laser scanning (TLS) to construct a full 3D model of a forest as input for a 3D ray tracing model (Kükenbrink et al. 2020) }(\#fig:f328)
\end{figure}

## Ecosystem energy balance

### Basic principles

### Surface radiation balance

\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap3/f329_rad_balance} 

}

\caption{Radiative balance of an opaque gray body receiving downwelling solar S<U+2193> and longwave L<U+2193> radiation.(Bonan)}(\#fig:f329)
\end{figure}


### Bulk surface energy balance

\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap3/f330_E_balance} 

}

\caption{Conductance networks for sensible heat flux (top) and latent heat flux (bottom) for various depictions of the land surface. This chapter describes the bulk surface and big-leaf canopies. (Bonan)}(\#fig:f330)
\end{figure}


### Leaf energy balance

\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap3/f331_leaf_E_balance} 

}

\caption{Biophysics and biochemistry of leaves. (a) The radiative environment consists of solar radiation (left) and longwave radiation (right). (b) Leaf fluxes include CO2, H2O, and heat through the boundary layer. These fluxes are shown as a network of conductances for the adaxial (upper) and abaxial (lower) leaf surfaces. For H2O and CO2, the conductance for each surface is obtained from stomatal and boundary layer conductances acting in series. The total conductance is defined by the adaxial and abaxial surfaces acting in parallel. (c) Stomata open to absorb CO2 for photosynthesis, but, in doing so, water is lost as transpiration. (Bonan)}(\#fig:f331)
\end{figure}


## Case studies

### Case study 3.1

\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap3/f332_knohl1} 

}

\caption{Principle of the effect of increased diffuse raditaion on leaf/canopy photosynthesis. (Knohl et al. 2008)}(\#fig:f332)
\end{figure}

\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap3/f333_knohl2} 

}

\caption{Resulting impact of changing diffuse fraction on carbon and water fluxes and WUE (Knohl et al. 2008)}(\#fig:f333)
\end{figure}


### Case study 3.2

\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap3/f334_chen1} 

}

\caption{Global map of LAI trend between 1981 and 2016 based on remote sensing (Chen et al. 2021).}(\#fig:f334)
\end{figure}

\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figures/chap3/f335_chen2} 

}

\caption{Simulated impact of different factors contributing to the increased global land C sink since 1981 (Chen et al. 2021) }(\#fig:f335)
\end{figure}

<!--chapter:end:03-chapter3.Rmd-->

# Temporal and seasonal dynamics
\chaptermark{dynamics}

## Phenology
- UCL 4.5.2
The study of life-cycle events. Here refers to the temporal dynamics of vegetation.
Broader sense of phenology.
Applies to most plant. Circadian to seasonal cycles
Tissue turnover and senescence



### The example of crop phenology
- UCL 4.5.1
Definition +Simple example of phenology (wheat for example: germination + spread + full coverage + allocation to storage organs + ripening)

## Mechanisms of phenology and evidence of changes
- UCL 4.5.3

### Overview of controls at different levels
- temperature 
- light
- water
- Nutrients
- Drivers of seasonality and phenology

### Vegeation index and changes over time
- This is also why phenology is a "metrics" of climate change

### Seasonality feedbacks
- Phenology affects phenology (phenophases are linked, one perturbation will affect the next phenophase in the cycle)
- The control of phenology on climate: example, early spring leaf unfolding excacerbates drought in summer

## Models of phenology
- UCL 4.5.4

### budburst models

### senescence models

### Phenology in DGVMs
- Figures from Zhang et al. 2003

<!--chapter:end:04-chapter4.Rmd-->

# (PART) Modelling vegetation dynamics {-}

# Modelling plant growth and biogeochemical cycles in vegetation models
\chaptermark{Grotwh}
<!-- UCL 4 -->
- UCL 4.2.2

based on Bonan Chapter 17

## Process-based growth modelling
### C-allocation models
- C pools: Allocation to leaf, wood, fruit

### Applications of growth modelling in forestry and agriculture
- short, link with inventory course

## Carbon cycle models: stocks and fluxes

This chapter will develop the ecological foundation and mathematics to describe ecosystem carbon dynamics using biogeochemical models.
Biogeochemical models abstract an ecosystem as pools of carbon and the flows of carbon among these pools.

Use specific model as an example to illustrate? In Bonan:  CASA-CNP model

### Model structure

Biogeochemical models simulate processes of allocation of photosynthetic carbon gain to plant parts (e.g., foliage, fine root, wood), turnover of plant biomass as litterfall, transformation of litter to soil organic matter, and carbon loss during respiration.

Principles: 
- net carbon input is equal to gross primary production minus autotrophic respiration;
- carbon flows from donor to receiver pools at a rate that depends on the donor pool size and its chemical quality as modified by the environment;
- mass balance is maintained as carbon flows through the system of interconnected pools;
- decay of litter and soil organic matter releases CO 2 as heterotrophic respiration.

Models:
a system of first-order, linear differential equations to describe carbon pools and fluxes (typically time step of one day)

Pools and fluxes to be included:
- Carbon gain from gross primary production  minus autotrophic respiration
- Allocation of carbon to growth of leaves, wood, and roots pools (partitioning varies with light availability, soil temperature, soil moisture, and nutrients + temporal for leaves (ref to phenology)
- Carbon turnover (comprising litterfall, background mortality, and disturbances) + turnover rates depending on the plant material
- litter pools: metabolic litter, structural litter, coarse woody debris (vary in chemical quality and turnover rate; base turnover rates are modified for soil temperature and soil moisture (environmental scaling factors))
- decomposition to soil organic matter pools: fast SOM, slow SOM, passive SOM (vary in chemical quality and turnover time)
- portion of the decomposition flow lost as heterotrophic respiration

Bonan
- Figure 17.2: structure of a typical biogeochemical model
- equations 17.1 – 17.10

Additional details?
- maintenance respiration and growth respiration
- storage pool of nonstructural carbohydrates
- some models separate wood into live stems (sapwood) and dead stems, roots into fine roots and coarse roots, and coarse roots into live pools and dead pools to account for the different physiological functioning of these biomass components

### Allocation and turnover parameterization
- types of allocation models (see Campioli et al 2013 and work of Fatichi et al. )

- allocation parameters
- fixed allocation and dynamic allocation (specified by biome or based on environmental conditions)
- Optimality models: plants optimally allocate resources to balance light acquisition (foliage), structural support and water transport (stems), and water and nutrient uptake (roots).
- allocation based on scaling relationships among plant components (specified ratios of foliage, root, and wood biomass)

- Turnover rates vary depending on plant material and are specified as a fraction of biomass.
- Turnover rates are commonly estimated as the inverse of residence time or longevity

-  biogeochemical models can be applied to any type of ecosystem such as grassland, savanna, forest, shrubland, and tundra

## Nutrient cycle models: soil biogeochemical models

### Nitrogen cycle

- Bonan Chapter 17.6 Nitrogen Cycle
- Bonan Figure 17.8: Depiction of the nitrogen cycle

- only ~recently added in most biogeochemical models
- closely coupled to carbon cycle
- important role to limit plant productivity

- similar to carbon with an associated nitrogen pool and transfer.
- cycling of nitrogen can be represented by a system of linear differential equations similar to that for carbon.

- allocation of plant nitrogen uptake  up to plant pools
- loss of nitrogen in litterfall +  portion is reabsorbed

- soil nitrogen cycle is more complex (various forms)
- decomposition of litter and soil organic matter, (mineralization and immobilization)
- nitrification, denitrification, leaching, ammonia volatilization

- additional inputs from biological nitrogen fixation, atmospheric deposition, and fertilizer

- some examples of models? CLM?
- All models simulate a decrease in plant growth when soil mineral nitrogen is insufficient to meet demand, but they differ in the manner in which this is implemented.
- maybe also more soil oriented model (CENTURY , ....)
- discuss different approaches?

### Phosphorus cycle

Not in Bonan
- Some models additionally include phosphorus (Wang et al. 2010; Yang et al. 2014; Goll et al. 2017)
- ORCHIDEE, CLM-CNP

### Other nutrients
- K and Mg in Eucalyptus and other tropical plantations

## Water balance

- focus on the surface energy balance and vertical water movement in the soil–plant atmosphere system (e.g., soil moisture control of evapotranspiration)

- Specific components in terrestrial biosphere models:  
Interception, throughfall, stemflow, infiltration, surface runoff, soil water redistribution, subsurface runoff, snow melt, evaporation, transpiration, plant water uptake, stomatal conductance

### A bucket model hydrologic cycle
- refer to hydrology courses in the program
- change in soil water is the difference between precipitation and evapotranspiration, excess runs off
- based on maximum water-holding capacity


<!--chapter:end:05-chapter5.Rmd-->

# Representing biodiversity in vegetation models
\chaptermark{Biodiversity}

## Why and how representing biodiversity in vegetation models?  
We can start with the applications? I think it is more interesting than finishing with the applications. 
Application: Conservation, ecosystem resilience, vegetation-atmosphere feedbacks

Biodiversity refers here to functional diversity. 

## Functional diversity
- check the book " Terrestrial Ecosystems in a changing world" from P. Canadell (2007)
- Part C: Landscapes under changing disturbance regimes:
    - PFT
    - Fire and disturbances
    - upscalling
    - construction, evaluation and examples of DGVM applications
    
### Definition of funcional diversity and plant functional traits
Any morphological, physiological or phenological feature measurable at the individual level, from the cell to the whole-organism level, without reference to the environment or any other level of organization. 
It is functional if it affects fitness indirectly via its effects on growth, reproduction and survival.

- Seminal papers from the plant functional trait community Violle 2007, Lavorel, garnier, Shipley, etc...

![(\#fig:figViolle)Functional diversity](figures/Violle2007.jpg) 
- Mention here the interesting summer school: http://www.cef-cfr.ca/index.php?n=MEmbres.AlisonMunsonPlantTraits?userlang=en
- List of reference papers in the link above
- 3 types of traits: dynamic, response & constant, that are linked to the processes we studied in the previous chapter (slow/fast processes)

### Representing 400 000 plant species in a single model: the Plant Functional Type approach
Short description in UCL 4.3.2  
No description in Bonan

- Lack of observations for every species
- Computing resources problem (refers to the history of DGVMs from the introduction)
- A simplification based on biome description and plant functionning at the ecosystem level 
- Different definitions of PFT: statistical classification, etc.
- Table of classical PFTs used in models here. 
- PFT mapping: multi-obs approach based on remote sensing. 
- First use of PFTs managed to reproduce well the gradients at the global scale, but now it is unsuficcient. 


### Limits of the PFT representation in the context of global change
- Including acclimation and adaptation processes
- Dynamic vegetation: Accounting for non-random species turnover
- Quantifying vegetation-environment feedbacks
- Quantifying impacts of biodiversity on ecosytem functioning and climate

### From model parameters to plant traits
- Reconciliating modelling with functional ecology. 
- Existing databases (TRY)
- Empirical approach: More PFTs with traits instead of model-specific parameters, trait-trait, trait-environment relationships
- Trade-offs: modeling plant strategies --> LES, PES, RES, all the ES :D
- Role of data assimilation in regions without data and to assess spatial variability of vegetation properties
- But: requires lots of observations in space and time. 

### Eco-evolutive optimality approaches
- New generation of models 
- PPA, coordination, ect... 
- Paper from Oskar. 

<!-- _____________________ COMPETITION MODELS ________________________ -->
## Competition models

Not in Bonan nor UCL  
In Bonan Chapter 19 on demography, gap models, etc... which is a part of competition. 

### Representation of PFTs in vegetation models
- Parameterization and calibration of PFTs--> data assimilation, traits, model-specific parameters
- representation by pixels
- shared processes, different processes
- interaction between PFTs
- Depend on the model: individual/cohort/big leaf

### Competition for ressources / Plant strategy? 
- In fact we can extend the trait based approach and plant strategy (PES, etc) 
in the competition and community section? 
- Mortality, turnover, etc..

### Representation of trait distributions 
- Trade-offs

<!-- _____________________ COMMUNITIES ________________________ -->
## Communities
- Successions and impact on cycles, species composition etc. 

## What about crops? 
- Not our focus but we don't forget it. A few words to say that specific crop models exists
- Diversity is not a problem anymore
- Plant functional traits are still central to crop modelling, but competition and diversity are no more an issue. 
- Other problematics specific to agriculture, such as agro-ecosystems where we have multi layers of vegetation (Trees over crops) --> Very interesting modelling problem and application especially in arid/semi-arid and tropical regions


<!--chapter:end:06-chapter6.Rmd-->

# Modelling vegetation dynamics and demography
\chaptermark{Dynamics}
<!-- Not in UCL -->

Bonan Chapter 19.2
Another class of models, known as individual plant or ecosystem demography models, retains the complexity of individual plants or cohorts of similar plants. In these models, ecosystem properties such as carbon storage are the outcome of demographic processes.

- plant populations
- community composition
- ecosystem structure
- driven by demographic processes of recruitment, establishment, growth, and mortality

## Gap models, individual and cohort based models

- small scale models;  landscape represented as a mosaic of hundreds of independent forest patches, each of which can differ in species composition and stage of development in response to disturbance that creates an opening in the canopy
- models track the establishment, growth, and death of individual trees in an area of land.
- Each tree is characterized by its species, stem diameter, height, and age.
- trees compete for light, soil moisture, and nutrients.
- patch undergoes temporal changes in the density, size, and composition of trees with the formation of a gap in the canopy
- Community composition, biomass, productivity, and biogeochemical cycles are emergent outcomes of individual trees interacting among themselves and with the environment to acquire the resources necessary for growth and survival

- cohort-based models define patches based on age since disturbance and simulate the dynamics of cohorts of similar plant functional types rather than tracking every individual.
- Common to each model is the representation of vegetation demography, with age- and size-dependent growth and mortality and in which growth is constrained by allometric relationships of stem diameter with height, sapwood area, leaf area, and biomass. cohort models --> modelling size distributions

## Allometric relationships
- link with growth modelling of previuous chapter
- allometric relationships are a critical driver of individual tree growth. 
- Height is important for its effect on stem diameter increment, both directly through tree volume growth and indirectly through shading.
- Biomass allocation: empirical equations that constrain foliage, stem, and root mass for a given size tree
- relationship between stem diameter and leaf area drives light extinction in the canopy
- annual growth of a tree is calculated from its diameter and height as modified by light, climate, and site conditions. Growth curves figure 19.5

## Competition for light

- critical driver of forest dynamics
- shading of smaller individuals by taller trees
- vertical profile of leaf area in the patch (vertical structure in which trees are arranged into canopy layers)
- height of a tree determines its location in the cumulative leaf area profile
- light extinction coefficient
- figure 19.6: representation of plant canopies

## Seed dispersal and recruitment

- regeneration: stochastic process
- seeds of species are assumed to be present on-site
- available light at the forest floor, climate tolerances, and other site conditions determine which species become established.
- sprouting based on size

-  Species are characterized by life history characteristics + maybe add example of herb layer models of FORNALAB

## Mortality

- stochastic process
- Trees die with a constant probability each year
- The probability of mortality increases when tree growth is less than some minimum

- disturbance related mortality : Wildfire and insect outbreaks can be included
- The occurrence of fire is treated stochastically with an annual probability of burning. An individual patch may, for example, have a 1% change of burning in any given year.



<!--chapter:end:07-chapter7.Rmd-->

# (PART) Upscaling and applications {-}
<!-- UCL 4.3.1 -->

# Spatial heterogeneity, landscape scale, metapopulations
\chaptermark{Heterogeneity}
<!-- Not in UCL -->


## Patch dynamics
Some references:
- Book: The ecology of natual disturance and patch dynamics, Pickett & White, 2013

### Spatial heterogeneity: Definitions
- Definition of Patch Dynamics, Perturbation, Disturbance: 
- Spatial heterogeneity 
- Resilience and shifts

### Impact of heterogeneity on ecosystem fonctionning and environmental feedbacks
- Show examples here of the impact of heterogeneity
- Application in the design of nature reserves for example

### Heterogeneity is a matter of resolution
- Imbricated levels of heterogeneity depending on spatial and temporal resolution 
- Heterogeneity is also a matter of the studied question: important in term of modelling since it will govern how processes are implemented

### Representation in Vegetation models: what are the drivers of spatial heterogeneity?
- List here the different drivers
- Heterogeneity is a patchwork of homogeneity in most models
- But we can still represent dynamics in heterogeneity --> mortality, growth and shifts in species composition

### Disturbances and Patch dynamics
- We listed the different drivers above, we will now discuss in detail the most important aspects affecting patch dynamics
- Link to land-use and disturbance

## Land-use changes
- Land use is linked to spatial heterogeneity and patch dynamics

### Role of Land-use in global emissions and biogeochemicel cycles
- impact C stocks and fluxes
- impact on nutrients (depletion over rotations, etc...)
- important impact on respiration
- vegetation cover and biophysical impact: albedo, etc...
- Specific case of deforestation, one of the most important imapct (make a paragraph on that?)
- How are fluxes attributed to land use in gas emission assessments? --> central role of vegetation modeling

### The important role of land use in the water cycle
- Affects regional precipitations
- Affects water routing
--> Compared to the local impact on vegetation, here we touch something that will have an impact for the surrounding regions

### Monitoring land-use
- remote sensing, rapid link to other courses

### How Land-use is represented in vegetation models? 
- Compared to vegetation dynamic which is process-based, here land use is imposed.
- management
- urban areas

## Natural and Anthropogenic disturbances
- We provide an overview of disturbances but we will detail only one of each: Fires and Management

### Wind and extrem events
- Modelling storms
- Modelling heat and cold waves, frost impact

### Herbivory
- Yes herbivory is represented in vegetation models :D
- Palability traits/ fixed fraction/ insects

### Modelling fires
- In UCL Practical chap. 6
- For estimating the impact on ecosystems
- To be able to predict fires
- Observation of fires and quantifications of fluxes
- Fires and deposition
- Aerosols
- Modelling "fire" traits, drought and temperature stress in models to simulate fires

### Human activity: Management and urban areas
- Forest management: existing models, representation of forestry and use of models
- Fertilization and irrigation in vegetation models
- Urban areas in vegetation models
- Concrete application: Paper of Luyssaert: forest management in Europe did not help in mitigating climate change. 

### The specific case of CO2 and temperature increase
- conclude the chapter here by refering to climate change, one of the biggest "Continuous" distrubance compared to previous "discrete" disturbances
- Simulating acclimation and adaptation
- refers to chapter 2 for acclimation of processes
- refers to chapter 11 for scenarios

<!--chapter:end:08-chapter8.Rmd-->

# Upscaling from the leaf to the globe
\chaptermark{Globe}
Some references:
 - Scalling processes and problems, Jarvis 1995
 - upscalling in global change research, Harvey 2000
 
## Spatial and temporal non-linearities: Cascading effect in the Earth system
- spatial upscalling
- temporal upscalling
- classification of upscalling problems:
  - Spatial variability + process nonlinearity
  - Minimim scale to observe the process
  - Different processes dominate at different scales
  - Feedbacks between scales
  - Development of emergent properties
  - Edge effects
  - Temporal lag dependent on spatial scale change
  - Collective response with differential effects
- Solutions to upscaling problems: 
  - Ignore (easy solution)
  - Increase model resolution (now more and more possible thanks to computing ressources, and data assimilation)
  - etc... ** Nice review in Harvey 2000 **

--> Solution depends on the application, show some examples here


## Land surface models
- Dependence to other disciplines (Biology, ecology, physics, chemistry (VOC, etc), hydrology, pedology, datascience and mathematics, etc…)
- Figure 1.7 from Bonan
- UCL 4.2: Land surface schemes
- Focus on the coupling of different models and what it implies, not the technical aspects
### Soil-Vegetation-Atmosphere-Transer models
- Description of SVAT models, regroups what we studied in Chap1-9


## DVGMs as a part of Earth System Models
- Partially in UCL 4.3.3

### One Biosphere
- Chapter 1 of Bonan, specifically 1.5
- Coupling to other components

### Atmosphere, Ocean, lakes and urban areas
- Rapid desciption of other models 
- Reference here to previous chapter on heterogeneity

### Coupling of processes with different time steps and regional scale

### Simulating feedbacks
- Nice transition to chap 11 with future scenarii

<!--chapter:end:09-chapter9.Rmd-->

# Model projections and scenario analysis
\chaptermark{Projections}
<!-- Not in UCL -->
<!-- How is it used? By who? Not only policies (IPCC) but several applications.  -->

## Climate scenarios
### Representative Concentration Pathway (RCP scenarios)
- How scenarios are defined
- How current emissions are measured and attributed to different factors? 

### Different models, different RCP 
- The central role of ESM: coupling to Atmosphere and Ocean and feedbacks
- Here refers to preivous Chapter 10
- list some examples and differences: IPSL, HadGEM, etc...

### Use of RCP in vegetation modelling
- ENSEMBLE simulations
- IPCC
- Example of applications

### How can we evaluate future scenarios? 
- FACE
- Rainfall exclusion experiments
- Natural gradient (Iceland and soil temperature based on volcano and geothermy)

### The central role of Paleo studies and historical datasets. 
- Good performance for past and current conditions is mandatory to evaluate future scenarios
- Here remind the central role of experiments and monitoring

## Land-use scenarios
### Construction of Land-use scenarios
- Hyde for historical land-use, https://themasites.pbl.nl/tridion/en/themasites/hyde/
- Scenario for future land-use

--> We can follow the same structure as for RCP? 

### How can we evaluate land use scenarios? 
- Based on historical data
- Remote sensing 

## Management scenarios
### Construction of Land-use scenarios

### How can we evaluate management scenarios? 

## Some concrete applications of vegetation models
- As a conclusion of the whole course I see a nice diagram that we constructed throughout the course with small boxes added to each others and we link that to all the possible application 

<!--chapter:end:10-chapter10.Rmd-->

# (PART) Appendix {-}

# Contributing to this document {-}

## First steps {-}
First, visit the course webpage on https://github.com/femeunier/VegMod_course, and fork it to your own github account. Open a RStudio session and (if it is your first time with git) introduce yourself:


```bash
git config --global user.name "FULLNAME"
git config --global user.email you@yourdomain.example.com
```

Note that you can do every single step below using the terminal and the git tabs in RStudio. Clone the newly forked folder to your local machine: 


```bash
git clone https://github.com/femeunier/VegMod_course.git
```

or using SSH (to set up it first, see for instance https://help.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh)


```bash
git clone git@github.com:femeunier/VegMod_course.git
```

Define upstream


```bash
cd VegMod_course
git remote add upstream git@github.com:femeunier/VegMod_course.git
```

## New pull request {-}

Get the latest code from the main repository


```bash
git pull upstream master
```

Create a new branch (here new_branch is the new branch's name)


```bash
git checkout -b new_branch
```

Do some coding, add files and commit them


```bash
git add filepath
git commit -m “Message”
```

Push your changes to your github (when a feature is working, a set of bugs are fixed, or you need to share progress with others).


```bash
git push origin new_branch
```

Before submitting code back to the main repository, make sure that book compiles (buikd book). Open the PR online by visiting your github repository. To ease those previous steps you can take advantage of the git GUI in RStudio. To do so, create a new project from an existing directory.

# Supporting  material {-}
Crash course, basic programming (R), theory about model evaluation etc.

# (PART) Practicals {-}

# Practical A {-}
PC-room, supervised exercise

Simple model on diurnal variation in solar angle, radiation extinction and photosynthesis in vegetation types with different and canopy structure and LAI: grassland, broadleaved forest, coniferous forest

Scale: aggregated stand level (big leaf model)

Methodological focus: model formulation: translating a few equations into code

Methodological focus: compiling code, running model, reading input-output

# Practical B {-}

Group work, report, PC room

Modelling diurnal cycle of carbon and water fluxes for flux tower sites (Savanna’s Sahel)

Scale: aggregated stand level

Methodological focus: model-data comparison (goodness-of-fit), simple parameter optimisation

# Practical C {-}

PC-room, supervised exercise

Modelling the size structure of a temperate forest (stand diameter distribution)

Scale: forest stand

Methodological focus: initial conditions

# Practical D {-}

Group work, report, PC room

Modelling carbon stocks (above and belowground) and fluxes

Scale: ecosystem

Methodological focus: Spinup and sensitivity analysis (testing which climate variables have strongest impact on stocks)

# Practical E {-}

PC-room, supervised exercise

Simulating forest succession, meta-analysis of trait dataset to prescribe vegetation functional composition (using PEcAn-framework)

Scale: landscape

Methodological focus: parameter meta-analysis (PFT construction), data assimilation
 
# Practical F {-}

PC-room, group work, microteaching

Climate/land use/management scenario analysis

Scale: site/globe? (Pecan framework) each group choses a question and a model

Methodological focus: sensitivity and uncertainty analysis

<!--chapter:end:12-Practicals.Rmd-->

