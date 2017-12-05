data(package="arules")
data("Groceries")
Groceries
summary(Groceries)
9835*169
#density
9835*169*.02609
Groceries[1:3]
itemFrequency((Groceries[,1]))
.058*9835#Sold so much frankfruiter
itemFrequencyPlot(Groceries, topN=5)#top 5 products also good probability combo

m1<-apriori(Groceries,parameter = list(support=.007,confidence=.25,minlen=3))
m1

summary(m1)
inspect(m1[1:20])
inspect(sort(m1,by="lift")[1:4])#top4
inspect(sort(m1,by="lift")[4:10])
