corr <- function(directory, threshold = 0) {
                        files <- list.files(directory, full.names = TRUE)
                        
                        results <- numeric()
                        
                        for (file in files) {
                                data <- read.csv(file)
                                
                                complete_cases <- sum(complete.cases(data))
                        
                                if (complete_cases > threshold) {
                                        correlation <- cor(data$sulfate, data$nitrate, use = "complete.obs")
                        
                                        results <- c(results, correlation)
                                }
                        }
                        
                     results
                }