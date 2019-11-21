package xjx.distribution.transaction.order;

import org.aspectj.lang.annotation.Before;
import xjx.distribution.transaction.aop.annotation.OpenDistributionTransaction;
import xjx.distribution.transaction.aop.annotation.RollBackMethod;
import xjx.distribution.transaction.common.domain.BaseResponse;
import xjx.distribution.transaction.order.param.bo.PlaceOrderParam;

public interface OrderService {
    @RollBackMethod(value = "orderRollBack")
    BaseResponse placeOrder(PlaceOrderParam placeOrderParam);
    BaseResponse orderRollBack(PlaceOrderParam placeOrderParam);
}
