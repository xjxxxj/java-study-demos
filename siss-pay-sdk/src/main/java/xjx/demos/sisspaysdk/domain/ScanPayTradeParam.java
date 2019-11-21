package xjx.demos.sisspaysdk.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;

/**
 * 条码支付请求入参
 *
 * @Description:
 * @Author: HJ
 * @CreateDate: 2019/8/20
 * @UpdateUser: HJ
 * @UpdateDate: 2019/8/20
 * @UpdateRemark:
 * @Version: 1.0
 */
@Getter
@Setter
@ToString(callSuper = true)
@XmlRootElement(name = "xml")
@XmlAccessorType(XmlAccessType.FIELD)
public class ScanPayTradeParam extends BaseTradeParam {

    private static final long serialVersionUID = -9033372525814912898L;

    /**
     * 付款码
     */
    private String auth_code;

    /**
     * 商品明细
     */
    private String lst_goods_detail;
}
