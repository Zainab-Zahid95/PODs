setwd("C:/Users/z94am/Desktop/DATA SCIENCE PRINCIPLES OF DATA SCIENCE")

library(readxl)
Countries_Data_1_ <- read_excel("Countries_Data.xlsx")
View(Countries_Data)

CD <- read_excel("Countries_Data.xlsx")

#------------------------------installing the nessacary packages--------------------------- 

install.packages("tidyverse")
install.packages("dplyr")
install.packages("gapminder")
install.packages("WDI")
install.packages("leaflet")

library(dplyr)
library(tidyverse)
library(WDI)
library(gapminder)
library(leaflet)


#-------------------------------choosing indicators---------------------- 

Birth <- "SP.DYN.CBRT.IN"
Infmort <- "SP.DYN.IMRT.IN"
Net <-"IT.NET.USER.ZS"
Lifeexp <- "SP.DYN.LE00.IN"
Forest <- "AG.LND.FRST.ZS"
Mobile <- "IT.CEL.SETS.P2"
Pop <- "SP.POP.TOTL"
Import <- "TM.VAL.MRCH.XD.WD"
Export <- "TX.VAL.MRCH.XD.WD"
Tour <- "ST.INT.RCPT.XP.ZS"
Tourism <- "ST.INT.TRNR.CD"

Trade <- "BG.GSR.NFSV.GD.ZS"
Service <- "BM.GSR.NFSV.CD"
Taxes <- "GC.TAX.EXPT.ZS"
Tariff <- "TM.TAX.TCOM.WM.AR.ZS"
Agriculture <- "TM.TAX.TCOM.WM.FN.ZS"
Commercial <- "TM.VAL.AGRI.ZS.UN"
Travel <- "BX.GSR.TRVL.ZS"


#------------------- create a vector of the desired indicator series-------

indicators <- c(birth, infmort, net, lifeexp, forest, mobile, pop, tour, tourism, trade, 
                service, import, export, tariff, agriculture, commercial, taxes, travel)
indicators <- c

#----------------------------over here i am filtering the data--------------

CD <- filter(gapminder, country %in% c
                         
("Spain", "Algeria", "Canada","United Kingdom", "Australia", "Belgium",  
  "Colombia", "Egypt", "United States", "Chile", 
                           
indicator ="SP.DYN.CBRT.IN", "SP.DYN.IMRT.IN", "IT.NET.USER.ZS", 
"SP.DYN.LE00.IN", "AG.LND.FRST.ZS", "IT.CEL.SETS.P2",
"SP.POP.TOTL", "TM.VAL.MRCH.XD.WD", "TX.VAL.MRCH.XD.WD",
"ST.INT.RCPT.XP.ZS", "ST.INT.TRNR.CD", "BG.GSR.NFSV.GD.ZS", "BM.GSR.NFSV.CD",
  "GC.TAX.EXPT.ZS", "TM.TAX.TCOM.WM.AR.ZS", "TM.TAX.TCOM.WM.FN.ZS", 
  "TM.VAL.AGRI.ZS.UN", "BX.GSR.TRVL.ZS",
                           
                           start(1952, end(2016))))

#---------------------------------checking the filter----------------------

glimpse (CD)

write.table(CD, file = "CD.CSV", sep="," )
