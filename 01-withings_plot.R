df = read.csv("/Users/danielmsheehan/GitHub/withings/data/withings.csv")

colnames(df)[2] <- "Weight"
names(df)

df$Date = strptime(df$Date, "%Y-%m-%d %H:%M %p")

head(df, n=10)


plot(df$Date,df$Weight,xlab="Time", ylab="Weight", main="Weight - Time", col="blue")
axis.Date(1,at=df$Date,labels=format(df$Date,"%m"),las=2)
