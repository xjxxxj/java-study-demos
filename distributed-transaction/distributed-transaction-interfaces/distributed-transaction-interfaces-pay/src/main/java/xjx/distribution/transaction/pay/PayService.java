package xjx.distribution.transaction.pay;

import xjx.distribution.transaction.common.domain.BaseResponse;
import xjx.distribution.transaction.pay.param.bo.PayParam;

public interface PayService {
    BaseResponse pay(PayParam param);
}
