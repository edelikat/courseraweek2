pollutantmean <-function(directory, pollutant, id = 1:332) {
        pollutant_data <- c()
        
        for(id_file in id) {
                file_name <- sprintf("%03d.csv", id_file)
                file_path <- file.path(directory, file_name)
                
                data<- read.csv(file_path)
                
                pollutant_data <- c(pollutant_data, data [[pollutant]])
        }
        mean(pollutant_data, na.rm = TRUE)
}