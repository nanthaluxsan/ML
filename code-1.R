df<-read.csv('D:/extra/udemy_machine/Data Files/code1_source_cregression/House_Price.csv', header = TRUE)
str(df)
summary(df)
hist(df$crime_rate)
pairs(~price+crime_rate+n_hot_rooms+rainfall,data=df)
barplot(table(df$airport))
barplot(table(df$waterbody))
barplot(table(df$bus_ter))
df<-read.csv('D:/extra/udemy_machine/Data Files/code1_source_cregression/House_Price.csv', header = TRUE)
summary(df)
quantile(df$n_hot_rooms,0.99)
uv=3*quantile(df$n_hot_rooms,0.99)
df$n_hot_rooms[df$n_hot_rooms>uv]<-uv
summary(df$n_hot_rooms)
lv=0.3*quantile(df$n_hot_rooms,0.01)
df$n_hot_rooms[df$n_hot_rooms<lv]<-lv
summary(df$n_hot_rooms)
mean(df$n_hos_beds,na.rm = TRUE)
which((is.na(df$n_hos_beds)))
df$n_hos_beds[is.na(df$n_hos_beds)]<-mean(df$n_hos_beds,na.rm = TRUE)
summary(df$n_hos_beds)
pairs(~price+crime_rate,data=df)
plot(df$price,log(1+df$crime_rate))
df$ave_dist=(df$dist1+df$dist2+df$dist3+df$dist4)/4
df2<-df[,-7:-10]
df<-df2
rm(df2)
df<-df[,-14]
install.packages("dummies")
