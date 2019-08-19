package april.day3;

import cn.com.siss.utils.common.JsonUtil;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.TypeReference;
import com.google.gson.JsonObject;

import java.util.ArrayList;
import java.util.List;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-04-03 18:22
 **/
public class Test1 {

    public static void main(String[] args) {
        String jsonString = "[{\"id\":\"53\",\"name\":\"xjx\"},{\"id\":53,\"name\":\"xjx\"}]" ;
        Object object = JSON.parseObject(jsonString, new TypeReference<ArrayList<Student>>() {
        });
        System.out.println(object) ;
        List<Student> students = new ArrayList<>() ;
        Student student = new Student();
        student.setId(1L);
        student.setName("xx");
        students.add(student);
        student = new Student() ;
        student.setId(2L);
        student.setName("xxx");
        students.add(student) ;
        String s = JSON.toJSONString(students);
        System.out.println(s) ;

    }

}