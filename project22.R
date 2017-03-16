libray(ggplot)
library(gridExtra)
h1<-ggplot(data=aperture,aes(aperture$SC1))+geom_histogram(binwidth = 0.5,fill="green")+labs(title="Scanline 1")+
  labs(x="Aperture Code",y="Frequency")
h1
h2<-ggplot(data=aperture,aes(aperture$SC2))+geom_histogram(binwidth = 2, fill="green")+
  labs(title="Scanline 2")+labs(x="Aperture Code",y="Frequency")
h2
h3<-ggplot(data=aperture,aes(aperture$SC4))+geom_histogram(binwidth = 2, fill="green")+
  labs(title="Scanline 4")+labs(x="Aperture Code",y="Frequency")
h3
h4<-ggplot(data=aperture,aes(aperture$SC8))+geom_histogram(binwidth = 0.5, fill="green")+labs(title="Scanline 8")+
  labs(x="Aperture Code")
h4
grid.arrange(h1,h2,h3,h4, widths=c(2,2))


plot(BL1$RQD ~ BL1$FF)
fit <-lm(BL1$RQD ~ log(BL1$FF))
summary(fit) # GETTINH THE RESIDUALS

library(ggplot2)
library(ggfortify)
autoplot(fit,label.size = 3)# RESIDUAL DIAGONISTIC PLOTS
autoplot(fit,label.size = 3)+ theme_bw()
plot(BL1$RQD ~ BL1$FF,asp=1, col=BL1$Depth1,pch=20,xlab="FF",ylab = "RQD(%)")
abline(fit) # FIT AN RESIDUALS IN MODEL

ggplot(data = BL1, aes(x=BL1$FF,y=BL1$RQD))+
  geom_smooth(method = "lm",se=FALSE,color="lightgrey")+
  geom_segment(aes(xend=BL1$FF,yend=d$predicted),alpha=.2)+
  geom_point(aes(color=abs(d$residuals),size=abs(d$residuals)))+
  geom_point()+ geom_point(aes(y=d$predicted),shape=1)+labs(x="FF",y="RQD")+
  theme_bw()
