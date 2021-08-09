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



#Visualize the linear regression
#create linear model
model <- lm(mpg ~ vehicle_length,MechaCar)

#identify y-axis from linear model
yvals <- model$coefficients['vehicle_length']*MechaCar$vehicle_length + 
  model$coefficients['(Intercept)']
plt <- ggplot(MechaCar,aes(x=vehicle_length,y=mpg))

#plot scatter plot with line plot
plt + geom_point() + geom_line(aes(y=yvals), color = "red")



#Visualize the linear regression
#create linear model
model <- lm(mpg ~ AWD,MechaCar)

#identify y-axis from linear model
yvals <- model$coefficients['AWD']*MechaCar$AWD + 
  model$coefficients['(Intercept)']
plt <- ggplot(MechaCar,aes(x=AWD,y=mpg))

#plot scatter plot with line plot
plt + geom_point() + geom_line(aes(y=yvals), color = "red")


