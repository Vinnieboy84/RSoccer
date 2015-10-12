#install.packages("xlsx")
#install.packages("rJava")
#install.packages("xlsxjars")
#install.packages("XML")
#install.packages("data.table")

library("xlsxjars")
library("rJava")
library("xlsx")
library("XML")
library("data.table")

#set workdirectory
setwd("C:/Users/Vincent/Documents/Bookie Model R/Data")

#Create (if needed) subdirectories
#England
if (!file.exists("E0")){ dir.create(file.path(getwd(), "E0")) }
if (!file.exists("E1")){ dir.create(file.path(getwd(), "E1")) }
if (!file.exists("E2")){ dir.create(file.path(getwd(), "E2")) }
if (!file.exists("E3")){ dir.create(file.path(getwd(), "E3")) }
if (!file.exists("EC")){ dir.create(file.path(getwd(), "EC")) }
#Scotland
if (!file.exists("SC0")){ dir.create(file.path(getwd(), "SC0")) }
if (!file.exists("SC1")){ dir.create(file.path(getwd(), "SC1")) }
if (!file.exists("SC2")){ dir.create(file.path(getwd(), "SC2")) }
if (!file.exists("SC3")){ dir.create(file.path(getwd(), "SC3")) }
#Germany
if (!file.exists("D1")){ dir.create(file.path(getwd(), "D1")) }
if (!file.exists("D2")){ dir.create(file.path(getwd(), "D2")) }
#Italy
if (!file.exists("I1")){ dir.create(file.path(getwd(), "I1")) }
if (!file.exists("I2")){ dir.create(file.path(getwd(), "I2")) }
#Spain
if (!file.exists("SP1")){ dir.create(file.path(getwd(), "SP1")) }
if (!file.exists("SP2")){ dir.create(file.path(getwd(), "SP2")) }
#France
if (!file.exists("F1")){ dir.create(file.path(getwd(), "F1")) }
if (!file.exists("F2")){ dir.create(file.path(getwd(), "F2")) }
#Netherlands
if (!file.exists("N1")){ dir.create(file.path(getwd(), "N1")) }
#Belgium
if (!file.exists("B1")){ dir.create(file.path(getwd(), "B1")) }
#Portugal
if (!file.exists("P1")){ dir.create(file.path(getwd(), "P1")) }
#Turkey
if (!file.exists("T1")){ dir.create(file.path(getwd(), "T1")) }
#Greece
if (!file.exists("G1")){ dir.create(file.path(getwd(), "G1")) }

seasons <- c("0506","0607","0809","0910", "1011", "1112", "1213", "1314", "1415", "1516")
competitions <- c("E0","E1","E2","E3","EC","SC0","SC1","SC2","SC3"
                  ,"D1","D2","I1","I2","SP1","SP2","F1","F2","N1"
                  ,"B1","P1","T1","G1")

URLfold <- "http://www.football-data.co.uk/mmz4281/"

for (i in 1:length(seasons)) 
{
  for (j in 1:length(competitions)) 
    {
    FileName <- paste(URLfold, seasons[i], "/", competitions[j], ".csv", sep='')
    des_file <- paste("./", competitions[j], "/", competitions[j], "_", seasons[i], ".csv", sep='')
    download.file(FileName, destfile = des_file)
    }
}






