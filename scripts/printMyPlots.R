# prints plots to file
# x x variables to plot
# y y variables to plot
# df data.frame
# filename output file of plot
printMyPlots <- function(x, y, df, filename) {
  for(i in 1:length(x)) {
    myX <- x[i]
    myY <- y[i]
    myFile <- filename[i]
    # put plots in output directory
    png(filename = paste0("output/", myFile))
    plot(df[,myX], df[,myY], ylab=myY, xlab=myX)
    dev.off()
  }
}