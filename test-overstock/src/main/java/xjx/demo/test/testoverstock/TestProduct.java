package xjx.demo.test.testoverstock;

import lombok.Data;

import java.io.Serializable;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-09-09 13:41
 **/
@Data
public class TestProduct implements Serializable {

    private Long id;
    private Integer stock;

}