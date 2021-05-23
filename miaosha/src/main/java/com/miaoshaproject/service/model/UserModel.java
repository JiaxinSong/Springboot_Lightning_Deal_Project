package com.miaoshaproject.service.model;

import org.hibernate.validator.constraints.NotBlank;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

/**
 * Created by Jiaxin on 4/11/21
 */
public class UserModel {

    private Integer id;
    @NotBlank(message = "User name should not be empty")
    private String name;

    @NotNull(message = "Gender should not be empty")
    private Byte gender;

    @NotNull(message = "Age should not be empty")
    @Min(value=0,message = "Age should be more than 0")
    @Max(value=150,message = "Age should be less than 150")
    private Integer age;

    @NotBlank(message = "Phone number should not be empty")
    private String telphone;
    private String registerMode;
    private String thirdPartyId;

    @NotBlank(message = "Password should not be empty")
    private String encrptPassword;

    public String getEncrptPassword() {
        return encrptPassword;
    }

    public void setEncrptPassword(String encrptPassword) {
        this.encrptPassword = encrptPassword;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Byte getGender() {
        return gender;
    }

    public void setGender(Byte gender) {
        this.gender = gender;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getTelphone() {
        return telphone;
    }

    public void setTelphone(String telphone) {
        this.telphone = telphone;
    }

    public String getRegisterMode() {
        return registerMode;
    }

    public void setRegisterMode(String registerMode) {
        this.registerMode = registerMode;
    }

    public String getThirdPartyId() {
        return thirdPartyId;
    }

    public void setThirdPartyId(String thirdPartyId) {
        this.thirdPartyId = thirdPartyId;
    }
}
