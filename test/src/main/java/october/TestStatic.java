package october;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-10-24 09:42
 **/
public class TestStatic {

    public static void main(String[] args) throws IllegalAccessException, InstantiationException {
        Class<Children> childrenClass = Children.class;
        System.out.println(childrenClass.newInstance()) ;
    }

}