package xjx.distribution.transaction.common.domain;

import org.apache.commons.lang3.StringUtils;

import java.io.Serializable;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-09-26 10:18
 **/
public class BaseResponse<T> implements Serializable {

    private Integer code;
    private String message;
    private T data;

    private static final String MSG_SUCCESS = "success";
    public static final String MSG_FAIL = "fail";
    public static final BaseResponse BASE_RESPONSE_OK = ok();
    public static final BaseResponse BASE_RESPONSE_FAIL = fail();

    public BaseResponse() {
    }

    private BaseResponse(Integer code, String message, T data) {
        this.code = code;
        this.message = message;
        this.data = data;
    }
    public static <T> BaseResponse fail (T data) {
        return fail(null, data);
    }
    public static BaseResponse fail(String message) {
        return fail(message, null);
    }

    public static BaseResponse fail() {
        return fail(null, null);
    }

    public static <T> BaseResponse fail(String message, T data) {
        if(StringUtils.isEmpty(message)) {
            message = MSG_FAIL;
        }
        return new BaseResponse(Code.CODE_FAIL.getCode(), message, data);
    }

    public static <T> BaseResponse<T> ok(T data) {
        return ok(null, data);
    }
    public static BaseResponse ok() {
        return ok(null, null);
    }
    public static BaseResponse ok(String message) {
        return ok(message, null);
    }
    public static <T> BaseResponse ok(String message, T data) {
        if(StringUtils.isEmpty(message)) {
            message = MSG_SUCCESS ;
        }
        return new BaseResponse(Code.CODE_SUCCESS.getCode(), message, data);
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

    public T getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }

    public static enum Code {
        CODE_SUCCESS(1000),
        CODE_FAIL(5000);

        Code(Integer code) {
            this.code = code;
        }
        private Integer code;

        public Integer getCode() {
            return code;
        }

        public void setCode(Integer code) {
            this.code = code;
        }
    }
}