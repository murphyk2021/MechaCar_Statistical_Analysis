library(dplyr)

#Load Data
MechaCar<-read.csv('MechaCar_mpg.csv', check.names=F,stringsAsFactors=F)
#perform linear regression
lm(mpg~vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar)
#retrieve summary stats
summary(lm(mpg~vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar))