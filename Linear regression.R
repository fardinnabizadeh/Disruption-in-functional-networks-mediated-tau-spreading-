# Load the mtcars dataset
data(mtcars)

# Fit a linear regression model
lm_model <- lm(mpg ~ wt, data = mtcars)

# Print the summary of the linear regression model
summary(lm_model)
