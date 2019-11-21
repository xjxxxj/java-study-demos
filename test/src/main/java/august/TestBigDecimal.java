package august;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-08-27 16:02
 **/
public class TestBigDecimal {

    public static void main(String[] args) {
        BigDecimal bigDecimal = new BigDecimal(0);
        BigDecimal bigDecimal1 = new BigDecimal(5);
        BigDecimal multiply = bigDecimal1.multiply(new BigDecimal(2));
        BigDecimal add = bigDecimal.add(bigDecimal1);
        System.out.println(add.intValue()) ;
        List<String> string = new ArrayList<>();
        List<Number> numbers = new ArrayList<>();
    }

}