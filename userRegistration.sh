echo "welcome";
    
NAME_PATTERN="^[[:upper:]][[:lower:]]{2,}$";
MAIL_PATTERN="^[a-zA-Z0-9$&+_-]+(\.[a-zA-Z0-9]+)*@([a-z0-9]+([a-z0-9-]*)\.)+[a-z]{2,4}$";
MOBILE_NUMBER_PATTERN="^[1-9]{2}[[:space:]]{1}[5-9]{1}[0-9]{9}$";

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

function validatePassword() {
    echo "enter your password "; read password;
    symbols=${password//[![:punct:]]/};
    if [[ ${#password} -ge 6 && ${#symbols} == 1 && $password =~ .*[[:lower:]] && $password =~ .*[[:upper:]] && $password =~ .*[0-9] ]]; then
        echo "data valid";
    else
        echo "data not valid -- please enter valid data";
        validatePassword;
    fi 
}

function takeData() {
	takeFirstName;
	takeLastName;
	takeEmailId;
    takeMobileNumber;
    validatePassword;
}

takeData;
