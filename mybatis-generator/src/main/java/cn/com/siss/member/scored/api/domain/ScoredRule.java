package cn.com.siss.member.scored.api.domain;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

public class ScoredRule implements Serializable {
    /**
     * 规则ID
     * 表字段 : scored_rule.id
     */
    private Long id;

    /**
     * 积分规则快照ID
     * 表字段 : scored_rule.snap_id
     */
    private Long snapId;

    /**
     * 商户编号
     * 表字段 : scored_rule.merchant_id
     */
    private Long merchantId;

    /**
     * 会员类别(等级)ID
     * 表字段 : scored_rule.level_id
     */
    private Long levelId;

    /**
     * 会员类别(等级)编号
     * 表字段 : scored_rule.level_no
     */
    private String levelNo;

    /**
     * 注册赠送积分(0:不赠送)
     * 表字段 : scored_rule.register_scored
     */
    private BigDecimal registerScored;

    /**
     * 积分获取方案(1:不启用; 2:按消费比例; 3:按商品给定积分值; 4:按商品类别; 5按商品品牌)
     * 表字段 : scored_rule.scored_plan
     */
    private Integer scoredPlan;

    /**
     * 积分方案的消费金额(单位:分)
     * 表字段 : scored_rule.scored_plan_amount
     */
    private Integer scoredPlanAmount;

    /**
     * 积分方案的积分值
     * 表字段 : scored_rule.scored_plan_value
     */
    private Integer scoredPlanValue;

    /**
     * 积分获取方案自定义的值,存json字符串。比如选择按类别设置积分方案时，该值可以是:[{"name":"c-1","no":"001","scored":10,money:1},{"name":"c-2","no":"002","scored":100,money:11}]
     * 表字段 : scored_rule.scored_plan_custom_value
     */
    private String scoredPlanCustomValue;

    /**
     * 积分取整标识(1:开启; 2:关闭)
     * 表字段 : scored_rule.scored_absolute_flag
     */
    private Integer scoredAbsoluteFlag;

    /**
     * 特价商品获取积分标识(1:开启; 2:关闭)
     * 表字段 : scored_rule.scored_special_flag
     */
    private Integer scoredSpecialFlag;

    /**
     * 议价商品获取积分标识(1:开启; 2:关闭)
     * 表字段 : scored_rule.scored_bargain_flag
     */
    private Integer scoredBargainFlag;

    /**
     * 赠品获取积分标识(1:开启; 2:关闭)
     * 表字段 : scored_rule.scored_gift_flag
     */
    private Integer scoredGiftFlag;

    /**
     * 折扣商品积分标识(1:开启; 2:关闭)(优先级最高)
     * 表字段 : scored_rule.scored_discount_flag
     */
    private Integer scoredDiscountFlag;

    /**
     * 折扣商品积分限制方式(1:按商品折扣率; 2:按商品的毛利率)
     * 表字段 : scored_rule.scored_discount_way
     */
    private Integer scoredDiscountWay;

    /**
     * 折扣商品积分限制值(单位100%)
     * 表字段 : scored_rule.scored_discount_value
     */
    private Integer scoredDiscountValue;

    /**
     * 会员生日当天积分倍数(单位100%, 小于等于100不开启 )
     * 表字段 : scored_rule.birthday_multiple
     */
    private Integer birthdayMultiple;

    /**
     * 会员出生月当月积分倍数(单位100%, 小于等于100不开启)
     * 表字段 : scored_rule.birth_month_multiple
     */
    private Integer birthMonthMultiple;

    /**
     * 每月几日(1~31)
     * 表字段 : scored_rule.monthly_day
     */
    private Integer monthlyDay;

    /**
     * 每月几日积分倍数(单位100%, 小于等于100不开启)
     * 表字段 : scored_rule.monthly_day_multiple
     */
    private Integer monthlyDayMultiple;

    /**
     * 每周几(0~7)(0:不开启)
     * 表字段 : scored_rule.weekly_day
     */
    private Integer weeklyDay;

    /**
     * 每周几积分倍数(单位100%, 小于等于100不开启)
     * 表字段 : scored_rule.weekly_day_multiple
     */
    private Integer weeklyDayMultiple;

    /**
     * 父卡奖励积分倍数(0:不开启)(单位100%)
     * 表字段 : scored_rule.parent_reward_multiple
     */
    private Integer parentRewardMultiple;

    /**
     * 积分抵扣比例(n:1)
     * 表字段 : scored_rule.deduction_rate
     */
    private Integer deductionRate;

    /**
     * 积分抵扣规则,存json字符串，eg:[{"scored":10,"money":1},{"scored":20,"money":2.2}]
     * 表字段 : scored_rule.scored_deduction_rule
     */
    private String scoredDeductionRule;

    /**
     * 积分转储时最小保留值
     * 表字段 : scored_rule.dump_bottom_value
     */
    private Integer dumpBottomValue;

    /**
     * 积分付款限制(积分至少要超过该值才能使用积分付款, 0为无限制)
     * 表字段 : scored_rule.pay_limit_value
     */
    private Integer payLimitValue;

    /**
     * 单笔最低消费金额(订单金额要超过该值才能使用积分付款)(单位:分)
     * 表字段 : scored_rule.low_pay_amount
     */
    private Integer lowPayAmount;

    /**
     * 单笔最高抵扣金额(同一笔订单中使用积分抵扣的金额不能超出)(单位分)
     * 表字段 : scored_rule.max_deduction_amount
     */
    private Integer maxDeductionAmount;

    /**
     * 每天最高抵扣金额(一天内能使用积分抵扣的最大付款金额)(单位:分)
     * 表字段 : scored_rule.max_deduction_day_amount
     */
    private Integer maxDeductionDayAmount;

    /**
     * 会员状态(1:启用; 2:禁用)
     * 表字段 : scored_rule.status
     */
    private Integer status;

    /**
     * 创建时间
     * 表字段 : scored_rule.created_time
     */
    private Date createdTime;

    /**
     * 创建人
     * 表字段 : scored_rule.created_by
     */
    private String createdBy;

    /**
     * 更新时间
     * 表字段 : scored_rule.updated_time
     */
    private Date updatedTime;

    /**
     * 更新人
     * 表字段 : scored_rule.updated_by
     */
    private String updatedBy;

    /**
     * 备注
     * 表字段 : scored_rule.remark
     */
    private String remark;

    /**
     * 删除标识(1:在线; 2:删除)
     * 表字段 : scored_rule.deleted
     */
    private Integer deleted;

    private static final long serialVersionUID = 1L;

    public ScoredRule(Long id, Long snapId, Long merchantId, Long levelId, String levelNo, BigDecimal registerScored, Integer scoredPlan, Integer scoredPlanAmount, Integer scoredPlanValue, String scoredPlanCustomValue, Integer scoredAbsoluteFlag, Integer scoredSpecialFlag, Integer scoredBargainFlag, Integer scoredGiftFlag, Integer scoredDiscountFlag, Integer scoredDiscountWay, Integer scoredDiscountValue, Integer birthdayMultiple, Integer birthMonthMultiple, Integer monthlyDay, Integer monthlyDayMultiple, Integer weeklyDay, Integer weeklyDayMultiple, Integer parentRewardMultiple, Integer deductionRate, String scoredDeductionRule, Integer dumpBottomValue, Integer payLimitValue, Integer lowPayAmount, Integer maxDeductionAmount, Integer maxDeductionDayAmount, Integer status, Date createdTime, String createdBy, Date updatedTime, String updatedBy, String remark, Integer deleted) {
        this.id = id;
        this.snapId = snapId;
        this.merchantId = merchantId;
        this.levelId = levelId;
        this.levelNo = levelNo;
        this.registerScored = registerScored;
        this.scoredPlan = scoredPlan;
        this.scoredPlanAmount = scoredPlanAmount;
        this.scoredPlanValue = scoredPlanValue;
        this.scoredPlanCustomValue = scoredPlanCustomValue;
        this.scoredAbsoluteFlag = scoredAbsoluteFlag;
        this.scoredSpecialFlag = scoredSpecialFlag;
        this.scoredBargainFlag = scoredBargainFlag;
        this.scoredGiftFlag = scoredGiftFlag;
        this.scoredDiscountFlag = scoredDiscountFlag;
        this.scoredDiscountWay = scoredDiscountWay;
        this.scoredDiscountValue = scoredDiscountValue;
        this.birthdayMultiple = birthdayMultiple;
        this.birthMonthMultiple = birthMonthMultiple;
        this.monthlyDay = monthlyDay;
        this.monthlyDayMultiple = monthlyDayMultiple;
        this.weeklyDay = weeklyDay;
        this.weeklyDayMultiple = weeklyDayMultiple;
        this.parentRewardMultiple = parentRewardMultiple;
        this.deductionRate = deductionRate;
        this.scoredDeductionRule = scoredDeductionRule;
        this.dumpBottomValue = dumpBottomValue;
        this.payLimitValue = payLimitValue;
        this.lowPayAmount = lowPayAmount;
        this.maxDeductionAmount = maxDeductionAmount;
        this.maxDeductionDayAmount = maxDeductionDayAmount;
        this.status = status;
        this.createdTime = createdTime;
        this.createdBy = createdBy;
        this.updatedTime = updatedTime;
        this.updatedBy = updatedBy;
        this.remark = remark;
        this.deleted = deleted;
    }

    public ScoredRule() {
        super();
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getSnapId() {
        return snapId;
    }

    public void setSnapId(Long snapId) {
        this.snapId = snapId;
    }

    public Long getMerchantId() {
        return merchantId;
    }

    public void setMerchantId(Long merchantId) {
        this.merchantId = merchantId;
    }

    public Long getLevelId() {
        return levelId;
    }

    public void setLevelId(Long levelId) {
        this.levelId = levelId;
    }

    public String getLevelNo() {
        return levelNo;
    }

    public void setLevelNo(String levelNo) {
        this.levelNo = levelNo == null ? null : levelNo.trim();
    }

    public BigDecimal getRegisterScored() {
        return registerScored;
    }

    public void setRegisterScored(BigDecimal registerScored) {
        this.registerScored = registerScored;
    }

    public Integer getScoredPlan() {
        return scoredPlan;
    }

    public void setScoredPlan(Integer scoredPlan) {
        this.scoredPlan = scoredPlan;
    }

    public Integer getScoredPlanAmount() {
        return scoredPlanAmount;
    }

    public void setScoredPlanAmount(Integer scoredPlanAmount) {
        this.scoredPlanAmount = scoredPlanAmount;
    }

    public Integer getScoredPlanValue() {
        return scoredPlanValue;
    }

    public void setScoredPlanValue(Integer scoredPlanValue) {
        this.scoredPlanValue = scoredPlanValue;
    }

    public String getScoredPlanCustomValue() {
        return scoredPlanCustomValue;
    }

    public void setScoredPlanCustomValue(String scoredPlanCustomValue) {
        this.scoredPlanCustomValue = scoredPlanCustomValue == null ? null : scoredPlanCustomValue.trim();
    }

    public Integer getScoredAbsoluteFlag() {
        return scoredAbsoluteFlag;
    }

    public void setScoredAbsoluteFlag(Integer scoredAbsoluteFlag) {
        this.scoredAbsoluteFlag = scoredAbsoluteFlag;
    }

    public Integer getScoredSpecialFlag() {
        return scoredSpecialFlag;
    }

    public void setScoredSpecialFlag(Integer scoredSpecialFlag) {
        this.scoredSpecialFlag = scoredSpecialFlag;
    }

    public Integer getScoredBargainFlag() {
        return scoredBargainFlag;
    }

    public void setScoredBargainFlag(Integer scoredBargainFlag) {
        this.scoredBargainFlag = scoredBargainFlag;
    }

    public Integer getScoredGiftFlag() {
        return scoredGiftFlag;
    }

    public void setScoredGiftFlag(Integer scoredGiftFlag) {
        this.scoredGiftFlag = scoredGiftFlag;
    }

    public Integer getScoredDiscountFlag() {
        return scoredDiscountFlag;
    }

    public void setScoredDiscountFlag(Integer scoredDiscountFlag) {
        this.scoredDiscountFlag = scoredDiscountFlag;
    }

    public Integer getScoredDiscountWay() {
        return scoredDiscountWay;
    }

    public void setScoredDiscountWay(Integer scoredDiscountWay) {
        this.scoredDiscountWay = scoredDiscountWay;
    }

    public Integer getScoredDiscountValue() {
        return scoredDiscountValue;
    }

    public void setScoredDiscountValue(Integer scoredDiscountValue) {
        this.scoredDiscountValue = scoredDiscountValue;
    }

    public Integer getBirthdayMultiple() {
        return birthdayMultiple;
    }

    public void setBirthdayMultiple(Integer birthdayMultiple) {
        this.birthdayMultiple = birthdayMultiple;
    }

    public Integer getBirthMonthMultiple() {
        return birthMonthMultiple;
    }

    public void setBirthMonthMultiple(Integer birthMonthMultiple) {
        this.birthMonthMultiple = birthMonthMultiple;
    }

    public Integer getMonthlyDay() {
        return monthlyDay;
    }

    public void setMonthlyDay(Integer monthlyDay) {
        this.monthlyDay = monthlyDay;
    }

    public Integer getMonthlyDayMultiple() {
        return monthlyDayMultiple;
    }

    public void setMonthlyDayMultiple(Integer monthlyDayMultiple) {
        this.monthlyDayMultiple = monthlyDayMultiple;
    }

    public Integer getWeeklyDay() {
        return weeklyDay;
    }

    public void setWeeklyDay(Integer weeklyDay) {
        this.weeklyDay = weeklyDay;
    }

    public Integer getWeeklyDayMultiple() {
        return weeklyDayMultiple;
    }

    public void setWeeklyDayMultiple(Integer weeklyDayMultiple) {
        this.weeklyDayMultiple = weeklyDayMultiple;
    }

    public Integer getParentRewardMultiple() {
        return parentRewardMultiple;
    }

    public void setParentRewardMultiple(Integer parentRewardMultiple) {
        this.parentRewardMultiple = parentRewardMultiple;
    }

    public Integer getDeductionRate() {
        return deductionRate;
    }

    public void setDeductionRate(Integer deductionRate) {
        this.deductionRate = deductionRate;
    }

    public String getScoredDeductionRule() {
        return scoredDeductionRule;
    }

    public void setScoredDeductionRule(String scoredDeductionRule) {
        this.scoredDeductionRule = scoredDeductionRule == null ? null : scoredDeductionRule.trim();
    }

    public Integer getDumpBottomValue() {
        return dumpBottomValue;
    }

    public void setDumpBottomValue(Integer dumpBottomValue) {
        this.dumpBottomValue = dumpBottomValue;
    }

    public Integer getPayLimitValue() {
        return payLimitValue;
    }

    public void setPayLimitValue(Integer payLimitValue) {
        this.payLimitValue = payLimitValue;
    }

    public Integer getLowPayAmount() {
        return lowPayAmount;
    }

    public void setLowPayAmount(Integer lowPayAmount) {
        this.lowPayAmount = lowPayAmount;
    }

    public Integer getMaxDeductionAmount() {
        return maxDeductionAmount;
    }

    public void setMaxDeductionAmount(Integer maxDeductionAmount) {
        this.maxDeductionAmount = maxDeductionAmount;
    }

    public Integer getMaxDeductionDayAmount() {
        return maxDeductionDayAmount;
    }

    public void setMaxDeductionDayAmount(Integer maxDeductionDayAmount) {
        this.maxDeductionDayAmount = maxDeductionDayAmount;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Date getCreatedTime() {
        return createdTime;
    }

    public void setCreatedTime(Date createdTime) {
        this.createdTime = createdTime;
    }

    public String getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(String createdBy) {
        this.createdBy = createdBy == null ? null : createdBy.trim();
    }

    public Date getUpdatedTime() {
        return updatedTime;
    }

    public void setUpdatedTime(Date updatedTime) {
        this.updatedTime = updatedTime;
    }

    public String getUpdatedBy() {
        return updatedBy;
    }

    public void setUpdatedBy(String updatedBy) {
        this.updatedBy = updatedBy == null ? null : updatedBy.trim();
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }

    public Integer getDeleted() {
        return deleted;
    }

    public void setDeleted(Integer deleted) {
        this.deleted = deleted;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", snapId=").append(snapId);
        sb.append(", merchantId=").append(merchantId);
        sb.append(", levelId=").append(levelId);
        sb.append(", levelNo=").append(levelNo);
        sb.append(", registerScored=").append(registerScored);
        sb.append(", scoredPlan=").append(scoredPlan);
        sb.append(", scoredPlanAmount=").append(scoredPlanAmount);
        sb.append(", scoredPlanValue=").append(scoredPlanValue);
        sb.append(", scoredPlanCustomValue=").append(scoredPlanCustomValue);
        sb.append(", scoredAbsoluteFlag=").append(scoredAbsoluteFlag);
        sb.append(", scoredSpecialFlag=").append(scoredSpecialFlag);
        sb.append(", scoredBargainFlag=").append(scoredBargainFlag);
        sb.append(", scoredGiftFlag=").append(scoredGiftFlag);
        sb.append(", scoredDiscountFlag=").append(scoredDiscountFlag);
        sb.append(", scoredDiscountWay=").append(scoredDiscountWay);
        sb.append(", scoredDiscountValue=").append(scoredDiscountValue);
        sb.append(", birthdayMultiple=").append(birthdayMultiple);
        sb.append(", birthMonthMultiple=").append(birthMonthMultiple);
        sb.append(", monthlyDay=").append(monthlyDay);
        sb.append(", monthlyDayMultiple=").append(monthlyDayMultiple);
        sb.append(", weeklyDay=").append(weeklyDay);
        sb.append(", weeklyDayMultiple=").append(weeklyDayMultiple);
        sb.append(", parentRewardMultiple=").append(parentRewardMultiple);
        sb.append(", deductionRate=").append(deductionRate);
        sb.append(", scoredDeductionRule=").append(scoredDeductionRule);
        sb.append(", dumpBottomValue=").append(dumpBottomValue);
        sb.append(", payLimitValue=").append(payLimitValue);
        sb.append(", lowPayAmount=").append(lowPayAmount);
        sb.append(", maxDeductionAmount=").append(maxDeductionAmount);
        sb.append(", maxDeductionDayAmount=").append(maxDeductionDayAmount);
        sb.append(", status=").append(status);
        sb.append(", createdTime=").append(createdTime);
        sb.append(", createdBy=").append(createdBy);
        sb.append(", updatedTime=").append(updatedTime);
        sb.append(", updatedBy=").append(updatedBy);
        sb.append(", remark=").append(remark);
        sb.append(", deleted=").append(deleted);
        sb.append("]");
        return sb.toString();
    }
}