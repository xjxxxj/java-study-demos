package may.day13;

import java.util.ArrayList;
import java.util.List;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-05-20 14:08
 **/
public class Test2 {

    public static void main(String[] args) {
        List<String> stringList = new ArrayList<>() ;
        stringList.add("afsdf");
        stringList.add("fdsfs");
        String a = "afsdf";
        String b = "fdsfs";
        System.out.println(stringList.contains(b)) ;
    }

}