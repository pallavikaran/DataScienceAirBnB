#Author : Pallavi Karan
#Date: 03/29/2016
#Purpose: AirBNB
rm(list = ls())
rawdf= read.csv("D:\\Spring 2016\\DS_Lab\\AirBnb\\train_users_2.csv (1)\\TrimFile.csv")  # read csv file 
rawdf

rawdf
set.seed(9)
Rindex<-1:nrow(rawdf)
Rtestindex<-sample(Rindex,trunc(length(Rindex)*0.3))
Rtestset<-rawdf[Rtestindex,]
Rtrainset<-rawdf[-Rtestindex,]
library(rpart)
fit<-rpart(country_destination ~.,method="class",data=Rtrainset,control=rpart.control(minsplit=1))
printcp(fit)
plotcp(fit)
summary(fit)
plot(fit, uniform=TRUE, 
     main="Classification Tree for Airbnb")
text(fit, use.n=TRUE, all=TRUE, cex=.8)
Rtestset
prediction<-predict(fit,Rtestset,type="class")
#View(prediction)
library(caret)
tab<-table(pred=prediction,actual=Rtestset[,1])
confusionMatrix(tab)
library(tree)
summary(tree(country_destination ~.,method="class",data=Rtrainset))


pfit<-prune(fit,cp=0.019704)
prediction<-predict(pfit,testset[,-1],type="class")
tab<-table(pred=prediction,actual=testset[,1])
confusionMatrix(tab)


