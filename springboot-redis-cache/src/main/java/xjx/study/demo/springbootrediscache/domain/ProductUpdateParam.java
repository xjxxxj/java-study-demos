package xjx.study.demo.springbootrediscache.domain;

import lombok.Data;
import org.omg.PortableServer.ServantActivator;

import java.io.Serializable;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-09-05 15:31
 **/
@Data
public class ProductUpdateParam implements Serializable {
    private Long id;
    private static final long serialVersionUID = 5267223968693262121L;
}