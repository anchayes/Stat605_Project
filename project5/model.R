rm(list=ls())

args = (commandArgs(trailingOnly=TRUE))
if(length(args) == 2){
  flight_data = args[1]
  outfile= args[2]
} else {
  cat('usage: Rscript model.R <flight_data> <output_file>\n', file=stderr())
  stop()
}

sink(file = outfile)
flight=read.csv(flight_data)
colnames(flight) = c("isBasicEconomy","totalFare","seatsRemaining","totalTravelDistance","segmentsDurationInSeconds")

#flights = head(flight)

n = round(nrow(flight)*.1)
sampled <- sample(nrow(flight),n)

sampledat <- flight[sampled,]

model=lm(totalFare ~ seatsRemaining + totalTravelDistance,data=sampledat)

summary(model)


#rmse(flight$totalFare,predict(model))

sink()


#plots

pdf(file = paste0(flight_data,"Diagnostic_Plots.pdf"),width=4,height=4)

plot(predict(model),resid(model),xlab= paste0(flight_data,"Predicted Ticket Price"),ylab="Standardized Residuals")+abline(h=0)

qqnorm(rstandard(model))

dev.off()
