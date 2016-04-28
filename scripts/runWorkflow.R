# source function files
source("scripts/getMyDataframe.R")
source("scripts/printMyPlots.R")

# get dataframe
mydf <- getMyDataframe("data/conterm_climate.csv")

# file does not exist
nope<-getMyDataframe("data/nope.csv")

x <- c("PPTAVG_BASIN", "PPTAVG_SITE")
y <- c("T_AVG_BASIN", "T_AVG_SITE")
files <- c("ppt.png", "t.png")
printMyPlots(x=x, y=y, mydf, filename = files)
