#PROJECT VECCHIONE EGOISTIC AND MORALISTIC SCALES 2023

#pacotes e dados
library(psych)
library(dplyr)
library(httr)
library(readxl)

#dados e dicionário
setwd("C:/Users/hauck/OneDrive/Main Drive/Manuscritos/Ariela - escala Vecchione/Data")
em_bd<-read_xlsx("EMS - Banco integrado Coleta 2016.xlsx",1)
em_dic<-read_xlsx("item_dic.xlsx",1)

#análises de consistência interna
em_bd%>%
  select(starts_with("EMS_"))%>%
  alpha(check.keys=TRUE)

em_bd%>%
  select(starts_with("EMS_"))%>%
  omega()
