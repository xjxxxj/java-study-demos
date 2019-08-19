package com.xjx.javastudydemos.springbootdemo1.vo;

import java.io.Serializable;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-03-25 10:52
 **/
public class BaseVo implements Serializable {

    private static final long serialVersionUID = -5443357084065514388L;

    private Integer code = Integer.valueOf(1000) ;
    private String message = "successful" ;
    private Object data ;

    @Override
    public String toString() {
        return "BaseVo{" +
                "code=" + code +
                ", message='" + message + '\'' +
                ", data=" + data +
                '}';
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }
}