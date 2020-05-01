library(tidyverse)
library(ggplot2)
library(ggcorrplot)
# Show first the rows of the dataset
print(head(esoph,10))

# Show summary
print(summary(esoph))

# Create dataset with the correaltion between tobacco and age to the cases of cancer
d1<- esoph %>%  group_by(agegp, tobgp) %>%
  summarise(count = n(), total_cases = sum(ncases), total_controls = sum(ncontrols), percentage=total_cases*100/total_controls)

p1 <- ggplot(d1, aes(x=agegp, y=percentage,fill=tobgp)) +
  geom_bar(stat="identity", position = "dodge") +
  scale_fill_brewer(palette ="Set1")+
  labs(x= 'Age Groups', y= 'Percentage Of Cancer Cases')+
  guides(fill=guide_legend(title="Tobacco Consumption"))

print(p1)

# Create dataset with the correaltion between the consumpation of tobacco and the cases of cancer
d2<- esoph %>%  group_by(tobgp) %>%
  summarise(count = n(), total_cases = sum(ncases), total_controls = sum(ncontrols), percentage=total_cases*100/total_controls)

p2 <- ggplot(d2, aes(x=tobgp, y=percentage,fill=tobgp)) +
  geom_bar(stat="identity", position = "dodge") +
  scale_fill_brewer(palette ="Set1")+
  labs(x= 'Tobacco Consumption', y= 'Percentage Of Cancer Cases')+
  guides(fill=guide_legend(title="Tobacco Consumption"))

print(p2)

# Create dataset with the correaltion between the consumpation of tobacco and the cases of cancer
d2<- esoph %>%  group_by(tobgp) %>%
  summarise(count = n(), total_cases = sum(ncases), total_controls = sum(ncontrols), percentage=total_cases*100/total_controls)

p2 <- ggplot(d2, aes(x=tobgp, y=percentage,fill=tobgp)) +
  geom_bar(stat="identity", position = "dodge") +
  scale_fill_brewer(palette ="Set1")+
  labs(x= 'Age Tobacco Consumption', y= 'Percentage Of Cancer Cases')+
  guides(fill=guide_legend(title="Tobacco Consumption"))

print(p2)

# Create dataset with the correaltion between tobacco and alcohol to the cases of cancer
d3<- esoph %>%  group_by(alcgp,tobgp) %>%
  summarise(count = n(), total_cases = sum(ncases), total_controls = sum(ncontrols),
            percentage=total_cases*100/total_controls)


p3<-ggplot(d3, aes(x=alcgp, y=percentage,fill=tobgp)) +
  geom_bar(stat="identity", position = "dodge") +
  scale_fill_brewer(palette ="Set1")+
  labs(x= 'Alcohol Consumption', y= 'Percentage Of Cancer Cases')+
  guides(fill=guide_legend(title="Tobacco Consumption Groups Per Alcohol Consumption"))

print(p3)
