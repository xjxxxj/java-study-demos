package xjx.demos.sisspaysdk.config;

import lombok.Data;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-10-12 17:38
 **/
@Data
@Component
@ConfigurationProperties(prefix = "app.payConfig")
public class WechatPayConfig {
    @Value("md5SecretKey")
    private String md5SecretKey;
}