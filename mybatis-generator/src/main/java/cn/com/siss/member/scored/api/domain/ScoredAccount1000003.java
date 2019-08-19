package cn.com.siss.member.scored.api.domain;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

public class ScoredAccount1000003 implements Serializable {
    /**
     * 积分账户ID
     * 表字段 : scored_account_1000003.id
     */
    private Long id;

    /**
     * 会员ID
     * 表字段 : scored_account_1000003.member_id
     */
    private Long memberId;

    /**
     * 会员卡(编)号[积分账号]
     * 表字段 : scored_account_1000003.member_no
     */
    private String memberNo;

    /**
     * 商户编号
     * 表字段 : scored_account_1000003.merchant_id
     */
    private Long merchantId;

    /**
     * 所属门店ID
     * 表字段 : scored_account_1000003.branch_id
     */
    private Long branchId;

    /**
     * 所属门店编号
     * 表字段 : scored_account_1000003.branch_no
     */
    private String branchNo;

    /**
     * 所属门店名称
     * 表字段 : scored_account_1000003.branch_name
     */
    private String branchName;

    /**
     * 会员卡限制消费次数,设置后每次消费减一,到达0不可使用
     * 表字段 : scored_account_1000003.limit_quantity
     */
    private Integer limitQuantity;

    /**
     * 累计积分
     * 表字段 : scored_account_1000003.accrued_score
     */
    private BigDecimal accruedScore;

    /**
     * 已用积分
     * 表字段 : scored_account_1000003.have_used_score
     */
    private BigDecimal haveUsedScore;

    /**
     * 剩余积分
     * 表字段 : scored_account_1000003.surplus_score
     */
    private BigDecimal surplusScore;

    /**
     * 创建时间
     * 表字段 : scored_account_1000003.created_time
     */
    private Date createdTime;

    /**
     * 创建人
     * 表字段 : scored_account_1000003.created_by
     */
    private String createdBy;

    /**
     * 更新时间
     * 表字段 : scored_account_1000003.updated_time
     */
    private Date updatedTime;

    /**
     * 更新人
     * 表字段 : scored_account_1000003.updated_by
     */
    private String updatedBy;

    /**
     * 备注
     * 表字段 : scored_account_1000003.remark
     */
    private String remark;

    /**
     * 删除标识(1:在线; 2:删除)
     * 表字段 : scored_account_1000003.deleted
     */
    private Integer deleted;

    private static final long serialVersionUID = 1L;

    public ScoredAccount1000003(Long id, Long memberId, String memberNo, Long merchantId, Long branchId, String branchNo, String branchName, Integer limitQuantity, BigDecimal accruedScore, BigDecimal haveUsedScore, BigDecimal surplusScore, Date createdTime, String createdBy, Date updatedTime, String updatedBy, String remark, Integer deleted) {
        this.id = id;
        this.memberId = memberId;
        this.memberNo = memberNo;
        this.merchantId = merchantId;
        this.branchId = branchId;
        this.branchNo = branchNo;
        this.branchName = branchName;
        this.limitQuantity = limitQuantity;
        this.accruedScore = accruedScore;
        this.haveUsedScore = haveUsedScore;
        this.surplusScore = surplusScore;
        this.createdTime = createdTime;
        this.createdBy = createdBy;
        this.updatedTime = updatedTime;
        this.updatedBy = updatedBy;
        this.remark = remark;
        this.deleted = deleted;
    }

    public ScoredAccount1000003() {
        super();
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
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

    public Long getMerchantId() {
        return merchantId;
    }

    public void setMerchantId(Long merchantId) {
        this.merchantId = merchantId;
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

    public Integer getLimitQuantity() {
        return limitQuantity;
    }

    public void setLimitQuantity(Integer limitQuantity) {
        this.limitQuantity = limitQuantity;
    }

    public BigDecimal getAccruedScore() {
        return accruedScore;
    }

    public void setAccruedScore(BigDecimal accruedScore) {
        this.accruedScore = accruedScore;
    }

    public BigDecimal getHaveUsedScore() {
        return haveUsedScore;
    }

    public void setHaveUsedScore(BigDecimal haveUsedScore) {
        this.haveUsedScore = haveUsedScore;
    }

    public BigDecimal getSurplusScore() {
        return surplusScore;
    }

    public void setSurplusScore(BigDecimal surplusScore) {
        this.surplusScore = surplusScore;
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
        sb.append(", memberId=").append(memberId);
        sb.append(", memberNo=").append(memberNo);
        sb.append(", merchantId=").append(merchantId);
        sb.append(", branchId=").append(branchId);
        sb.append(", branchNo=").append(branchNo);
        sb.append(", branchName=").append(branchName);
        sb.append(", limitQuantity=").append(limitQuantity);
        sb.append(", accruedScore=").append(accruedScore);
        sb.append(", haveUsedScore=").append(haveUsedScore);
        sb.append(", surplusScore=").append(surplusScore);
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