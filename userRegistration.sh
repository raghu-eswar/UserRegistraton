echo "welcome";

echo "enter your first name ";read firstName;
pattern="^[[:upper:]]{1}[[:lower:]]{2,}$";
if [[ $firstName =~ $pattern ]]; then
	echo "first name valid";
    echo "enter your last name ";read lastName;
    if [[ $lastName =~ $pattern ]]; then
	    echo "last name valid";
    else 
	    echo "last name not valid";
    fi
else 
	echo "first name not valid";
fi