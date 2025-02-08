# Total number of workers
total_workers <- 400
workers <- list()
for (i in 1: total_workers){
# The identified parameters for the workers list are salary, sex and level
    salary <- sample(3000:100000, 1) # assign salaries randomly in the worker list
    sex <- sample(c("female", "male"), 1) # assign sex randomly to the workers
    level <- "A5-F" # assume default level as A5-F
# condition 1: worker is "A1" if salary is between 10000 and 30000
    if (salary > 10000 && salary < 20000) {
        level <- "A1"
# condition 2: worker is AF-5 if female and salary is between 7500 and 30000
    }else if (salary > 7500 && salary < 30000 && sex == "female"){
        level <- "A5-F"
    }
# define worker based on identified parameters in the loop
    worker <- list(
        worker_id = i,
        salary = salary,
        sex = sex,
        level = level
    )
# assign parameters to each worker in the loop
    workers [[i]] <- worker
}
# generate the workers list based on defined parameters and conditions
cat("First 10 workers:\n")
for (worker in workers[1:10]){
    print(worker)
}
# Exception handling
worker <- tryCatch ({
    print (worker)
}, warning = function(w){
    cat("warning: the code is correct however, some issues might exist. \n")
    return (NULL)
}, error = function(e){
    cat("error: this is an error. \n")
    return (NA)
}, finally = {
    cat("the code will be executed! \n")
})
