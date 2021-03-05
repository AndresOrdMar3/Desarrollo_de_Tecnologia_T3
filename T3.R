#En la terminal escribir:
#/cloud/project$ git config --global user.email "andresordmar@gmail.com"
#/cloud/project$ git config --global user.name "AdresOrdMar3"

library(rvest)
library(dplyr)
library(ggplot2)
library(scales)
library(forecast)
library(astsa)

url.brasil="https://data.humdata.org/dataset/2b7634e6-f022-47b0-a2dd-6f9fcf1fef64/resource/b36bf3eb-263c-4ce8-8137-d85c14ad7632/download/indicators_bra.csv"
url.corea="https://data.humdata.org/dataset/60155d38-53ac-47a5-b808-2fcbf42d9b3f/resource/8d321322-7a61-41b1-a4f3-9a8cfd1622fd/download/indicators_kor.csv"
url.mexico="https://data.humdata.org/dataset/3ec2c366-fe43-42fc-b4de-e42bd1f140b5/resource/0524b752-f85b-4479-8213-78206ca5c9ce/download/indicators_mex.csv"

url.brasil.ciencia="https://data.humdata.org/dataset/2c591839-b745-4230-8fbc-f3f6ae4d65bc/resource/8df725e3-be9c-492c-9090-ed1678ff13a0/download/science-and-technology_bra.csv"
url.corea.ciencia="https://data.humdata.org/dataset/ba46ed99-a467-4404-85c6-e856af6d43bc/resource/05c69d8a-b485-4787-975f-41faea9206d9/download/science-and-technology_kor.csv"
url.mexico.ciencia="https://data.humdata.org/dataset/2fb96a38-3695-4e6e-a85f-da8f844cfdcc/resource/42923a9e-f718-4b17-80a8-3a09d0c35a3f/download/science-and-technology_mex.csv"

brasil.raw <- read.csv(url.brasil)
corea.raw <- read.csv(url.corea)
mexico.raw <- read.csv(url.mexico)

str(brasil.raw)
head(brasil.raw)
unique(brasil.raw$Indicator.Name)

unique(corea.raw$Indicator.Name)

unique(mexico.raw$Indicator.Name)

mexico.ciencia.Raw=read.csv(url.mexico.ciencia)
str(mexico.ciencia.Raw)
head(mexico.ciencia.Raw)

unique(mexico.ciencia.Raw$Indicator.Name)
unique(mexico.ciencia.Raw$Year)
