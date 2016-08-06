#Load Training and Testing datasets into data frame
train <- read.csv('training_data.csv',sep='\t')
test <- read.csv('testing_data.csv',sep='\t')

# Train the model using the training sets and check score
linearModel <- lm(y~ ., data = train)
summary(linearModel)

#Predict Output
predicted= predict(linearModel,test) 