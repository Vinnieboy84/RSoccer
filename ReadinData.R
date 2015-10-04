# Readin data reads downloaded data from folders
# As per 2-10-2015, only reads in NL

#install.packages("gtools") 
library("gtools")
#package for smartbind

setwd("C:/Users/Vincent/Documents/Bookie Model R/Data R")
folder <- "../Data/N1/"      # path to folder that holds multiple .csv files
file_list <- list.files(path=folder, pattern="*.csv") # create list of all .csv files in folder
name_list <- substr(file_list,(regexpr("_",file_list,"match.length"))[1]+1,nchar(file_list))

#rm(list=ls())
#Remove all data

# Read in all data sets
for (i in 1:length(file_list))
{
  assign(name_list[i], 
         read.csv(paste(folder, file_list[i], sep=''))
  )}

#Remove N/A and add Season indicator

for (i in 1:length(name_list))
{
  set_complete <- complete.cases(get(name_list[i]))
  set_fixed <- get(name_list[i])
  set_fixed <- set_fixed[set_complete,]
  
  if (sum(complete.cases(set_fixed))>0)
  {
    set_fixed$Season = i
    if (!exists("total")){
      total <- set_fixed
    }
    
    # if the merged dataset does exist, append to it
    if (exists("total")){
      total<-smartbind(total, set_fixed) 
    }
  }
  
}