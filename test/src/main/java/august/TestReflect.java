package august;

import august.domain.User;

import java.lang.reflect.Field;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-08-27 11:33
 **/
public class TestReflect {

    public static void main(String[] args) throws NoSuchFieldException, InstantiationException, IllegalAccessException, ClassNotFoundException {
        test2();
    }
    public static void test3() throws NoSuchFieldException, IllegalAccessException, InstantiationException {
        Class<?> collectionClass = Collection.class;
        Class<?> listClass = List.class;
        Field list1 = User.class.getDeclaredField("list");
        Class<?> list = User.class.getDeclaredField("list").getType();
        Class<?>[] interfaces = list.getInterfaces();
        System.out.println(Arrays.asList(interfaces).contains(Collection.class)) ;
    }
    public static void test2() throws NoSuchFieldException, ClassNotFoundException {
        Field list = User.class.getDeclaredField("list");
        Type genericType = list.getGenericType();
        boolean assignableFrom = ParameterizedType.class.isAssignableFrom(genericType.getClass());
        if(assignableFrom) {

            Type[] actualTypeArguments = ((ParameterizedType) genericType).getActualTypeArguments();
            System.out.println(actualTypeArguments) ;
            String typeName = actualTypeArguments[0].getTypeName();
            Class<?> aClass1 = Class.forName(typeName);
            System.out.println(aClass1) ;
        }
    }
    public static void test1(){
        MyTest myTest = new MyTest(1,"xjx");
        Arrays.stream(MyTest.class.getDeclaredFields()).forEach(file -> {
            System.out.println(file) ;
            try {
                file.setAccessible(true);
                Object o = file.get(myTest);
                System.out.println(file.get(myTest)) ;
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            }
        });
    }
    static class MyTest{
        private int age;
        private String name;

        public MyTest(int age, String name) {
            this.age = age;
            this.name = name;
        }
    }

}