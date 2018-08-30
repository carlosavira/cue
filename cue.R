library(ggplot2)
setwd("/Users/carlosabiera/Desktop/R/")  #set working directory
cue <- read.csv("cue/cue.csv")  #importing csv files to current wd
cue$SERVICE
service<-as.data.frame(table(cue$SERVICE))
service<-service[-2,] #removed this row PHNCALL since it does no belong to ICT services
ggplot(service, aes(x=service$Var1, y=service$Freq)) + geom_bar(stat="identity") + 
  labs(x="Services", y="Frequency",title="ICT DATA CENTER") + ggtitle("Frequency of ICTC Services Sept. 2016 to Sept. 2018") 