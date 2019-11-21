package xjx.distribution.transaction.aop.pojo;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-09-26 14:15
 **/
@Data
public class TransactionRecord implements Serializable {
    private Long tId;
    private Integer status;
    private Date startTime;
    private Date endTime;
    private Object param;
    private static final long serialVersionUID = -212212874431008148L;
}