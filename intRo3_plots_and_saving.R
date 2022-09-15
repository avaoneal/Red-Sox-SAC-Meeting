############################
### IntRo 3
############################

library(tidyverse)
library(ggplot2)
library(Lahman)

#Clean data
redsox <- Pitching %>% 
  filter(yearID == 2004) %>% 
  filter(teamID == "BOS")

#Plotting
#boxplot
boxplot <- ggplot(redsox,
                  aes(x = teamID,
                  y = HR)) +
  geom_boxplot()

boxplot

#violin plot
violin_plot <- ggplot(redsox,
                  aes(x = teamID,
                      y = HR)) +
  geom_violin(color = "navy",
              fill = "red")

violin_plot

violin_plot +
  labs(title = "Distribution of Red Soxs HRs Allowed",
      subtitle = "Red Sox 2004 World Series Season",
      caption = "Data Viz by Ava Collier | Data From Lahman Package",
      x = "",
      y = "Homeruns Allowed"
      ) +
  theme(plot.title = element_text(hjust = 0.5),
        plot.subtitle = element_text(hjust = 0.5),
        plot.caption = element_text(hjust = 0.5))





















