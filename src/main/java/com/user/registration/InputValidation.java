package com.user.registration;

public class InputValidation {
    private static final String NAME_PATTERN = "[A-Z][a-z]{2,}";

    public boolean validateUserName(String name) {
        if(name.matches(NAME_PATTERN) ) {return true;}
        return false;
    }
}
