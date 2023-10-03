getwd()
setwd("C:/Users/SHR/Dropbox (ASU)/numericalsimulation")

rr=rep(0,n=10)
files=list.files(pattern="sample=50sd",ignore.case = T)[seq(from=1,to=30,by=3)]
for (i in 1:9) {
  temp=read.csv(files[i],header = FALSE)
  temp=temp[temp<1]
  rr[i+1]=sum(temp<0.05)/length(temp)
}
temp=read.csv(files[10],header = FALSE)
temp=temp[temp<1]
rr[1]=sum(temp<0.05)/length(temp)
rr
rr[is.na(rr)]=1
y=seq(from=0,to=.9,by=.1)
plot(y=rr,x=y,type="l")


files=list.files(pattern="sample=100sd",ignore.case = T)[seq(from=1,to=30,by=3)]
for (i in 1:9) {
  temp=read.csv(files[i],header = FALSE)
  temp=temp[temp<1]
  rr[i+1]=sum(temp<0.05)/length(temp)
}
temp=read.csv(files[10],header = FALSE)
temp=temp[temp<1]
rr[1]=sum(temp<0.05)/length(temp)
rr
rr[is.na(rr)]=1
y=seq(from=0,to=.9,by=.1)
lines(y=rr,x=y,col="green")

rr=rep(0,n=10)
files=list.files(pattern="sample=500sd",ignore.case = T)[seq(from=1,to=30,by=3)]
for (i in 1:9) {
  temp=read.csv(files[i],header = FALSE)
  temp=temp[temp<1]
  rr[i+1]=sum(temp<0.05)/length(temp)
}
temp=read.csv(files[10],header = FALSE)
temp=temp[temp<1]
rr[1]=sum(temp<0.05)/length(temp)
rr
rr[is.na(rr)]=1
y=seq(from=0,to=.9,by=.1)
lines(y=rr,x=y,col="blue")

rr=rep(0,n=10)
files=list.files(pattern="sample=1000sd",ignore.case = T)[seq(from=1,to=30,by=3)]
for (i in 1:9) {
  temp=read.csv(files[i],header = FALSE)
  temp=temp[temp<1]
  rr[i+1]=sum(temp<0.05)/length(temp)
}
temp=read.csv(files[10],header = FALSE)
temp=temp[temp<1]
rr[1]=sum(temp<0.05)/length(temp)
rr
rr[is.na(rr)]=1
y=seq(from=0,to=.9,by=.1)
lines(y=rr,x=y,col="red")


rr=rep(0,n=10)
files=list.files(pattern="sample=2000sd",ignore.case = T)[seq(from=1,to=30,by=3)]
for (i in 1:9) {
  temp=read.csv(files[i],header = FALSE)
  temp=temp[temp<1]
  rr[i+1]=sum(temp<0.05)/length(temp)
}
temp=read.csv(files[10],header = FALSE)
temp=temp[temp<1]
rr[1]=sum(temp<0.05)/length(temp)
rr
rr[is.na(rr)]=1
y=seq(from=0,to=.9,by=.1)
lines(y=rr,x=y,col="purple")

