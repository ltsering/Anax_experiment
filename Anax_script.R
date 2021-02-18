# working directory
getwd()
#install packages
install.packages('Rcmdr')
install.packages('car')
install.packages('psych')
install.packages('rlang')
#libraries for the Anax experiment
library(ggplot2)
library(tidyr)
library(data.table)
library(Rcmdr)
library(car)
library(psych)
library(reshape2)
library(rlang)

# index of the master file
#Pred_ID	-> id of the individual predator => id of individual predatory there are 80 in total 
#Initialdry_gm	-> Initial dry weight in grams (initial wet weight/final wet weight * final dry weight)
#Finaldry_gm -> Final dry weight in grams => final dry weight of anax 
#Initialwet_gm ->	Initial wet weight in grams => Initial wet weight before the experiment
#Finalwet_gm ->	Final wet weight in grams => Final wet weight of Anax
#Temperature ->	Temperature of the treatmemnt ( 20, 24, 28 degree C)
#Resource	=> no of Chironomids provided per day ( 7,10,20,30)
#Dev_time	-> no of days taken for one developmental time
#Res	-> Low and High resources ( in each temperature treatment two level of resources )
#Wetgain ->	Initial and final difference (growth, over all dry weight gain )
#Gwrate	-> growth rate( dry weight gain/ no of day taken in one development) 
#Dev_rate	-> no of days taken for next stage. 
#Fpellets_gm ->	total fecal pelltes in grams( over all fecal produced)
#Leftover_gm ->	Left over chironomids in grams (dry chironomids food not eaten)
#Oxygen1 -> microgram per ml per mins ( initial oxygen consumption before experiment)
#Oxygen2 -> microgram per ml per mins( final oxygen consumption after experiment)


# master file imported from dropbox manually via the import xl option. 
head(master_file)
tail(master_file)

# filtered from the master file.
master_data <- master_file[c(1:80), c(1:17)]
master_data$Temperature <- as.factor(master_data$Temperature)

head(master_data)


master_data$Initialdry_gm <-as.numeric(master_data$Initialdry_gm)

summary(master_data)
str(master_data)



