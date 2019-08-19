package cn.com.siss.member.scored.api.domain;

import java.io.Serializable;
import java.util.Date;

public class ScoredStageRule implements Serializable {
    /**
     * 规则id
     * 表字段 : scored_stage_rule.id
     */
    private Long id;

    /**
     * 商户编号
     * 表字段 : scored_stage_rule.merchant_id
     */
    private Long merchantId;

    /**
     * 规则编码
     * 表字段 : scored_stage_rule.stage_rule_no
     */
    private String stageRuleNo;

    /**
     * 作用方式(1:所有商品; 2:指定类别; 3:指定品牌; 4:指定商品)
     * 表字段 : scored_stage_rule.target_way
     */
    private Integer targetWay;

    /**
     * 作用的会员类别ID
     * 表字段 : scored_stage_rule.member_level_id
     */
    private Long memberLevelId;

    /**
     * 作用的会员类别编号
     * 表字段 : scored_stage_rule.member_level_no
     */
    private String memberLevelNo;

    /**
     * 作用的会员类别名称
     * 表字段 : scored_stage_rule.member_level_name
     */
    private String memberLevelName;

    /**
     * 作用的门店编号, 多个以英文逗号隔开
     * 表字段 : scored_stage_rule.branch_nos
     */
    private String branchNos;

    /**
     * 作用的门店名称, 多个以英文逗号隔开
     * 表字段 : scored_stage_rule.branch_names
     */
    private String branchNames;

    /**
     * 有效开始时间
     * 表字段 : scored_stage_rule.start_time
     */
    private Date startTime;

    /**
     * 有效结束时间
     * 表字段 : scored_stage_rule.end_time
     */
    private Date endTime;

    /**
     * 审核状态(1:未审核; 2:已审核; 3:已终止)
     * 表字段 : scored_stage_rule.audit_status
     */
    private Integer auditStatus;

    /**
     * 备注
     * 表字段 : scored_stage_rule.remark
     */
    private String remark;

    /**
     * 创建时间
     * 表字段 : scored_stage_rule.create_time
     */
    private Date createTime;

    /**
     * 创建人
     * 表字段 : scored_stage_rule.created_by
     */
    private String createdBy;

    /**
     * 修改时间
     * 表字段 : scored_stage_rule.updated_time
     */
    private Date updatedTime;

    /**
     * 修改人
     * 表字段 : scored_stage_rule.updated_by
     */
    private String updatedBy;

    /**
     * 删除标志
     * 表字段 : scored_stage_rule.deleted
     */
    private Integer deleted;

    private static final long serialVersionUID = 1L;

    public ScoredStageRule(Long id, Long merchantId, String stageRuleNo, Integer targetWay, Long memberLevelId, String memberLevelNo, String memberLevelName, String branchNos, String branchNames, Date startTime, Date endTime, Integer auditStatus, String remark, Date createTime, String createdBy, Date updatedTime, String updatedBy, Integer deleted) {
        this.id = id;
        this.merchantId = merchantId;
        this.stageRuleNo = stageRuleNo;
        this.targetWay = targetWay;
        this.memberLevelId = memberLevelId;
        this.memberLevelNo = memberLevelNo;
        this.memberLevelName = memberLevelName;
        this.branchNos = branchNos;
        this.branchNames = branchNames;
        this.startTime = startTime;
        this.endTime = endTime;
        this.auditStatus = auditStatus;
        this.remark = remark;
        this.createTime = createTime;
        this.createdBy = createdBy;
        this.updatedTime = updatedTime;
        this.updatedBy = updatedBy;
        this.deleted = deleted;
    }

    public ScoredStageRule() {
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

    public String getStageRuleNo() {
        return stageRuleNo;
    }

    public void setStageRuleNo(String stageRuleNo) {
        this.stageRuleNo = stageRuleNo == null ? null : stageRuleNo.trim();
    }

    public Integer getTargetWay() {
        return targetWay;
    }

    public void setTargetWay(Integer targetWay) {
        this.targetWay = targetWay;
    }

    public Long getMemberLevelId() {
        return memberLevelId;
    }

    public void setMemberLevelId(Long memberLevelId) {
        this.memberLevelId = memberLevelId;
    }

    public String getMemberLevelNo() {
        return memberLevelNo;
    }

    public void setMemberLevelNo(String memberLevelNo) {
        this.memberLevelNo = memberLevelNo == null ? null : memberLevelNo.trim();
    }

    public String getMemberLevelName() {
        return memberLevelName;
    }

    public void setMemberLevelName(String memberLevelName) {
        this.memberLevelName = memberLevelName == null ? null : memberLevelName.trim();
    }

    public String getBranchNos() {
        return branchNos;
    }

    public void setBranchNos(String branchNos) {
        this.branchNos = branchNos == null ? null : branchNos.trim();
    }

    public String getBranchNames() {
        return branchNames;
    }

    public void setBranchNames(String branchNames) {
        this.branchNames = branchNames == null ? null : branchNames.trim();
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

    public Integer getAuditStatus() {
        return auditStatus;
    }

    public void setAuditStatus(Integer auditStatus) {
        this.auditStatus = auditStatus;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
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
        sb.append(", stageRuleNo=").append(stageRuleNo);
        sb.append(", targetWay=").append(targetWay);
        sb.append(", memberLevelId=").append(memberLevelId);
        sb.append(", memberLevelNo=").append(memberLevelNo);
        sb.append(", memberLevelName=").append(memberLevelName);
        sb.append(", branchNos=").append(branchNos);
        sb.append(", branchNames=").append(branchNames);
        sb.append(", startTime=").append(startTime);
        sb.append(", endTime=").append(endTime);
        sb.append(", auditStatus=").append(auditStatus);
        sb.append(", remark=").append(remark);
        sb.append(", createTime=").append(createTime);
        sb.append(", createdBy=").append(createdBy);
        sb.append(", updatedTime=").append(updatedTime);
        sb.append(", updatedBy=").append(updatedBy);
        sb.append(", deleted=").append(deleted);
        sb.append("]");
        return sb.toString();
    }
}