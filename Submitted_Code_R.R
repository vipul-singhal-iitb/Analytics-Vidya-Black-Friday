
model1=lm(Purchase ~ (factor(Product_Category_1)+factor(Age)+factor(City_Category)+factor(Marital_Status)), data=train[,2:12])
summary(model1)

predicted1=predict(model1,  test, interval="prediction")

write.table(predicted1,file="predicted1.csv",sep=",",row.names=F)
