package april.day18;

import org.springframework.beans.BeanUtils;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-04-18 16:50
 **/
public class Test {

    public static void main(String[] args) {
        Student student = new Student();
        Person person = new Person();
        student.setName("xjx");
        BeanUtils.copyProperties(student,person);
        System.out.println(person.getName()) ;
    }

}