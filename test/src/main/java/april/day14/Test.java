package april.day14;

import java.util.Random;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-04-15 17:31
 **/
public class Test {
    private static int count = 1000000 ;//100万次
    private static Random random = new Random() ;
    public static void main(String[] args) {

       getRandomNumUseTime(1000) ;//1千
       getRandomNumUseTime(1000000) ;//100万

    }

    private static long getRandomNumUseTime(int num) {
        long startTime = System.currentTimeMillis() ;
        for(int i = 0 ; i < count ; i ++){
            int nextInt = random.nextInt(num);
        }
        long useTime = System.currentTimeMillis() - startTime;
        System.out.println("取" + num + "内随机数" + count + "次，消耗：" + useTime + "ms") ;
        return useTime ;
    }


}