# this gets the dataframe from a file
getMyDataframe <- function(filename) {
  if (file.exists(filename)) {
    df <- read.csv(file=filename)
  }
  else {
    stop("File does not exist")
  }
  return(df)
}