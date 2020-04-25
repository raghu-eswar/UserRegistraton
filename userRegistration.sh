echo "welcome";
    
NAME_PATTERN="^[[:upper:]]{1}[[:lower:]]{2,}$";
MAIL_PATTERN="^[a-zA-Z0-9$&+_-]+(\.[a-zA-Z0-9]+)*@([a-z0-9]+([a-z0-9-]*)\.)+[a-z]{2,4}$";
MOBILE_NUMBER_PATTERN="^[1-9]{2}[[:space:]]{1}[0-9]{10}$";

function validate() {
	read value
	pattern=$1;
	if [[ $value =~ $pattern ]]; then
        echo "data valid";
    else 
        echo "data not valid -- please enter valid data";
        validate $pattern;
    fi

}

function takeFirstName() {
    echo "enter your first name ";
    validate $NAME_PATTERN; 
}

function  takeLastName(){
    echo "enter your last name ";    
    validate $NAME_PATTERN; 
}

function takeEmailId() {
    echo "enter your mail id ";  
    validate  $MAIL_PATTERN; 
}

function takeMobileNumber() {
    echo "enter your mobile number ";
    validate $MOBILE_NUMBER_PATTERN; 
}

function takeData() {
	takeFirstName;
	takeLastName;
	takeEmailId;
    takeMobileNumber;
}

takeData;
