package xjx.distribution.transaction.aop.pojo;

import lombok.Data;

import java.io.Serializable;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-09-26 14:18
 **/
@Data
public class TransactionDetail implements Serializable {

    private Long tId;
    private Integer step;
    private String rollBackMethodName;
    private Object param;
    private Integer status;
    private static final long serialVersionUID = 6191535246962571352L;
}