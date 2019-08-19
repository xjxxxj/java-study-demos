package march.day25;

import cn.com.siss.utils.web.HttpClientUtil;
import io.netty.handler.codec.http.HttpUtil;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-03-25 11:19
 **/
public class Test1 {

    public static void main(String[] args) {
        HttpClientUtil instance = HttpClientUtil.getInstance();
        instance.sendHttpPost("http://localhost:8080/itemInfo/insertBatch") ;
    }

}