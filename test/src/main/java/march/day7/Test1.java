package march.day7;


import java.util.ArrayList;
import java.util.List;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-03-07 12:10
 **/
public class Test1 {

    public static void main(String[] args) {
        String decode = decode("\\uFEFF");
        String a = "" ;
        String b = "3" ;
        String c = a + b ;
        System.out.println(c) ;
        System.out.println(decode) ;
        char t = '中' ;
        System.out.println(t) ;
        double [][] target = new double[10000][10000] ;
        System.out.println(target) ;
    }

    public static String decode(String str) {
        String sg = "\\u";
        int a = 0;
        List<String> list = new ArrayList<>();
        while (str.contains(sg)) {
            str = str.substring(2);
            String substring;
            if (str.contains(sg)) {
                substring = str.substring(0, str.indexOf(sg));
            } else {
                substring = str;
            }
            if (str.contains(sg)) {
                str = str.substring(str.indexOf(sg));
            }
            list.add(substring);
        }
        StringBuffer sb = new StringBuffer();
        if (list != null && !list.isEmpty()){
            for (String string : list) {
                sb.append((char) Integer.parseInt(string, 16));
            }
        }
        return sb.toString();
    }

}