package xjx.demos;

import java.io.Serializable;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-09-26 14:40
 **/
public class HelloParam implements Serializable {

    private static final long serialVersionUID = -4090587614311760425L;
    private String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}