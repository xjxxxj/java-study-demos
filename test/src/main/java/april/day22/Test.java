package april.day22;

import java.lang.reflect.Field;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-04-22 18:33
 **/
public class Test {

    public static void main(String[] args) throws NoSuchFieldException, IllegalAccessException {
        Person person = new Person("xjx");
        Field field = Person.class.getDeclaredField("name");
        field.setAccessible(true);
        field.set(person,"xxj");
        System.out.println(person) ;
    }

}