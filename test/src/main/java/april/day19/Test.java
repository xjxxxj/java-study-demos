package april.day19;

import cn.com.siss.utils.common.JsonUtil;

import java.util.ArrayList;
import java.util.List;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-04-19 11:31
 **/
public class Test {

    public static void main(String[] args) {
        Short aShort = Short.valueOf("1");
        System.out.println(aShort) ;

        List<Integer> list = new ArrayList<>() ;
        list.add(1) ;
        list.add(2) ;
        String s = JsonUtil.objectToJson(list);
        System.out.println(s) ;

    }

}