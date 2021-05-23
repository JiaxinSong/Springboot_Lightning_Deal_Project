package com.miaoshaproject.error;

/**
 * Created by Jiaxin on 4/11/21
 */
public interface CommonError {
    public int getErrCode();
    public String getErrMsg();
    public CommonError setErrMsg(String errMsg);

}
