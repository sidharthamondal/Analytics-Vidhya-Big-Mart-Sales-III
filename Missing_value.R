df=read.csv('/home/sid/Desktop/Big_Mart_Sales/part2/1.csv', stringsAsFactors = TRUE ,na.strings = "")
View(df)
df$balcony=as.factor(df$balcony)
library(missForest)
df1= missForest(df,parallelize=c("no"),ntree = 50)
View(df1[1])
View(df1$ximp)

colSums(is.na(df1$ximp))

write.csv(df1$ximp,file = "MyData.csv")
