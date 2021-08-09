library(dplyr)

#Load Data
MechaCar<-read.csv('MechaCar_mpg.csv', check.names=F,stringsAsFactors=F)
#perform linear regression
lm(mpg~vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar)
#retrieve summary stats
summary(lm(mpg~vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar))


#Linear Regression on Vehicle_Length
summary(lm(mpg~vehicle_length,MechaCar))

#Linear Regression on Vehicle_weight
summary(lm(mpg~vehicle_weight,MechaCar))

#Linear Regression on spoiler_angle
summary(lm(mpg~spoiler_angle,MechaCar))

#Linear Regression on ground_clearance
summary(lm(mpg~ground_clearance,MechaCar))

#Linear Regression on AWD
summary(lm(mpg~AWD,MechaCar))


#perform linear regression
lm(mpg~vehicle_length + ground_clearance, data=MechaCar)
#retrieve summary stats
summary(lm(mpg~vehicle_length + ground_clearance, data=MechaCar))



#Visualize the linear regression for MPG vs Vehicle_length
#create linear model
model <- lm(mpg ~ vehicle_length,MechaCar)

#identify y-axis from linear model
yvals <- model$coefficients['vehicle_length']*MechaCar$vehicle_length + 
  model$coefficients['(Intercept)']
plt <- ggplot(MechaCar,aes(x=vehicle_length,y=mpg))

#plot scatter plot with line plot
plt + geom_point() + geom_line(aes(y=yvals), color = "red")



#Visualize the linear regression for MPG vs AWD
#create linear model
model <- lm(mpg ~ AWD,MechaCar)

#identify y-axis from linear model
yvals <- model$coefficients['AWD']*MechaCar$AWD + 
  model$coefficients['(Intercept)']
plt <- ggplot(MechaCar,aes(x=AWD,y=mpg))

#plot scatter plot with line plot
plt + geom_point() + geom_line(aes(y=yvals), color = "red")


#Load Data
Suspension<-read.csv('Suspension_Coil.csv', check.names=F,stringsAsFactors=F)

#Create a summary table of the Suspension Coils PSI data
total_summary<-Suspension%>%summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

#Create a summary table which groups the data by manufacturing lot
lot_summary<-Suspension %>% group_by(Manufacturing_Lot)%>%
  summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

#compare PSI across all manufacturing lots to the population mean of 1,500 PSI
t.test(lot_summary$Mean, mu=1500)

t.test(subset(Suspension,Manufacturing_Lot=="Lot1")$PSI, mu=1500)

t.test(subset(Suspension,Manufacturing_Lot=="Lot2")$PSI, mu=1500)

t.test(subset(Suspension,Manufacturing_Lot=="Lot3")$PSI, mu=1500)    