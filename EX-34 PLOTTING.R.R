handle_missing_values <- function(data, threshold = 0.1){
  num_rows <- nrow(data)
  missing_counts <- colSums(is.na(data))
  for(col in names(data)){
    missing_count <- missing_counts[col]
    if(missing_count > 0){
      if(missing_count/num_rows < threshold){
        data <- data[complete.cases(data),]
      } else {
        mean_val <- mean(data[[col]],na.rm=TRUE)
        data[[col]][is.na(data[[col]])] <- mean_val
      }
    }
  }
  return (data)
}

df_handled <- handle_missing_values(airquality)
print(df_handled)

# Apply linear regression algorithm using Least Squares method on "Ozone" and "Solar.R"
model <- lm(Ozone ~ Solar.R, data = airquality)

# Plot scatter plot between Ozone and Solar.R and add regression line created by above model
plot(airquality$Solar.R, airquality$Ozone)
abline(model,col="red")