intVec = c(1, 2)             # Double Vector
charVec = c('Sing', 'Song')  # Character Vector
booVec = c('TRUE', 'FALSE')  # Boolean Vector

# Create R matrix
data <- c(10, 11, 12, 13, 14, 15, 16, 17, 18)
mtx  <- matrix(data, nrow=3, ncol=3, byrow=TRUE)
mtx

#Create dataframe
my_dataframe=data.frame(
  "1d"       =c(11,22,33,44,55),
  "pages"    =c(32,45,33,22,56),
  "name"     =c("spark", "python", "R", "java", "json"),
  "chapters" = c(76,86,11,15,7),
  "price"    = c(144,553,321,567,890)
)  

#Display the dataframe
print(my_dataframe)

#Create linear regression model
data ("cars", package="datasets")
attach (cars)
lmo <- lm(speed~ dist, cars)

library (ggplot2)
ggplot(airquality, aes(Temp, Ozone)) +
  geom_point() +
  geom_smooth(method = "loess")