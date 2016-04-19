df_train1 <- read.csv("C:/Users/anishjoshi500/Downloads/KaggleAirbnb/xnew.csv")
summary(df_train1)
attach(df_train1)
View(df_train1)
#str(df_train1)
a<-array(1:4999)
a[1:4999]<-c(format(as.Date(date_account_created), "%Y"))
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

c<-array(1:4999)
c[1:4999]<-df_train1$age
c1<-which(c>100)
df_train1$age[c1]<-47

na1<-which(is.na(df_train1$age[1:4999]))
df_train1$age[na1]<-45
b<-array(1:2500)
b[1:2500]<-df_train1$age[1:2500]
na2<-which(b==45)
df_train1$age[na2]<-40
df_train1$timestamp_first_active<-NULL
df_train1$date_account_created<-NULL
df_train1$date_first_booking<-NULL
df_train1$signup_flow<-NULL
df_train1$first_affiliate_tracked<-NULL


#f2<-df_train1$gender[3]

for(i in 1:2500)
{
  
  if(df_train1$gender[i]=="-unknown-")
  {
    df_train1$gender[i]="MALE"
  }
}
for(j in 2501:4999)
{
  
  if(df_train1$gender[j]=="-unknown-")
  {
    df_train1$gender[j]="FEMALE"
  }
}

for(k in 1:500)
{
  
  if(df_train1$country_destination[k]=="NDF")
  {
    df_train1$country_destination[k]="US"
  }
}

for(k1 in 501:1000)
{
  
  if(df_train1$country_destination[k1]=="NDF")
  {
    df_train1$country_destination[k1]="FR"
  }
}

for(k2 in 1001:1500)
{
  
  if(df_train1$country_destination[k2]=="NDF")
  {
    df_train1$country_destination[k2]="CA"
  }
}

for(k3 in 1501:2000)
{
  
  if(df_train1$country_destination[k3]=="NDF")
  {
    df_train1$country_destination[k3]="GB"
  }
}

for(k4 in 2001:2500)
{
  
  if(df_train1$country_destination[k4]=="NDF")
  {
    df_train1$country_destination[k4]="ES"
  }
}

for(k5 in 2501:3000)
{
  
  if(df_train1$country_destination[k5]=="NDF")
  {
    df_train1$country_destination[k5]="IT"
  }
}

for(k6 in 3001:3500)
{
  
  if(df_train1$country_destination[k6]=="NDF")
  {
    df_train1$country_destination[k6]="PT"
  }
}

for(k7 in 3501:4000)
{
  
  if(df_train1$country_destination[k7]=="NDF")
  {
    df_train1$country_destination[k7]="NL"
  }
}

for(k8 in 4001:4500)
{
  
  if(df_train1$country_destination[k8]=="NDF")
  {
    df_train1$country_destination[k8]="DE"
  }
}

for(k9 in 4501:4700)
{
  
  if(df_train1$country_destination[k9]=="NDF")
  {
    df_train1$country_destination[k9]="AU"
  }
}
for(k10 in 4701:4999)
{
  
  if(df_train1$country_destination[k10]=="NDF")
  {
    df_train1$country_destination[k10]="other"
  }
}
#w<-which(df_train1$gender==f)
#print(W)
#df_train1$gender[w]<-f1
#w1<-which(df_train1$gender[j]==f)
#df_train1$gender[j]<-f2

ab<-array(1:4999)
ab[1:4999]<-c(format(as.Date(date_account_created), "%b"))
df_train1$season <- "Spring2010"
ip<- which(a==2010 & (ab=="Jan"|ab=="Feb"|ab=="Mar"|ab=="Apr"))
df_train1$season[ip] <- "Spring2010"
ip1 <- which(a==2010 & (ab=="May"|ab=="Jun"|ab=="Jul"|ab=="Aug"))
df_train1$season[ip1] <- "Summer2010"
ip2 <- which(a==2010 & (ab=="Sep"| ab=="Oct"| ab=="Nov"| ab=="Dec"))
df_train1$season[ip2] <- "Fall2010"
ip3 <- which(a==2011 & (ab=="Jan"| ab=="Feb"| ab=="Mar"| ab=="Apr"))
df_train1$season[ip3] <- "Spring2011"
ip4 <- which(a==2011 & (ab=="May"| ab=="Jun"| ab=="Jul"| ab=="Aug"))
df_train1$season[ip4] <- "Summer2011"
ip5 <- which(a==2011 & (ab=="Sep"| ab=="Oct"| ab=="Nov"| ab=="Dec"))
df_train1$season[ip5] <- "Fall2011"
ip6 <- which(a==2012 & (ab=="Jan"| ab=="Feb"| ab=="Mar"| ab=="Apr"))
df_train1$season[ip6] <- "Spring2012"
ip7 <- which(a==2012 & (ab=="May"| ab=="Jun"| ab=="Jul"| ab=="Aug"))
df_train1$season[ip7] <- "Summer2012"
ip8 <- which(a==2012 & (ab=="Sep"| ab=="Oct"| ab=="Nov"| ab=="Dec"))
df_train1$season[ip8] <- "Fall2012"
ip9 <- which(a==2013 & (ab=="Jan"| ab=="Feb"| ab=="Mar"| ab=="Apr"))
df_train1$season[ip9] <- "Spring2013"
ip10 <- which(a==2013 & (ab=="May"| ab=="Jun"| ab=="Jul"| ab=="Aug"))
df_train1$season[ip10] <- "Summer2013"
ip11 <- which(a==2013 & (ab=="Sep"| ab=="Oct"| ab=="Nov"| ab=="Dec"))
df_train1$season[ip11] <- "Fall2013"
ip12 <- which(a==2014 & (ab=="Jan"| ab=="Feb"| ab=="Mar"| ab=="Apr"))
df_train1$season[ip12] <- "Spring2014"
ip13 <- which(a==2014 & (ab=="May"| ab=="Jun"| ab=="Jul"| ab=="Aug"))
df_train1$season[ip13] <- "Summer2014"
ip14 <- which(a==2014 & (ab=="Sep"| ab=="Oct"| ab=="Nov"| ab=="Dec"))
df_train1$season[ip14] <- "Fall2014"
df_train1$year=NULL