#PROJECT VECCHIONE EGOISTIC AND MORALISTIC SCALES 2023

#pacotes e dados
library(psych)
library(dplyr)
library(httr)
library(readxl)

#dados e dicionário
setwd("C:/Users/hauck/OneDrive/Main Drive/Manuscritos/Ariela - escala Vecchione/Data")
eem_bd=read_xlsx("EMS - Banco integrado Coleta 2016.xlsx",1)

eem_dic<-read_xlsx("item_dic.xlsx",1)

#análises de consistência interna
eem_bd%>%
  select(starts_with("EMS_"))%>%
  alpha(check.keys=TRUE)

egoista=eem_dic%>%filter(factor=="egoistic")%>%
  select(item_cod)%>%pull()

moralista=eem_dic%>%filter(factor=="moralistic")%>%
  select(item_cod)%>%pull()

eem_bd%>%
  select(all_of(egoista))%>%
  alpha(check.keys=TRUE)

eem_bd%>%
  select(all_of(moralista))%>%
  alpha(check.keys=TRUE)


eem_bd%>%
  select(starts_with("EMS_"))%>%
  omega()

#modo "à manivela" de selecionar itens
alpha(eem_bd[,c(2:8)])
