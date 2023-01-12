

happy = read.csv("./happy.csv")
hist(happy$HP, main = "The title") # read HP column

# Plot GPA by Happiness
plot(happy$GPA, happy$HP, col="blue", pch=21) # (Input, Output, color, symbolshape)

# make linear model to predict happiness from GPA
result = lm(happy$HP ~ happy$GPA) # (output ~ input)
print(summary(result)) # line of best fit
# (happy&GPA Estimate Std. is the estimated slope)