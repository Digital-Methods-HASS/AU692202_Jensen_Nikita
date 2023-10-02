# packages

library(tidyverse)
library(ggplot)

# Read Data

Kings_Reign <- read_csv2("data/Kings.csv")
view(Kings_Reign)
head(Kings_Reign)


# Make pipe to make visualization

Kings_Reign %>% 
  select(Name, Start_Reign, End_Reign) %>% 
  mutate(Reign = End_Reign - Start_Reign) %>% 
  mutate(Name = reorder(Name, Reign)) %>% 
  ggplot(aes(x = Reign, y = Name, fill = Reign))+
  geom_col()+
  theme_bw()+
  labs(title = "Duration of Reign", x = "Reign in Years", y = "Monarch")


# Saving picture

ggsave("figures/Kings_Reign_Picture2.png")

