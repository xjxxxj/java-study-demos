package domain;

import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Component;

import java.io.Serializable;

/**
 * @program: spring-framework-4.3.25.RELEASE
 * @description:
 * @author: 谢庆香
 * @create: 2019-09-17 10:26
 **/
public class Order implements Serializable {
    private Long id;
    private String orderNo;

    @Override
    public String toString() {
        return "Order{" +
                "id=" + id +
                ", orderNo='" + orderNo + '\'' +
                '}';
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getOrderNo() {
        return orderNo;
    }

    public void setOrderNo(String orderNo) {
        this.orderNo = orderNo;
    }

    private static final long serialVersionUID = -5787582330495162580L;
}