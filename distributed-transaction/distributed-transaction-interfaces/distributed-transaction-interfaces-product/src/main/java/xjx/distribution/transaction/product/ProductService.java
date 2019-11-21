package xjx.distribution.transaction.product;

import xjx.distribution.transaction.common.domain.BaseResponse;
import xjx.distribution.transaction.product.param.bo.InventoryDeductionParam;

public interface ProductService {
    BaseResponse inventoryDeduction(InventoryDeductionParam param);
}
