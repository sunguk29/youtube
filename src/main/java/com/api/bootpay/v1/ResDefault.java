package com.api.bootpay.v1;

/**
 * Created by ehowlsla on 2018. 5. 29..
 */
public class ResDefault {
    public int status;
    public int code;
    public String message;

    public ResDefault() {}
    public ResDefault(int status) {
        this.status = status;
    }
}
