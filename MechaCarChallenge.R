library(jsonlite)
library(tidyverse)
library(dplyr)

# read in dataset
cars_data <- read.csv('MechaCar_mpg.csv',stringsAsFactors = F) 

head(cars_data)

# Linear Regression to Predict MPG
?lm()
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = cars_data))

# Summary Statistics on Suspension Coils
coils_data <- read.csv('Suspension_coil.csv',stringsAsFactors = F) 

?summarize()
total_summary <- coils_data %>% summarize(
  Mean = mean(PSI),
  Median = median(PSI),
  Variance = var(PSI),
  SD = sd(PSI))

lot_summary <- coils_data %>% group_by(Manufacturing_Lot) %>% summarize(
  Mean = mean(PSI),
  Median = median(PSI),
  Variance = var(PSI),
  SD = sd(PSI),
  .groups = 'keep')

# T-Tests on Suspension Coils
?t.test()
t.test(log10(coils_data$PSI),mu=mean(log10(coils_data$PSI)))

lot1_summary <- coils_data %>% filter(Manufacturing_Lot == 'Lot1')
t.test(log10(coils_data$PSI),log10(lot1_summary$PSI))

lot2_summary <- coils_data %>% filter(Manufacturing_Lot == 'Lot2')
t.test(log10(coils_data$PSI),log10(lot2_summary$PSI))

lot3_summary <- coils_data %>% filter(Manufacturing_Lot == 'Lot3')
t.test(log10(coils_data$PSI),log10(lot3_summary$PSI))












