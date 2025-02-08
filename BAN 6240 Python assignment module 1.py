import random

#Total number of workers
Total_workers = 400

workers= []

for i in range (Total_workers):

# the identified parameters are salary, level and worker_sex

    salary = random.randint (3000,100000) # assign a random salary between 3000 and 100000
    
    worker_sex = random.choice (["female", "male"]) # assign the sex of the workers randomly as either male or female
    
    level = "A5-F" # assume a default worker level as A5-F
    
    if salary > 10000 and salary < 20000: # conditional statement 1: if salary is > 10000 and < 20000 assign worker as level A1
        level = "A1"
    elif salary > 7500 and salary < 30000 and worker_sex == "female": # conditional statement 2: if salary is > 7000 and < 30000 assign worker as level A5-F
        level = "A5-F"
        
# assign parameters to workers within the loop using dictionary
    worker = {
        "worker_id" : i + 1,
        "salary" : salary,
        "worker_sex" : worker_sex,
        "level" : level
        }
    
    workers.append (worker) # add worker to the list
    
for worker in workers:
    
    print (worker)
    
 # exception handling - trying to print the workers list outside the loop

try:
    print(worker [[worker]])
except:
    print ("an exception has occurred")   
