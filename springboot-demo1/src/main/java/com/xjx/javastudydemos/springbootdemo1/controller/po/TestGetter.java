package com.xjx.javastudydemos.springbootdemo1.controller.po;

import java.util.Calendar;
import java.util.Date;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-08-09 17:21
 **/
public class TestGetter {

    private Long id;
    private Date birthday;
    public Integer getAge() {
        if(birthday == null){
            return 0;
        }
        Calendar instance = Calendar.getInstance();
        instance.setTime(birthday);
        int birth = instance.get(Calendar.YEAR);
        instance.setTime(new Date());
        int now = instance.get(Calendar.YEAR);
        return now - birth;
    }
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }
}