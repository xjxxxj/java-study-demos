package xjx.demos.springbootweixinsdk.xjx.demos.springboot.weixin.sdk;

import org.junit.Test;
import weixin.popular.api.TokenAPI;
import weixin.popular.bean.token.Token;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-10-12 13:59
 **/
public class TokenTest {

    @Test
    public void getAppleToken() {
        Token token = TokenAPI.token("wxd97cbdd04411e16f", "a2a65425478e78cfd5f8a710ac58bb84");
        System.out.println(token) ;
    }

}