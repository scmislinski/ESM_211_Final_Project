# ESM_211_Final_Project Moorea Longterm Fish Monitoring Program

##Title: Analyzing Orange Spine Unicorn Fish and Spotted Puffer Fish Populations Using Moorea Coral Reef LTER
---

##Data Citation: Moorea Coral Reef LTER and A. Brooks. 2023. MCR LTER: Coral Reef: Long-term Population and Community Dynamics: Fishes, ongoing since 2005 ver 63. Environmental Data Initiative. https://doi.org/10.6073/pasta/a7430f5a775040873df9b8571fd9d3cd (Accessed 2025-02-21).

---
##Project Authors: Brooks, Andrew Moorea Coral Reef LTER

---
Abstract:
This project used the Moorea Coral Reeef LTER Annual Fish Survey. These data describe the species abundance and estimated size distributions (total body length to the greatest precision possible) of fishes surveyed as part of MCR LTER's annual reef fish monitoring program. This study began in 2005 and the dataset is updated annually. Data from the initial survey conducted in 2005 are presented in a separate data table as the methods used differed from the standard protocol adopted in 2006 and no estimates of fish body lengths were made. Therefore, the year 2006 is the first year included in the data used.

The data set contains 26 variables, 105,452 obsrvations, and multiple variable types. For this analysis variables of interest included: site, count, biomass, year, and taxonomy. For this data set, data was collected from 2006 to 2021. The estimated abundances and body lengths of all mobile taxa of fishes (Scarids, Labrids, Acanthurids, Serranids, etc.) observed on a 5 m by 50 m transect, extending from the bottom to the surface of the water column, were recorded by a single diver using SCUBA. After completing the initial survey, the diver then swam back along a 1 m by 50 m band down the center of the original transect line and recorded the estimated abundances and body lengths of all non-mobile or cryptic taxa of fishes (Pomacentids, Gobiids, Cirrhitids, Holocentrids, etc). Beginning in 2022, to provide an increased degree of diver safety, the abundances and body lengths of fishes on each transect were estimated by a pair of divers using SCUBA. The lead diver estimates the abundances and body lengths of all mobile taxa of fishes (Scarids, Labrids, Acanthurids, Serranids, etc.) observed on a 5 m by 50 m transect extending from the bottom to the surface of the water column, while the second diver trailing approximately 5 m behind the lead diver estimates the abundances and body lengths of all non-mobile or cryptic taxa of fishes (Pomacentids, Gobiids, Cirrhitids, Holocentrids, etc) on a 1 m by 50 m band down the center of the transect.


---
##Description of the data 

Data are provided as a CSV file with 26 variables (numeric, text, dateTime) and 105,452 row observations basd on year, date, and site of fish survey.

Column Variable Descriptions: These were the variables we used for our analysis. There are more variables in the full data set.

Year: The year in which the data was collected.

Taxonomy: The taxonomy of the fish

Count: The number of fish of the same species that was counted in the transect.

Biomass: The biomass of the fish calcuated using the length of the fish and the fish species.

Comment: Any comments from the diver during the transect.

Coarse_Trophic: The trophic catigory the fish are in (Producer, primary consumer ect).

Research Domain: Marine Science: Fisheries: Marine Ecology: Marine Biology,

---
##Keywords: Longterm-monitoring, biodiversity, abundance, counts, transects
---
##Our Methods:
For this project, we focused on two species, orange spine unicorn fish (Naso lituratus) and spotted sharpnose puffer (Canthigaster solandri). The orange spine unicorn fish is fished throughout it's Moorea range. The spotted sharpnose puffer fish is not fished in Moorea. We chose these species to see if there was a difference in the change in their population and biomass due to fishing pressure.

We first plotted the yearly counts and average biomass across the time series for these two species. We noticed the average counts for the orange spine unicorn decreased throughout time and the biomass increased. The count and biomass did not appear to change for the spotted sharpnose puffer fish. This difference in the two species, may be due to fishing pressure, or more specifically a new regualtion on the size. The larger the fish, the more and healthier the offspring. If there was a size limit to leave the larger fish, this pattern of counts decreasing but biomass increasing would make sense. We wanted to understand what would the future population look like for these to species.

We used an ARIMA model to analyze the data and predict what will happen to the fish populations over the next five years. To prep the data, the average counts and biomass was determined for each year. The total area of the study area was calculated and then used to get the densities of the average counts and biomass. The ARIMA model works best on densities, so this is why we did this.  

##Findings: When analyzing the data for the Orange Spine Unicorn Fish (Naso lituratus) population, overall it looks like biomass increased over time while counts trend downward. This is a fished species. Since this is a fished population, this pattern could indicate that size limits or other fisheries regulations influence which individuals are removed. A flatter biomass trend and increasing count forecast could suggest this species is resilient and that fishing pressure is at a sustainable level. Continued monitoring would be needed. 

Looking at the data for the Spotted Puffer Fish (Anthigaster solandri), this population which is not fished is showing large fluctuations in counts and biomass, tthe data does not show a general trend for either biomass or counts. However, What differs from the unicorn fish population, iss that the spotted puffer's biomass and counts seem to increase at the same years. These graphs could portray differecnes in population dynamics of a more managed species compared to a less managed species.  

##Data Collection Methods:
These data describe the species abundance and estimated size distributions (total body length to the 
        greatest precision possible) of fishes surveyed as part of MCR LTER's annual reef fish monitoring program. 
        This study began in 2005 and the dataset is updated annually. Data from the initial survey conducted in 2005 
        are presented in a separate data table as the methods used differed from the standard protocol adopted 2006 
        and no estimates of fish body lengths were made.
      
From 2006 to 2021, the estimated abundances and body lengths of all mobile taxa of fishes (Scarids, Labrids, 
        Acanthurids, Serranids, etc.) observed on a 5 m by 50 m transect extending from the bottom to the surface of the 
        water column were recorded by a single diver using SCUBA. After completing the initial survey, the diver then 
        swam back along a 1 m by 50 m band down the center of the original transect line and recorded the estimated 
        abundances and body lengths of all non-mobile or cryptic taxa of fishes (Pomacentids, Gobiids, Cirrhitids, 
        Holocentrids, etc). Beginning in 2022 to provide an increased degree of diver safety, the abundances and body 
        lengths of fishes on each transect are estimated by a pair of divers using SCUBA. The lead diver estimates the 
        abundances and body lengths of all mobile taxa of fishes (Scarids, Labrids, Acanthurids, Serranids, etc.) 
        observed on a 5 m by 50 m transect extending from the bottom to the surface of the water column, while the 
        second diver trailing approximately 5 m behind the lead diver estimates the abundances and body lengths of all 
        non-mobile or cryptic taxa of fishes (Pomacentids, Gobiids, Cirrhitids, Holocentrids, etc) on a 1 m by 50 m band 
        down the center of the transect.
      
Surveys are conducted between 0900 and 1600 hours (local time) during late July or early August of each year. 
        Four replicate transects are surveyed in each of six locations on the forereef (two on each of Moorea's three 
        sides), six locations on the backreef (two on each of Moorea's three sides), and on six locations on the fringing 
        reef (two on each of Moorea's three sides) for a total of 72 individual transects. Transects are permanently 
        marked using a series of small, stainless-steel eyebolts affixed to the reef. Transects on the fore reef are 
        located at a depth of approximately 12m, those in the back reef portion of the lagoons are located at a depth of 
        approximately 1.5m and those on the fringing reef are located at a depth of approximately 10m. In addition to the 
        biotic data collected, divers also record data on the date and time that each transect was surveyed, wind speed 
        and sea state, swell height in m, amount of cloud cover in %, and horizontal visibility in m. This monitoring 
        program is consistent with the protocols adopted by the Global Coral Reef Monitoring Network and the Australian 
        Institute of Marine Science for use with the Great Barrier Reef Long-term Monitoring Program.
      

This material is based upon work supported by the U.S. National Science Foundation under Grant No. OCE 22-24354 
        (and earlier awards) as well as a generous gift from the Gordon and Betty Moore Foundation. Research was completed 
        under permits issued by the French Polynesian Government (Délégation à la Recherche) and the Haut-commissariat de la 
        République en Polynésie Francaise (DTRT) (Protocole d'Accueil 2005-2023). This work represents a contribution of 
        the Moorea Coral Reef (MCR) LTER Site.
---

##Related Works: 

A package that could be useful
Forecast Package: ARIMA model for time series forcasting (Duke University): https://people.duke.edu/~rnau/411arim.htm
GLARMA Package: Allows for fitting generalized linear auto-regressive moving average models. 








