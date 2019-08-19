package cn.com.siss.member.system.api.domain;

import java.io.Serializable;
import java.util.Date;

public class RebateRule implements Serializable {
    /**
     * 返利规则ID
     * 表字段 : rebate_rule.id
     */
    private Long id;

    /**
     * 商户编号
     * 表字段 : rebate_rule.merchant_id
     */
    private Long merchantId;

    /**
     * 最小充值金额(单位：分)
     * 表字段 : rebate_rule.min_recharge_amount
     */
    private Integer minRechargeAmount;

    /**
     * 适用会员等级编号, 多个以英文逗号隔开
     * 表字段 : rebate_rule.level_nos
     */
    private String levelNos;

    /**
     * 适用的门店编号, 多个以英文逗号隔开
     * 表字段 : rebate_rule.branch_nos
     */
    private String branchNos;

    /**
     * 充值优惠开始时间
     * 表字段 : rebate_rule.start_time
     */
    private Date startTime;

    /**
     * 充值优惠结束时间
     * 表字段 : rebate_rule.end_time
     */
    private Date endTime;

    /**
     * 创建时间
     * 表字段 : rebate_rule.created_time
     */
    private Date createdTime;

    /**
     * 创建人
     * 表字段 : rebate_rule.created_by
     */
    private String createdBy;

    /**
     * 更新时间
     * 表字段 : rebate_rule.updated_time
     */
    private Date updatedTime;

    /**
     * 更新人
     * 表字段 : rebate_rule.updated_by
     */
    private String updatedBy;

    /**
     * 备注
     * 表字段 : rebate_rule.remark
     */
    private String remark;

    /**
     * 删除标识(1:在线; 2:删除)
     * 表字段 : rebate_rule.deleted
     */
    private Integer deleted;

    private static final long serialVersionUID = 1L;

    public RebateRule(Long id, Long merchantId, Integer minRechargeAmount, String levelNos, String branchNos, Date startTime, Date endTime, Date createdTime, String createdBy, Date updatedTime, String updatedBy, String remark, Integer deleted) {
        this.id = id;
        this.merchantId = merchantId;
        this.minRechargeAmount = minRechargeAmount;
        this.levelNos = levelNos;
        this.branchNos = branchNos;
        this.startTime = startTime;
        this.endTime = endTime;
        this.createdTime = createdTime;
        this.createdBy = createdBy;
        this.updatedTime = updatedTime;
        this.updatedBy = updatedBy;
        this.remark = remark;
        this.deleted = deleted;
    }

    public RebateRule() {
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

    public Integer getMinRechargeAmount() {
        return minRechargeAmount;
    }

    public void setMinRechargeAmount(Integer minRechargeAmount) {
        this.minRechargeAmount = minRechargeAmount;
    }

    public String getLevelNos() {
        return levelNos;
    }

    public void setLevelNos(String levelNos) {
        this.levelNos = levelNos == null ? null : levelNos.trim();
    }

    public String getBranchNos() {
        return branchNos;
    }

    public void setBranchNos(String branchNos) {
        this.branchNos = branchNos == null ? null : branchNos.trim();
    }

    public Date getStartTime() {
        return startTime;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    public Date getEndTime() {
        return endTime;
    }

    public void setEndTime(Date endTime) {
        this.endTime = endTime;
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
        sb.append(", minRechargeAmount=").append(minRechargeAmount);
        sb.append(", levelNos=").append(levelNos);
        sb.append(", branchNos=").append(branchNos);
        sb.append(", startTime=").append(startTime);
        sb.append(", endTime=").append(endTime);
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