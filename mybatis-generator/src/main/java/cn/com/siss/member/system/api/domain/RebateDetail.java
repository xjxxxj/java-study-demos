package cn.com.siss.member.system.api.domain;

import java.io.Serializable;
import java.util.Date;

public class RebateDetail implements Serializable {
    /**
     * 内容详情ID
     * 表字段 : rebate_detail.id
     */
    private Long id;

    /**
     * 商户编号
     * 表字段 : rebate_detail.merchant_id
     */
    private Long merchantId;

    /**
     * 返利规则ID
     * 表字段 : rebate_detail.rebate_rule_id
     */
    private Long rebateRuleId;

    /**
     * 返利方式(1:金额; 2:积分; 3:礼券; 4:商品; 5:计次项目)
     * 表字段 : rebate_detail.rebate_way
     */
    private Integer rebateWay;

    /**
     * 返利期数
     * 表字段 : rebate_detail.rebate_period
     */
    private Integer rebatePeriod;

    /**
     * 返利数值(当rebate_way=1或3 并且rebate_value_type=1时, 单位:分; 当rebate_value_type=2时, 单位:100%; 当rebate_way=3并且rebate_value_type=3时,领用指定物料数量)
     * 表字段 : rebate_detail.rebate_value
     */
    private Integer rebateValue;

    /**
     * 返利数值类型[1:固定值(代金券); 2:比率(折扣); 3:商品券(领用券)]
     * 表字段 : rebate_detail.rebate_value_type
     */
    private Integer rebateValueType;

    /**
     * 返利项目(物料)ID
     * 表字段 : rebate_detail.rebate_item_id
     */
    private String rebateItemId;

    /**
     * 返利项目(物料)编号(当rebate_way=1时,amount; 当rebate_way=2时,score)
     * 表字段 : rebate_detail.rebate_item_no
     */
    private String rebateItemNo;

    /**
     * 返利项目(物料)名称(当rebate_way=1时,金额; 当rebate_way=2时,积分)
     * 表字段 : rebate_detail.rebate_item_name
     */
    private String rebateItemName;

    /**
     * 有效期方式(1:固定日期; 2:顺延日期; 3:不限时间)
     * 表字段 : rebate_detail.effective_way
     */
    private Integer effectiveWay;

    /**
     * 有效期开始时间
     * 表字段 : rebate_detail.effective_start_date
     */
    private Date effectiveStartDate;

    /**
     * 有效期天数
     * 表字段 : rebate_detail.effective_days
     */
    private Integer effectiveDays;

    /**
     * 状态(1:正常; 2:下线)
     * 表字段 : rebate_detail.status
     */
    private Integer status;

    /**
     * 创建时间
     * 表字段 : rebate_detail.created_time
     */
    private Date createdTime;

    /**
     * 创建人
     * 表字段 : rebate_detail.created_by
     */
    private String createdBy;

    /**
     * 更新时间
     * 表字段 : rebate_detail.updated_time
     */
    private Date updatedTime;

    /**
     * 更新人
     * 表字段 : rebate_detail.updated_by
     */
    private String updatedBy;

    /**
     * 备注
     * 表字段 : rebate_detail.remark
     */
    private String remark;

    /**
     * 删除标识(1:在线; 2:删除)
     * 表字段 : rebate_detail.deleted
     */
    private Integer deleted;

    private static final long serialVersionUID = 1L;

    public RebateDetail(Long id, Long merchantId, Long rebateRuleId, Integer rebateWay, Integer rebatePeriod, Integer rebateValue, Integer rebateValueType, String rebateItemId, String rebateItemNo, String rebateItemName, Integer effectiveWay, Date effectiveStartDate, Integer effectiveDays, Integer status, Date createdTime, String createdBy, Date updatedTime, String updatedBy, String remark, Integer deleted) {
        this.id = id;
        this.merchantId = merchantId;
        this.rebateRuleId = rebateRuleId;
        this.rebateWay = rebateWay;
        this.rebatePeriod = rebatePeriod;
        this.rebateValue = rebateValue;
        this.rebateValueType = rebateValueType;
        this.rebateItemId = rebateItemId;
        this.rebateItemNo = rebateItemNo;
        this.rebateItemName = rebateItemName;
        this.effectiveWay = effectiveWay;
        this.effectiveStartDate = effectiveStartDate;
        this.effectiveDays = effectiveDays;
        this.status = status;
        this.createdTime = createdTime;
        this.createdBy = createdBy;
        this.updatedTime = updatedTime;
        this.updatedBy = updatedBy;
        this.remark = remark;
        this.deleted = deleted;
    }

    public RebateDetail() {
        super();
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getMerchantId() {
        return merchantId;
    }

    public void setMerchantId(Long merchantId) {
        this.merchantId = merchantId;
    }

    public Long getRebateRuleId() {
        return rebateRuleId;
    }

    public void setRebateRuleId(Long rebateRuleId) {
        this.rebateRuleId = rebateRuleId;
    }

    public Integer getRebateWay() {
        return rebateWay;
    }

    public void setRebateWay(Integer rebateWay) {
        this.rebateWay = rebateWay;
    }

    public Integer getRebatePeriod() {
        return rebatePeriod;
    }

    public void setRebatePeriod(Integer rebatePeriod) {
        this.rebatePeriod = rebatePeriod;
    }

    public Integer getRebateValue() {
        return rebateValue;
    }

    public void setRebateValue(Integer rebateValue) {
        this.rebateValue = rebateValue;
    }

    public Integer getRebateValueType() {
        return rebateValueType;
    }

    public void setRebateValueType(Integer rebateValueType) {
        this.rebateValueType = rebateValueType;
    }

    public String getRebateItemId() {
        return rebateItemId;
    }

    public void setRebateItemId(String rebateItemId) {
        this.rebateItemId = rebateItemId == null ? null : rebateItemId.trim();
    }

    public String getRebateItemNo() {
        return rebateItemNo;
    }

    public void setRebateItemNo(String rebateItemNo) {
        this.rebateItemNo = rebateItemNo == null ? null : rebateItemNo.trim();
    }

    public String getRebateItemName() {
        return rebateItemName;
    }

    public void setRebateItemName(String rebateItemName) {
        this.rebateItemName = rebateItemName == null ? null : rebateItemName.trim();
    }

    public Integer getEffectiveWay() {
        return effectiveWay;
    }

    public void setEffectiveWay(Integer effectiveWay) {
        this.effectiveWay = effectiveWay;
    }

    public Date getEffectiveStartDate() {
        return effectiveStartDate;
    }

    public void setEffectiveStartDate(Date effectiveStartDate) {
        this.effectiveStartDate = effectiveStartDate;
    }

    public Integer getEffectiveDays() {
        return effectiveDays;
    }

    public void setEffectiveDays(Integer effectiveDays) {
        this.effectiveDays = effectiveDays;
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
        sb.append(", merchantId=").append(merchantId);
        sb.append(", rebateRuleId=").append(rebateRuleId);
        sb.append(", rebateWay=").append(rebateWay);
        sb.append(", rebatePeriod=").append(rebatePeriod);
        sb.append(", rebateValue=").append(rebateValue);
        sb.append(", rebateValueType=").append(rebateValueType);
        sb.append(", rebateItemId=").append(rebateItemId);
        sb.append(", rebateItemNo=").append(rebateItemNo);
        sb.append(", rebateItemName=").append(rebateItemName);
        sb.append(", effectiveWay=").append(effectiveWay);
        sb.append(", effectiveStartDate=").append(effectiveStartDate);
        sb.append(", effectiveDays=").append(effectiveDays);
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