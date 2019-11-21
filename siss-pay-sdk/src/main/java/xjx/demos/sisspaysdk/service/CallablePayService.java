package xjx.demos.sisspaysdk.service;

import cn.com.siss.framework.common.constant.web.CommonConstant;
import cn.com.siss.framework.common.tools.utils.HttpRequestUtil;
import cn.com.siss.framework.common.tools.utils.SignatureUtil;
import cn.com.siss.framework.common.tools.utils.XmlUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import xjx.demos.sisspaysdk.config.WechatAccountPayConfig;
import xjx.demos.sisspaysdk.domain.ClientPayTradeParam;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-10-12 15:55
 **/
@Service
public class CallablePayService {
    @Autowired
    private WechatAccountPayConfig wechatAccountPayConfig;

    public Object callableClientPay(ClientPayTradeParam payTradeParam) {
        String sign = SignatureUtil.getSign(payTradeParam, wechatAccountPayConfig.getMd5SecretKey());
        payTradeParam.setSign(sign);
        return null;
    }
    private String callableClientPay(Object param, String payUrl) {
        // 获取交易XML字符串请求入参
        String tradeParamStr = XmlUtil.serialize(param);
        try {
            return HttpRequestUtil.sendPost(payUrl, tradeParamStr, "application/xml;charset=utf-8");
        } catch (Exception e) {
            return null;
        }
    }
}