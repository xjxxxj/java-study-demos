package jdk_api_test.domain;

import lombok.Data;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-09-19 11:26
 **/
@Data
public class User implements Serializable {

    private static final long serialVersionUID = 3401596958622180290L;
    private Long id;
    private String name;
    private Integer age;

}