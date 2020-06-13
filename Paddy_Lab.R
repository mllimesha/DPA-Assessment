paddyData = read.csv("PaddyNew.csv", header = TRUE)
view(paddyData)
plot (paddyData [2:3])

par(mfrow=c(1, 2))
hist(paddyData$Sown_Acres, cex.main = 0.75)

p = ecdf(paddyData$Sown_Acres)
plot(p, cex.main = 0.75)

# Stacked histogram #
ggplot(paddyData, aes(fill=Season, y=Production_Bushels, x=Year)) +
  geom_bar(position="dodge", stat="identity")

