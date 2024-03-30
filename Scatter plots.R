library(readxl)
Data_for_graph_classified <- read_excel("path")
View(Complete)
library(ggplot2)

ggplot(Complete, 
       aes(x = Groupsq, 
           y = TREM2rate)) +
  geom_violin(fill = "gold") +
  geom_boxplot(width = .2, 
               fill = "orange",
               outlier.color = "orange",
               outlier.size = 2) + 
  labs(title = "slope sTREM2")+ 
  
  theme_bw() + theme(axis.text.x=element_text(size=10, colour="black"),
                     axis.text.y=element_text(size=10, colour="black"), 
                     axis.title=element_text(size=12,face="bold")) +
  theme(strip.text.x = element_text(size = 12))+ theme(legend.position="none")






