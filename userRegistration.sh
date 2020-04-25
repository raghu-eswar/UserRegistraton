echo "welcome";
    
NAME_PATTERN="^[[:upper:]]{1}[[:lower:]]{2,}$";
MAIL_PATTERN="^[a-zA-Z0-9$&+_-]+(\.[a-zA-Z0-9]+)*@([a-z0-9]+([a-z0-9-]*)\.)+[a-z]{2,4}$";
MOBILE_NUMBER_PATTERN="^[1-9]{2}[[:space:]]{1}[0-9]{10}$";

function takeFirstName() {
    echo "enter your first name ";read firstName;
    if [[ $firstName =~ $NAME_PATTERN ]]; then
        echo "first name valid";
        takeLastName;
    else 
        echo "first name not valid";
        takeFirstName;
    fi
}

function  takeLastName(){
    echo "enter your last name ";read lastName;
    if [[ $lastName =~ $NAME_PATTERN ]]; then
        echo "last name valid";
        takeEmailId;
    else 
        echo "last name not valid";
        takeLastName;
    fi
}

function takeEmailId() {
    echo "enter your mail id ";read mailId;
    if [[ $mailId =~ $MAIL_PATTERN ]]; then
        echo "mail id valid";
        takeMobileNumber;
    else 
        echo "mail id not valid";
        takeEmailId;
    fi
}

function takeMobileNumber() {
    echo "enter your mobile number ";read mobileNumber;
    if [[ $mobileNumber =~ $MOBILE_NUMBER_PATTERN ]]; then
        echo "mobile number valid";
    else 
        echo "mobile number not valid";
        takeMobileNumber;
    fi
}



takeFirstName;