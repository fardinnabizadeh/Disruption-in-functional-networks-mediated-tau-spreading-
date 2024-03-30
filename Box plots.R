library(readxl)
Data_for_graph_classified <- read_excel("path")
View(Grouplevelconnectivetyandtauchange)
library(ggplot2)
colt <- c("#fee4e2", "#e5efcc", "#ccf2f3", "#f4e5ff")
cols <- c("#f8766d", "#7cae00", "#00bfc4", "#c77cff")
ggplot(Grouplevelconnectivetyandtauchange, 
       aes(x = Clustern, 
           y = Amyloidoverall, fill = Clustern, color = Clustern)) +
  geom_violin(width=0.7) +
  geom_boxplot(width = .2, 
               outlier.size = 2) + 
  scale_fill_manual(values = colt) +
  scale_color_manual(values = cols)+
  
  
  theme_classic() + theme(axis.text.x=element_text(size=10, colour="black"),
                          axis.text.y=element_text(size=10, colour="black"), 
                          axis.title=element_text(size=12,face="bold")) +
  theme(strip.text.x = element_text(size = 12))+ theme(legend.position="none")

