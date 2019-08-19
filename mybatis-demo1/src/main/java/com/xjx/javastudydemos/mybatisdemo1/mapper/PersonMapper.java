package com.xjx.javastudydemos.mybatisdemo1.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-08-02 10:32
 **/
@Mapper
public interface PersonMapper {

    int changeAge(@Param("id") Integer id, @Param("changed") int changed);

}