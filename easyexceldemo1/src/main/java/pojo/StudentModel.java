package pojo;

import com.alibaba.excel.metadata.BaseRowModel;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-02-25 17:07
 **/
public class StudentModel extends BaseRowModel {

    private String name ;
    private Integer age ;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }
}