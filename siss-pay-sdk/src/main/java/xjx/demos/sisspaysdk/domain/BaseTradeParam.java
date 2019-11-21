package xjx.demos.sisspaysdk.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.io.Serializable;
import java.math.BigDecimal;

/**
 * 支付交易基础参数
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
@ToString
public abstract class BaseTradeParam implements Serializable {

    private static final long serialVersionUID = -4115475450200047227L;

    /**
     * 思迅代理商ID
     */
    protected String sixun_agent_id;

    /**
     * 随机字符串
     *
     * @Remark 16-32位, 英文字母和数字
     */
    protected String nonce_str;

    /**
     * 时间戳(接口调用时间)
     *
     * @Remark 北京时间，格式: yyyy-MM-dd HH:mm:ss
     */
    protected String timestamp;

    /**
     * 门店号
     *
     * @Remark 如果没有请传"000"
     */
    protected String branch_no;


    /**
     * 门店名称
     *
     * @Remark 如果没有传"总部"
     */
    protected String branch_name;
    /**
     * 思迅支付商户号
     */
    protected String siss_pay_id;

    /**
     * 锁号
     *
     * @Remark 如果没有传"00000000"
     */
    protected String softdog_id;

    /**
     * 软件POSID
     *
     * @Remark 如果没有请传"001"
     */
    protected String siss_posid;

    /**
     * 产品简称
     *
     * @Remark 微商店
     */
    protected String app_name;

    /**
     * 产品版本
     *
     * @Remark 如果没有请传"1.0.0.1"
     */
    protected String app_ver;

    /**
     * 支付客户端版本
     *
     * @Remark 如果没有请传"1.0.0.1"
     */
    protected String payc_ver;

    /**
     * 商户单号
     *
     * @Remark 退款和交易查询时用
     * ------> 最长30位, 建议20-30位
     * ------> 商户内唯一
     */
    protected String out_trade_no;

    /**
     * 付款金额
     *
     * @Remark 单位元
     * ------> 退款也要提供,为原单金额
     */
    protected BigDecimal total_amount;

    /**
     * 订单标题
     */
    protected String order_title;

    /**
     * 软件操作员ID
     *
     * @Remark 如果没有传"1001"
     */
    protected String siss_oper_id;

    /**
     * 软件操作员名称
     *
     * @Remark 如果没有传(siss_oper_id + " 操作员 ")
     */
    protected String siss_oper_name;

    /**
     * 签名
     */
    protected String sign;
}
