library(e1071)

xor_dataframe <- data.frame(c(), c(), c())
xor_dataframe = rbind(xor_dataframe, c(0, 0, 0))
xor_dataframe = rbind(xor_dataframe, c(1, 0, 1))
xor_dataframe = rbind(xor_dataframe, c(0, 1, 1))
xor_dataframe = rbind(xor_dataframe, c(1, 1, 0))

names(xor_dataframe)[1]<-paste("input_a")
names(xor_dataframe)[2]<-paste("input_b")
names(xor_dataframe)[3]<-paste("output")

model <- svm(output ~ input_a + input_b, data = xor_dataframe)

x <- subset(xor_dataframe, select=c("input_a", "input_b"))
y <- subset(xor_dataframe, select=c("output"))

model <- svm(x, y)
pred <- predict(model, x)

pred
