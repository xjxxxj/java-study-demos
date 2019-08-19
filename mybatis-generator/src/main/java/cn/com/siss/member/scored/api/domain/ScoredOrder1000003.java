package cn.com.siss.member.scored.api.domain;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

public class ScoredOrder1000003 implements Serializable {
    /**
     * 订单ID
     * 表字段 : scored_order_1000003.id
     */
    private Long id;

    /**
     * 商户编号
     * 表字段 : scored_order_1000003.merchant_id
     */
    private Long merchantId;

    /**
     * 会员ID
     * 表字段 : scored_order_1000003.member_id
     */
    private Long memberId;

    /**
     * 会员卡(编)号[积分账号]
     * 表字段 : scored_order_1000003.member_no
     */
    private String memberNo;

    /**
     * 会员类别(等级)ID
     * 表字段 : scored_order_1000003.level_id
     */
    private Long levelId;

    /**
     * 积分账户ID
     * 表字段 : scored_order_1000003.account_id
     */
    private Long accountId;

    /**
     * 储值规则ID
     * 表字段 : scored_order_1000003.rule_id
     */
    private Long ruleId;

    /**
     * 储值规则快照ID
     * 表字段 : scored_order_1000003.rule_snap_id
     */
    private Long ruleSnapId;

    /**
     * 业务门店ID[会员自己(定时任务)操作的,值为会员的所属门店]
     * 表字段 : scored_order_1000003.branch_id
     */
    private Long branchId;

    /**
     * 业务门店编号(同branch_id)
     * 表字段 : scored_order_1000003.branch_no
     */
    private String branchNo;

    /**
     * 业务门店名称
     * 表字段 : scored_order_1000003.branch_name
     */
    private String branchName;

    /**
     * 业务(操作)订单号
     * 表字段 : scored_order_1000003.operate_order_no
     */
    private String operateOrderNo;

    /**
     * 业务(操作)类型(1:增加积分; 2:抵扣积分; 3:转储兑换; 4:产品兑换; 99:过期)
     * 表字段 : scored_order_1000003.operate_type
     */
    private Integer operateType;

    /**
     * 业务(操作)积分
     * 表字段 : scored_order_1000003.scored
     */
    private BigDecimal scored;

    /**
     * 业务(操作)金额(单位:分)(冗余记录字段)
     * 表字段 : scored_order_1000003.amount
     */
    private Integer amount;

    /**
     * 业务(操作)员ID
     * 表字段 : scored_order_1000003.operate_id
     */
    private String operateId;

    /**
     * 业务操作时间
     * 表字段 : scored_order_1000003.operate_time
     */
    private Date operateTime;

    /**
     * 业务说明
     * 表字段 : scored_order_1000003.description
     */
    private String description;

    /**
     * 状态(1:未确认; 2:已确认; 3:已撤销)
     * 表字段 : scored_order_1000003.status
     */
    private Integer status;

    /**
     * 创建时间
     * 表字段 : scored_order_1000003.created_time
     */
    private Date createdTime;

    /**
     * 创建人
     * 表字段 : scored_order_1000003.created_by
     */
    private String createdBy;

    /**
     * 更新时间
     * 表字段 : scored_order_1000003.updated_time
     */
    private Date updatedTime;

    /**
     * 更新人
     * 表字段 : scored_order_1000003.updated_by
     */
    private String updatedBy;

    /**
     * 备注
     * 表字段 : scored_order_1000003.remark
     */
    private String remark;

    /**
     * 删除标识(1:在线; 2:删除)
     * 表字段 : scored_order_1000003.deleted
     */
    private Integer deleted;

    private static final long serialVersionUID = 1L;

    public ScoredOrder1000003(Long id, Long merchantId, Long memberId, String memberNo, Long levelId, Long accountId, Long ruleId, Long ruleSnapId, Long branchId, String branchNo, String branchName, String operateOrderNo, Integer operateType, BigDecimal scored, Integer amount, String operateId, Date operateTime, String description, Integer status, Date createdTime, String createdBy, Date updatedTime, String updatedBy, String remark, Integer deleted) {
        this.id = id;
        this.merchantId = merchantId;
        this.memberId = memberId;
        this.memberNo = memberNo;
        this.levelId = levelId;
        this.accountId = accountId;
        this.ruleId = ruleId;
        this.ruleSnapId = ruleSnapId;
        this.branchId = branchId;
        this.branchNo = branchNo;
        this.branchName = branchName;
        this.operateOrderNo = operateOrderNo;
        this.operateType = operateType;
        this.scored = scored;
        this.amount = amount;
        this.operateId = operateId;
        this.operateTime = operateTime;
        this.description = description;
        this.status = status;
        this.createdTime = createdTime;
        this.createdBy = createdBy;
        this.updatedTime = updatedTime;
        this.updatedBy = updatedBy;
        this.remark = remark;
        this.deleted = deleted;
    }

    public ScoredOrder1000003() {
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

    public Long getMemberId() {
        return memberId;
    }

    public void setMemberId(Long memberId) {
        this.memberId = memberId;
    }

    public String getMemberNo() {
        return memberNo;
    }

    public void setMemberNo(String memberNo) {
        this.memberNo = memberNo == null ? null : memberNo.trim();
    }

    public Long getLevelId() {
        return levelId;
    }

    public void setLevelId(Long levelId) {
        this.levelId = levelId;
    }

    public Long getAccountId() {
        return accountId;
    }

    public void setAccountId(Long accountId) {
        this.accountId = accountId;
    }

    public Long getRuleId() {
        return ruleId;
    }

    public void setRuleId(Long ruleId) {
        this.ruleId = ruleId;
    }

    public Long getRuleSnapId() {
        return ruleSnapId;
    }

    public void setRuleSnapId(Long ruleSnapId) {
        this.ruleSnapId = ruleSnapId;
    }

    public Long getBranchId() {
        return branchId;
    }

    public void setBranchId(Long branchId) {
        this.branchId = branchId;
    }

    public String getBranchNo() {
        return branchNo;
    }

    public void setBranchNo(String branchNo) {
        this.branchNo = branchNo == null ? null : branchNo.trim();
    }

    public String getBranchName() {
        return branchName;
    }

    public void setBranchName(String branchName) {
        this.branchName = branchName == null ? null : branchName.trim();
    }

    public String getOperateOrderNo() {
        return operateOrderNo;
    }

    public void setOperateOrderNo(String operateOrderNo) {
        this.operateOrderNo = operateOrderNo == null ? null : operateOrderNo.trim();
    }

    public Integer getOperateType() {
        return operateType;
    }

    public void setOperateType(Integer operateType) {
        this.operateType = operateType;
    }

    public BigDecimal getScored() {
        return scored;
    }

    public void setScored(BigDecimal scored) {
        this.scored = scored;
    }

    public Integer getAmount() {
        return amount;
    }

    public void setAmount(Integer amount) {
        this.amount = amount;
    }

    public String getOperateId() {
        return operateId;
    }

    public void setOperateId(String operateId) {
        this.operateId = operateId == null ? null : operateId.trim();
    }

    public Date getOperateTime() {
        return operateTime;
    }

    public void setOperateTime(Date operateTime) {
        this.operateTime = operateTime;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
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
        sb.append(", memberId=").append(memberId);
        sb.append(", memberNo=").append(memberNo);
        sb.append(", levelId=").append(levelId);
        sb.append(", accountId=").append(accountId);
        sb.append(", ruleId=").append(ruleId);
        sb.append(", ruleSnapId=").append(ruleSnapId);
        sb.append(", branchId=").append(branchId);
        sb.append(", branchNo=").append(branchNo);
        sb.append(", branchName=").append(branchName);
        sb.append(", operateOrderNo=").append(operateOrderNo);
        sb.append(", operateType=").append(operateType);
        sb.append(", scored=").append(scored);
        sb.append(", amount=").append(amount);
        sb.append(", operateId=").append(operateId);
        sb.append(", operateTime=").append(operateTime);
        sb.append(", description=").append(description);
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