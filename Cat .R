#####CLustering with the sales of videogames#######
##Dataset obtained with the courtesy of kaggle###
#################################################
rm(list = ls())
install.packages("cluster")
install.packages("psych")
library(cluster)
library(psych)

CARdata <- read.csv("cars_1.csv")
CARmatrix <- as.matrix(CARdata)
View(CARdata)
CARdata
####Reformatting the orignal dataset to only display numerical variables (just incase)###
CARdata_nums <- subset(CARdata,select = -c(Car, Model, Origin))
CARdata_nums

####Describing the variables in the dataset######
x<-names(CARdata)
vars <- as.vector(x)
describe(CARdata[,vars])

for (i in 2:7) {
  hist(CARdata[,i], xlab = "Dollars (millions)", ylab = paste("frequency"), main = paste("Histogram of: ", x[i]) )
}

###Omitting the NA values in the dataset (if applicable)#####
CARdata_1 <- na.omit(CARdata)
CARdata_1


names(CARdata)

#####Scaling the data so all variables are in the same unit of measurement######
CARdataNORM <- scale(CARdata_nums)
CARdataNORM


######Need to determine whether there are any outliers within the columns, and what we want to 
######determine as an outlier################################################################

describe(CARdataNORM)

Outlier_true = 1 

apply(abs(CARdataNORM)<=3 ,1,prod)


CARdataNORM[,"Horsepower"]

length(CARdata[,"Horsepower"])


if (Outlier_true == 1) { outlier_index <- which(apply(abs(CARdataNORM)<=3 ,1,prod)==0)
  CARdataNORM <- CARdataNORM[-outlier_index,]
}
CARdataNORM  
