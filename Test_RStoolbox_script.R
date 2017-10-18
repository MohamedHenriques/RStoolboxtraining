getwd()
require(ggplot2)
require(RColorBrewer)

a<-data.frame(a=seq(2,10,2), b=c("a","b","c","d","f"))
str(a)

bplot<-ggplot(data=a, aes(x=b, y=a))+
  geom_bar(stat = "identity", position = position_dodge(), fill="steelblue", colour="black")+
  theme_bw()

bplot

write.table(a, file="DB_test.csv", sep=";", row.names = F)
