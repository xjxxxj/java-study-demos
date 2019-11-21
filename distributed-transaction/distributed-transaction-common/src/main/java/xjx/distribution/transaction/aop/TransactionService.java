package xjx.distribution.transaction.aop;

import xjx.distribution.transaction.aop.pojo.TransactionDetail;
import xjx.distribution.transaction.aop.pojo.TransactionRecord;
import xjx.distribution.transaction.common.domain.BaseResponse;

public interface TransactionService {
    BaseResponse addTransactionRecord(TransactionRecord record);
    BaseResponse addTransactionDetail(TransactionDetail detail);
}
