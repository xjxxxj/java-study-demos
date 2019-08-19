package march.day22;

import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-03-22 15:42
 **/
public class Test2 {

    public static void main(String[] args) {
        Map<Long,String> testMap =  new HashMap<Long,String>(1000) ;
        for(int i = 0 ; i < 100000 ; i ++){
            Long id = Long.valueOf(System.currentTimeMillis() + i) ;
            String security = UUID.randomUUID().toString();
            testMap.put(id,security) ;
            System.out.println(i) ;
        }

        try {
            Thread.sleep(200000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        System.out.println(testMap) ;
    }

}