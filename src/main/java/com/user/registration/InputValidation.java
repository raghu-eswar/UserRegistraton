package com.user.registration;

public class InputValidation {
    private static final String NAME_PATTERN = "[A-Z][a-z]{2,}";
    private static final String EMAIL_PATTERN = "^[a-zA-Z0-9$&+_-]+(\\.[a-zA-Z0-9]+)*@([a-z0-9]+([a-z0-9-]*)\\.)+[a-z]{2,4}$";
    private static final String MOBILE_NUMBER_PATTERN = "^[0-9]{2}\\p{Space}[6-9][0-9]{9}$";

    public boolean validateUserName(String name) {
        if(name.matches(NAME_PATTERN) ) {return true;}
        return false;
    }

    public boolean validateUserEmail(String mail) {
        if(mail.matches(EMAIL_PATTERN)) {return true;}
        return false;
    }

    public boolean validateUserMobileNumber(String mobileNumber) {
        if(mobileNumber.matches(MOBILE_NUMBER_PATTERN)) {return true;}
        return  false;
    }
}
