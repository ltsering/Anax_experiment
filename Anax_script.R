# working directory
getwd()
list()
#install packages
install.packages('Rcmdr')
install.packages('car')
install.packages('psych')
#libraries for the Anax experiment
library(ggplot2)
library(tidyr)
library(data.table)
library(Rcmdr)
library(car)
library(psych)
library(reshape2)
# master file imported from dropbox manually via the import xl option. 

head(master_file)
tail(master_file)

# filtered from the master file and only with values are kept.

master_data <- master_file[c(1:80), c(1:17)]
master_data$Temperature <- as.factor(master_data$Temperature)

master_data$Initialdry_gm <- as.integer(master_data$Initialdry_gm)

summary(master_data)
str(master_data)
options(scipen=999)

