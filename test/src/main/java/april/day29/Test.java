package april.day29;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-04-29 11:49
 **/
public class Test {

    public static void main(String[] args) {
        List<Integer> integerList = new ArrayList<>() ;
        integerList.add(50) ;
        integerList.add(30) ;
        integerList.add(60) ;

        Collections.sort(integerList);
        System.out.println(integerList) ;

    }

}