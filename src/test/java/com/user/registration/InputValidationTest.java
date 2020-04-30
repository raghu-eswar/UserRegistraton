package com.user.registration;

import org.junit.Assert;
import org.junit.Test;

public class InputValidationTest {
    static  InputValidation inputValidation = new InputValidation();
    @Test
    public void userFirstNameValidationTest() {
        boolean isValid = inputValidation.validateUserName("Names");
        Assert.assertEquals(true, isValid);
    }

    @Test
    public void userLastNameValidation() {
        boolean isValid = inputValidation.validateUserName("Names");
        Assert.assertEquals(true, isValid);
    }
}
