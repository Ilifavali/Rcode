#Matching marginal boxplots and histogram on one page
# First set ylim in boxplot () to same as range xlim in hist()
#set.seed(123)
#data <- rnorm(1000)
#nf <- layout(mat = matrix(c(1,2),2,1, byrow=TRUE),  height = c(1,3))
#par(mar=c(5.1, 4.1, 1.1, 2.1))
#boxplot(data, horizontal=TRUE,  outline=FALSE,ylim=c(-4,4))
#hist(data,xlim=c(-4,4))
view(trialone)
attach(trialone)
libray(ggplot)
libray(gridExtra)
#Scanline 1
b1 <-ggplot(data=trialone,aes(x=1,y=trialone$SCA),xlab="",ylab="Spacing(m)")+ geom_boxplot()+
 coord_flip()+ylim(min(trialone$SCA),max(trialone$SCA))
p1 <-ggplot(data=trialone,aes(trialone$SCA)) +
 geom_histogram(breaks=seq(0,5,by=0.4),binwidth=5,col="white",fill="blue")+
 labs(title="Scanline 1")+labs(x="Spacing(m)",y="Count")
#Scanline 2
b2 <-ggplot(data=trialone,aes(x=1,y=trialone$SCB),xlab="",ylab="Spacing(m)")+geom_boxplot()+
coord_flip()+ylim(min(trialone$SCB),max(trialone$SCB))
p2 <-ggplot(data=trialone,aes(trialone$SCB))+
geom_histogram(breaks=seq(0,5,by=0.5),binwidth=5,col="white",fill="blue")+
labs(title="Scanline 2")+labs(x="Spacing(m)",y="Count")
#Scanline 3
b3 <-ggplot(data=trialone,aes(x=1,y=trialone$SCC),xlab="",ylab="Spacing(m)")+geom_boxplot()+
coord_flip()+ylim(min(trialone$SCC),max(trialone$SCC))
p3 <-ggplot(data=trialone,aes(trialone$SCC))+
geom_histogram(breaks=seq(0,5,by=0.5),binwidth=5,col="white",fill="blue")+
labs(title="Scanline 3")+labs(x="Spacing(m)",y="Count")
#Scanline 4
b4 <-ggplot(data=trialone,aes(x=1,y=trialone$SCD),xlab="",ylab="Spacing(m)")+geom_boxplot()+
coord_flip()+ylim(min(trialone$SCD),max(trialone$SCD))
b4 <-ggplot(data=trialone,aes(trialone$SCD))+
geom_histogram(breaks=seq(0,5,by=0.5),binwidth=5,col="white",fill="blue")+
labs(title="Scanline 4")+labs(x="Spacing(m)",y="Count")
#Scanline 5
b5 <-ggplot(data=trialone,aes(x=1,y=trialone$SCE),xlab="",ylab="Spacing(m)")+geom_boxplot()+
coord_flip()+ylim(min(trialone$SCE),max(trialone$SCE))
p5 <-ggplot(data=trialone,aes(trialone$SCE))+
geom_histogram(breaks=seq(0,5,by=0.5),binwidth=5,col="white",fill="blue")+
labs(title="Scanline 5")+labs(x="Spacing(m)",y="Count")
#Scanline 6
b6 <-ggplot(data=trialone,aes(x=1,y=trialone$SCF),xlab="",ylab="Spacing(m)")+geom_boxplot()+
coord_flip()+ylim(min(trialone$SCF),max(trialone$SCF))
b6 <-ggplot(data=trialone,aes(trialone$SCF))+
geom_histogram(breaks=seq(0,5,by=0.5),binwidth=5,col="white",fill="blue")+
labs(title="Scanline 6")+labs(x="Spacing(m)",y="Count")
#Scanline 7
b7 <-ggplot(data=trialone,aes(x=1,y=trialone$SCH),xlab="",ylab="Spacing(m)")+geom_boxplot()+
coord_flip()+ylim(min(trialone$SCH),max(trialone$SCH))
p7 <-ggplot(data=trialone,aes(trialone$SCF))+
geom_histogram(breaks=seq(0,5,by=0.5),binwidth=5,col="",fill="blue")+
labs(title="Scanline 7")+labs(x="Spacing(m)",y="Count")
#Scanline 8
b8 <-ggplot(data=trialone,aes(x=1,y=trialone$SCI),xlab="",ylab="Spacing(m)")+geom_boxplot()+
coord_flip()+ylim(min(trialone$SCI),max(trialone$SCI))
p8 <-ggplot(data=trialone,aes(trialone$SCI))+
geom_histogram(breaks=seq(0,5,by=0.5),binwidth=5,col="white",fill="blue")+
labs(title="Scanline 8")+labs(x="Spacing(m)",y="Count")
grid.arrange(b1,p1,b2,p2,b3,p3,b4,p4,b5,p5,b6,p6,b7,b8,p8,widths=c(2,8))
