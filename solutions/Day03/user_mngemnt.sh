#!/bin/bash

# Account Creation - To create a new user account.

create_user() {
    
    echo "Welcome's to the user creation."
    read -p "Enter the username: " username

    # if the user already exists


    if id "$username" &>/dev/null; then    #/dev/null is used to send unwanted output of program

        echo "User '$username' already exists."
    else
	 read -s -p "Enter password for '$username': " password
        echo
       
      # The pipe is used to combine two commands.
      # Logical AND (&&) is used when two or more conditions are present and it returns true when all the conditions are true.

        useradd "$username:$password" | passwd    
        
        echo "User account '$username' created successfully."
	
        
    fi

   }

   # To reset user_passwd

   function reset_password() {

    read -p " Username to reset passwd: " username

    if id "$username" &>/dev/null; then

        read -s -p "Enter new password for '$username': " password
        echo
        echo "$username:$password" | passwd              ## The pipe is used to combine two commands.

        echo "Password for user '$username' reset successfully."
    else
        echo "User '$username' does not exist."
    fi
}

    # To delete User

    function delete_user() {

    read -p "Enter username to delete: " username                  

    if  ! id "$username" &>/dev/null; then    # /dev/null is used to send unwanted output of program

        userdel -r "$username"            # command to delete user recursively
        echo "User account '$username' deleted successfully."
       
    else
        echo "User '$username' does not exist."
    fi
}

    # Function To list all user_accounts

    function list_users() {
    echo "List of user accounts:"

    awk -F: '{ print "Username:", $1, "UID:", $3 }' /etc/passwd  # awk is for pattern scanning and processing, configuration file of user created & UID stands for User-ID


}

   # To pass command line argument and use pipe command

   display_usage() {
    echo "Usage: $0 [-c|--create] [-d|--delete] [-r|--reset] [-l|--list] [-h|--help]"
}

case "$1" in
    -c | --create)
        create_user
        ;;
    -d | --delete)
        delete_user
        ;;
    -r | --reset)
        reset_password
        ;;
    -l | --list)
        list_users
        ;;
    -h | --help)
        display_usage
        ;;
    *)
        display_usage
        ;;

		# esac statement is to give an expression to evaluate and to execute several different statements based on the value of the expression.
esac
