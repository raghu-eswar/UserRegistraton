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

    @Test
    public void userEmailValidation() {
        boolean isValid = inputValidation.validateUserEmail("raghu55@gmail.com");
        Assert.assertEquals(true,isValid);
    }

    @Test
    public void userMobileNumberValidation() {
        boolean isValid = inputValidation.validateUserMobileNumber("86 9876543210");
        Assert.assertEquals(true,isValid);
    }

    @Test
    public void userPasswordValidation() {
        boolean isValid = inputValidation.validateUserPassword("P@ssw0rd");
        Assert.assertEquals(true, isValid);
    }
}
