complete <- function(directory, id = 1:332) {
        comp_df<- data.frame(id= numeric (), nobs = numeric ())
        
        all_files <- list.files(directory, full.names=TRUE)
        
        for(id_file in id) {
                all_dat <- read.csv(all_files[id_file])
                nobs <- sum(complete.cases(all_dat))
                mondat <- data.frame(id_file, nobs)
                comp_df <-rbind(comp_df, mondat)
                
        }
        comp_df
                
}