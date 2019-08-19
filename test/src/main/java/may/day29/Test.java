package may.day29;

import java.util.ArrayList;
import java.util.List;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-05-29 16:19
 **/
public class Test {

    public static void main(String[] args) {
        List<String> stringList = new ArrayList<>();
        stringList.add("xjx");
        stringList.add("xxj");
        stringList.add("xqx");
        List<String> target = new ArrayList<>();
        //target.add("xjx");
        target.add("x");
        //target.add("xxj");
        System.out.println(stringList.containsAll(target)) ;
        System.out.println(stringList) ;
        System.out.println(target) ;
    }

}