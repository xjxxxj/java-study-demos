package xjx.study.demo.springbootrediscache.domain;

import lombok.Data;
import org.omg.PortableServer.ServantActivator;

import java.io.Serializable;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-09-05 15:27
 **/
@Data
public class ProductQueryParam implements Serializable {
    /**
     * 商品ID
     * 表字段 : product_info.id
     */
    private Long id;

    /**
     * 商户编号(0表示平台自营)
     * 表字段 : product_info.merchant_id
     */
    private Long merchantId;
}