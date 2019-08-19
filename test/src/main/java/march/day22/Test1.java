package march.day22;

import java.util.Random;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-03-22 14:02
 **/
public class Test1 {

    public static void main(String[] args) {
        Random random = new Random();
        for(int i = 0 ; i < 10 ; i ++){
            System.out.println(random.nextDouble()) ;
        }
    }

}