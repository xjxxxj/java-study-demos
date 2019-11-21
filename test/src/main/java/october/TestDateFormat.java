package october;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.junit.Test;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-10-22 10:05
 **/
public class TestDateFormat {
    
    @Test
    public void test1() {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyMMddHHmmssSSS");
        String format = dateFormat.format(new Date());
        System.out.println(format) ;
    }
    @Test
    public void test2() {
        Object a = null;
        String str = (String)a;
        System.out.println(str) ;
    }
}