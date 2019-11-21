package xjx.distribution.transaction.aop;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.*;
import xjx.distribution.transaction.aop.annotation.OpenDistributionTransaction;
import xjx.distribution.transaction.aop.annotation.RollBackMethod;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-09-26 13:27
 **/
@Aspect
public class DistributionTransactionAop {

    @Before("@annotation(openDistributionTransaction)")
    public void addTransactionRecord(JoinPoint joinPoint, OpenDistributionTransaction openDistributionTransaction) {

    }
    @AfterThrowing("@annotation(openDistributionTransaction)")
    public void rollBack(JoinPoint joinPoint, OpenDistributionTransaction openDistributionTransaction) {

    }
    @After("@annotation(openDistributionTransaction)")
    public void confirm(JoinPoint joinPoint, OpenDistributionTransaction openDistributionTransaction) {

    }
    @Before("@annotation(rollBackMethod)")
    public void addTransactionDetail(JoinPoint joinPoint, RollBackMethod rollBackMethod) {

    }
}