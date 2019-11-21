package xjx.demos.sisspaysdk.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-10-12 16:12
 **/
@Getter
@Setter
@ToString(callSuper = true)
@XmlRootElement(name = "xml")
@XmlAccessorType(XmlAccessType.FIELD)
public class ClientPayTradeParam extends BaseTradeParam {
    /**
     * 公众号/小程序的APPID
     */
    private String sub_appid;
    /**
     * 顾客在此公众号/小程序中的openid
     */
    private String sub_openid;
    /**
     * is_minipg="1" 为小程序支付, 不传值表示公众号内支付
     */
    private String is_minipg;
    /**
     * 异步通知地址， 禁止使用QueryString，
     * 如：?a=1.
     * 正确实例：http://runliuv.wicp.io:15032/HOME/CONTACT
     */
    private String notify_url;
}