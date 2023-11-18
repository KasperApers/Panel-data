rm(list = ls())
setwd("C:\\Users\\apers\\OneDrive\\Documenten\\R\\panel data")
output= "C:\\Users\\apers\\OneDrive\\Documenten\\R\\panel data"

if(!require(urca)){install.packages("urca")}
if(!require(tools)){install.packages("tools")}
if(!require(stargazer)){install.packages("stargazer")}
if(!require(dynlm)){install.packages("forecast")}
if(!require(Hmisc)){install.packages("Hmisc")}
if(!require(dynlm)){install.packages("dynlm")}
if(!require(lmtest)){install.packages("lmtest")}
if(!require(vars)){install.packages("vars")}
if(!require(VAR.etp)){install.packages("VAR.etp")}
if(!require(tidyr)){install.packages("tidyr")}
if(!require(dplyr)){install.packages("dplyr")}
if(!require(ggplot2)){install.packages("ggplot2")}
if(!require(devtools)){install.packages("devtools")}
if(!require(tidyverse)){install.packages("tidyverse")}
if(!require(tseries)){install.packages("tseries")}
if(!require(knitr)){install.packages("knitr")}
if(!require(plm)){install.packages("plm")}

source("TimeSeriesFunctions_v3.R")
library(urca)            
library(stargazer)
library(tools)
library(Hmisc)
library(dynlm)
library(lmtest)  
library(vars)
library(VAR.etp)
library(tidyr)
library(devtools)
library(tidyverse)
library(ggplot2)
library(dplyr)
library(tseries)
library(plm)

## Data handling

data = read.csv("DataPanel.csv")
view(data)
paneldata = pdata.frame(data, index = c("CountryID", "TimeID"))
view(paneldata)

Growth <- diff(paneldata$lnGDP) #compute growth
paneldata$Growth <- Growth #add growth to pdata frame
view(paneldata)
