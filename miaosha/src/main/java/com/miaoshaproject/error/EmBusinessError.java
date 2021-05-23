package com.miaoshaproject.error;

/**
 * Created by Jiaxin on 4/11/21
 */
public enum EmBusinessError implements CommonError{
    //通用错误类型10001
    PARAMETER_VALIDATION_ERROR(10001,"Parameter eligible!"),
    UNKNOWN_ERROR(10002,"Unknown error!"),
    //20000开头为用户信息相关错误定义
    USER_NOT_EXIST(20001,"User not exist!"),
    USER_LOGIN_FAIL(20002,"User phone number or password not correct!"),
    USER_NOT_LOGIN(20003,"User hasn't logged in"),
    //30000开头为交易型错误
    STOCK_NOT_ENOUGH(30001,"库存不足")

    ;

    private EmBusinessError(int errCode,String errMsg){
        this.errMsg=errMsg;
        this.errCode=errCode;
    }

    private int errCode;
    private String errMsg;



    @Override
    public int getErrCode() {
        return errCode;
    }

    @Override
    public String getErrMsg() {
        return errMsg;
    }

    @Override
    public CommonError setErrMsg(String errMsg) {
        this.errMsg=errMsg;
        return this;
    }
}
