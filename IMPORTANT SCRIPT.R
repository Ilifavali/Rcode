p1 <-ggplot(data=trialone,aes(trialone$SCA)) +
  geom_histogram(breaks=seq(0,5,by=0.2),binwidth=5,col="white",fill="blue")+
  labs(title="Scanline 1")+labs(x="Spacing(m)",y="Count")
p2 <-ggplot(data=trialone,aes(trialone$SCB))+
  geom_histogram(breaks=seq(0,5,by=0.2),binwidth=5,col="white",fill="blue")+
  labs(title="Scanline 2")+labs(x="Spacing(m)",y="Count")
p3 <-ggplot(data=trialone,aes(trialone$SCC))+
  geom_histogram(breaks=seq(0,4,by=0.2),binwidth=5,col="white",fill="blue")+
  labs(title="Scanline 3")+labs(x="Spacing(m)",y="Count")
p4 <-ggplot(data=trialone,aes(trialone$SCD))+
  geom_histogram(breaks=seq(0,5,by=0.2),binwidth=5,col="white",fill="blue")+
  labs(title="Scanline 4")+labs(x="Spacing(m)",y="Count")
p5 <-ggplot(data=trialone,aes(trialone$SCE))+
  geom_histogram(breaks=seq(0,5,by=0.8),binwidth=8,col="white",fill="blue")+
  labs(title="Scanline 5")+labs(x="Spacing(m)",y="Count")
p6 <-ggplot(data=trialone,aes(trialone$SCF))+
  geom_histogram(breaks=seq(0,5,by=0.2),binwidth=5,col="white",fill="blue")+
 labs(title="Scanline 6")+labs(x="Spacing(m)",y="Count")
pp6<-ggplot(data = trialone,aes(trialone$SCH))+
  geom_histogram(breaks=seq(0,5,by=0.2),binwidth = 5,col="white",fill="blue") +
  labs(title="Scanline 7")+labs(x="Spacing (m)",y="Count")
p8 <-ggplot(data = trialone,aes(trialone$SCI))+
  geom_histogram(breaks=seq(0,5,by=0.2),binwidth = 5,col="white",fill="blue")+
  labs(title="Scanline 8")+labs(x="Spacing (m)",y="Count")
grid.arrange(p1,p2,p3,p4,p5,p6,pp6,p8,widths=c(4,2))

