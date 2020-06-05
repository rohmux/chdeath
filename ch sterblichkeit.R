library(ggplot2)

df <- read.csv("sterblichkeit_schweiz.csv", sep = ";")
young <- df[which(df$Alter == "0-64"),]
old <- df[which(df$Alter != "0-64"),]

ggplot(old, aes(x = old$Kalenderwoche, y = old$Anzahl_Todesfalle, colour = old$KJ)) +
  geom_point() +
  facet_wrap( ~ old$KJ)