df_train1 <- read.csv("C:/Users/anishjoshi500/Downloads/KaggleAirbnb/train_users.csv")
summary(df_train1)
attach(df_train1)
View(df_train1)
a<-array(1:213451)
a[1:213451]<-c(format(as.Date(date_account_created), "%Y"))
print(a)
df_train1$year <- 2010
index <- which(a==2010)
df_train1$year[index] <- 2010
index1 <- which(a==2011)
df_train1$year[index1] <- 2011
index2 <- which(a==2012)
df_train1$year[index2] <- 2012
index3 <- which(a==2013)
df_train1$year[index3] <- 2013
index4 <- which(a==2014)
df_train1$year[index4] <- 2014

#x<-date_first_booking[1]
#print(x)
#x1<-which(df_train1$date_first_booking==x)
#df_train1$date_first_booking[x1]<-df_train1$date_account_created[x1]

c<-array(1:213451)
c[1:213451]<-df_train1$age
c1<-which(c>100)
df_train1$age[c1]<-47

na1<-which(is.na(df_train1$age[1:213451]))
df_train1$age[na1]<-45
b<-array(1:123000)
b[1:123000]<-df_train1$age[1:123000]
na2<-which(b==45)
df_train1$age[na2]<-40
df_train1$timestamp_first_active<-NULL
df_train1$date_account_created<-NULL
df_train1$date_first_booking<-NULL
df_train1$signup_flow<-NULL
df_train1$first_affiliate_tracked<-NULL


#f2<-df_train1$gender[3]

for(i in 1:123000)
{

  if(df_train1$gender[i]=="-unknown-")
  {
    df_train1$gender[i]="MALE"
  }
}
for(j in 123001:213451)
{
  
  if(df_train1$gender[j]=="-unknown-")
  {
    df_train1$gender[j]="FEMALE"
  }
}

for(k in 1:20000)
{
  
  if(df_train1$country_destination[k]=="NDF")
  {
    df_train1$country_destination[k]="US"
  }
}
#w<-which(df_train1$gender==f)
#print(W)
#df_train1$gender[w]<-f1
#w1<-which(df_train1$gender[j]==f)
#df_train1$gender[j]<-f2

