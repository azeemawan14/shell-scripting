# Student Information:
    Muhammad Azeem 
    Date: 08-23-2026 
    Linux Distro: Rocky Linux 
   
# File name 1: hello.sh 

# Code:

    #!/bin/bash


    echo "Hello, DevOps!" 

# Commands used to add the execution permission to code:
    chmod +x hello.sh

# Command used to run the script:
    bash hello.sh or ./hello.sh

# Results:
    Hello, DevOps! 

# For exit status:
    echo $?
# Result: 
    0 

********************************************

# File name 2: greet.sh

# Code:
    #!/bin/bash 

    read -r -p "Please provide your name: " Name 

    read -r -p "favorite tool: " Tool 

    echo Hello $Name, your favorite tool is $Tool. 

# Commands used to add the execution permission to code: 
    chmod +x greet.sh
# Command used to run the script:
    bash greet.sh or ./greet.sh

It will ask to provide the "name" and "Tool". 

# Result: 

    Hello azeem, your favorite tool is git. 

# For exit status: 
    echo $?
# Result: 
    0 



****************************************

# File name 3: variables.sh

# Code:

    #!/bin/bash 
    Name="Muhammad Azeem" 
    Role="DevOps Engineer" 

    echo "Hello, I am $Name and I am a $Role."

    #echo "Hello, $Name"
    #echo 'Hello, $Name'

# Commands used to add the execution permission to code: 
    chmod +x variables.sh
# Command used to run the script:
    bash variables.sh or ./variables.sh


# Result: 

    Hello, I am Muhammad Azeem and I am a DevOps Engineer. 

#For exit status: 
    echo $?
# Result: 
    0 

****************************************

# File name 4: check_number.sh

# Code:

    #!/bin/bash 

    #while true; do 

    read -r -p "provide value: " value

    if [[ "$value" =~ ^-?[0-9]+$ ]]; then

        echo "Valid input provided: $value" 
     #  break 
    else
        echo "Invalid input. Please enter a valid whole number."

    fi 

    #done


# Commands used to add the execution permission to code: 
    chmod +x check_number.sh
# Command used to run the script:
    bash check_number.sh or ./check_number.sh

Need to provide value against which we want to check. 
# Result: 

    Valid input provided: 9 

# For exit status: 
    echo $?
# Result: 
    0 

With an invalid input: 

# Result: 

    Invalid input. Please enter a valid whole number. 
# For exit status: 
    echo $? 
# Result:  
    1 

*********************************

# File name 5: file_check.sh 

# Code:

    #!/bin/bash

    #Provide the file name

    #while true; do
    read -r -p "Please provide the file name or path: " file 


    if [[ ! -e "$file" ]]; then 
        echo "invalid file name or path." 
        exit 1 

    elif [[ -f "$file" ]]; then 
        echo "File "$file" found." 
        exit 0 
    elif [[ -d "$file" ]]; then 
        echo "Directory "$file" found." 
        exit 0 

    #else 
       #echo "invalid file name or directory name."
       #exit 1

    fi
    #done


# Commands used to add the execution permission to code: 
    chmod +x file_check.sh
# Command used to run the script:
    bash file_check.sh or ./file_check.sh

Provided file name as hello.sh
# Results:
    File hello.sh found. 

# For exit status: 
    echo $?
# Result: 
    0 

Provided (wrong) file name or directory name missing.
# esults:
   invalid file name or path. 

# For exit status: 
    echo $?
# Result: 
    1 


********************************************

# File name 6: server_check.sh 

# Code:

    #!/bin/bash

    #Store service name into variable

    service_name="$1"


    #service="systemctl status $service_name"

    #systemctl status $service_name


    while true; do
    read -r -p "Do you want to check the status of $service_name? (y/n):" EXP
    case "$EXP" in

        y|Y|Yes|yes|YES)
               #systemctl status $service_name
                a=$(systemctl is-active $service_name)

                echo "$service_name is $a!"
                exit 0
        ;;
        n|N|No|no|NO)
                echo "Skipped!"
                exit 1
                #skipped
        ;;
        *)
        echo "Provide a valid service name"
    esac
    done



# Commands used to add the execution permission to code: 
    chmod +x server_check.sh
# Command used to run the script:
    bash server_check.sh or ./server_check.sh


Provide the service name as argument 1: httpd or nginx 
# Results:
    httpd is active! 
    nginx is inactive! 

# For exit status: 
    echo $?
# Result: 
    0 

Select no/No/n/N/ at the read value: 

# Result: 
    Skipped! 

# For exit status: 
    echo $?
# Result: 
    1 

# 3. Investigation Answers
    
    What happened when the shebang was removed?
    It worked with and without shebang line just like a normal script. 

    What was the difference between single and double quotes?
    When used single quote it does not expand the variable value. When used double quote it expands the variable value. 

    Why should numeric input be validated before arithmetic?

    What is the difference between -f and -e?
    -f only search for files whereas -e search for files and directory paths. 

    Why is systemctl is-active better for a script's decision than parsing systemctl status output?
    This is better to use as it precisely provide the service status rather then long troubleshooting data lines. 

# 4. What You Learned
    Write at least three clear learning points.

    1. I learned that While true; do .... done. This was a new learning to me. This is helping to enclose the scripts where we require a valid value/answer from the user. 
    2. I learned that systemctl is-active. This command really helped to inspect the exact status rather long lines and stuff. Although full details do help to troubleshoot the issue. But status can point us out to direction of further troubleshooting. 
    3. I learned that [[ "$number" =~ ^-?[0-9]+$ ]] can be used to get the valid input and how we can avoid users to provide special characters. 