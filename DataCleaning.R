#Author : Pallavi Karan
#Date: 03/29/2016
#Purpose: AirBNB
rm(list = ls())
rawdf= read.csv("D:\\Spring 2016\\DS_Lab\\AirBnb\\train_users_2.csv (1)\\train_newQ.csv")  # read csv file 
rawdf
c<-array(1:213451)
c[1:213451]<-rawdf$age
c1<-which(c>100)
rawdf$age[c1]<-47

na1<-which(is.na(rawdf$age[1:213451]))
rawdf$age[na1]<-45
b<-array(1:123000)
b[1:123000]<-rawdf$age[1:123000]
na2<-which(b==45)
rawdf$age[na2]<-40
rawdf$timestamp_first_active<-NULL
rawdf$date_account_created<-NULL
rawdf$date_first_booking<-NULL
rawdf$signup_flow<-NULL
rawdf$first_affiliate_tracked<-NULL


#f2<-rawdf$gender[3]

for(i in 1:123000)
{
  
  if(rawdf$gender[i]=="-unknown-")
  {
    rawdf$gender[i]="MALE"
  }
}
for(j in 123001:213451)
{
  
  if(rawdf$gender[j]=="-unknown-")
  {
    rawdf$gender[j]="FEMALE"
  }
}

rawdf
