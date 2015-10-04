#Create Model data, the main function to create a set of data ready for modelling

#rm(list=ls())

type_set <- "short"

if (type_set == "short") {
  req_data <- data.frame(total$HomeTeam, total$AwayTeam, total$FTHG, total$FTAG, 
                         total$FTR, total$VCH, total$VCD, total$VCA, total$Season)
  colnames(req_data) <- c("Home", "Away", "HomeG", "AwayG", "Result", "OddsH", "OddsA", "OddsD", "Season")
}

if (type_set == "long") {
  req_data <- data.frame(total$HomeTeam, total$AwayTeam, total$FTHG, total$FTAG, 
                         total$FTR, total$VCH, total$VCD, total$VCA, total$Season)
  colnames(req_data) <- c("Home", "Away", "HomeG", "AwayG", "Result", "OddsH", "OddsA", "OddsD", "Season")
}

#pick only the last six (and current) seasons

Season_app = (max(req_data$Season)-6):max(req_data$Season)
req_data <- req_data[req_data$Season %in% Season_app, ]

#function to find last X

f.findlastx <- function(dataset, x) {
  z1 <- 2*x + y
  z2 <- x + 2*y
  z3 <- 2*x + 2*y
  z4 <- x/y
}