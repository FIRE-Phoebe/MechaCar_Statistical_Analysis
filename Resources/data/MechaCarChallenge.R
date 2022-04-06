#import library and read file
library(dplyr)
mec_df <- read.csv('MechaCar_mpg.csv', stringsAsFactors = F)

#perform line reg model
lm(mpg ~vehicle_length + vehicle_weight + spoiler_angle + AWD + ground_clearance, data=mec_df)

#determine p-value and r-sqr
summary(lm(mpg ~vehicle_length + vehicle_weight + spoiler_angle + AWD + ground_clearance, data=mec_df))


#Technical Analysis
##import data and read as table
table_tech <- read.csv('Suspension_Coil.csv', stringsAsFactors = F)

#create total_summary df, with mean, median, variance, sd
total_summary <- summarize(table_tech, Mean=mean(PSI),Median= median(PSI),Variance=var(PSI),SD= sd(PSI))

#create lot_summary() df by using group_by() and summarize()

lot_summary <- table_tech%>%group_by(Manufacturing_Lot)%>%summarize(Mean=mean(PSI),Median= median(PSI),Variance=var(PSI),SD= sd(PSI),.groups = 'keep')








