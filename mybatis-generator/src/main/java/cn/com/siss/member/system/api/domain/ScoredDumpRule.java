package cn.com.siss.member.system.api.domain;

import java.io.Serializable;
import java.util.Date;

public class ScoredDumpRule implements Serializable {
    /**
     * 主键ID
     * 表字段 : scored_dump_rule.id
     */
    private Long id;

    /**
     * 商户编号
     * 表字段 : scored_dump_rule.merchant_id
     */
    private Long merchantId;

    /**
     * 倍数积分标识(积分的整数倍兑换)(1:开启; 2:关闭)
     * 表字段 : scored_dump_rule.scored_dump_multiple
     */
    private Integer scoredDumpMultiple;

    /**
     * 积分
     * 表字段 : scored_dump_rule.score
     */
    private Integer score;

    /**
     * 返利值
     * 表字段 : scored_dump_rule.rebate_value
     */
    private Integer rebateValue;

    /**
     * 创建时间
     * 表字段 : scored_dump_rule.created_time
     */
    private Date createdTime;

    /**
     * 创建人
     * 表字段 : scored_dump_rule.created_by
     */
    private String createdBy;

    /**
     * 更新时间
     * 表字段 : scored_dump_rule.updated_time
     */
    private Date updatedTime;

    /**
     * 更新人
     * 表字段 : scored_dump_rule.updated_by
     */
    private String updatedBy;

    /**
     * 备注
     * 表字段 : scored_dump_rule.remark
     */
    private String remark;

    /**
     * 删除标识(1:在线; 2:删除)
     * 表字段 : scored_dump_rule.deleted
     */
    private Integer deleted;

    private static final long serialVersionUID = 1L;

    public ScoredDumpRule(Long id, Long merchantId, Integer scoredDumpMultiple, Integer score, Integer rebateValue, Date createdTime, String createdBy, Date updatedTime, String updatedBy, String remark, Integer deleted) {
        this.id = id;
        this.merchantId = merchantId;
        this.scoredDumpMultiple = scoredDumpMultiple;
        this.score = score;
        this.rebateValue = rebateValue;
        this.createdTime = createdTime;
        this.createdBy = createdBy;
        this.updatedTime = updatedTime;
        this.updatedBy = updatedBy;
        this.remark = remark;
        this.deleted = deleted;
    }

    public ScoredDumpRule() {
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

    public Integer getScoredDumpMultiple() {
        return scoredDumpMultiple;
    }

    public void setScoredDumpMultiple(Integer scoredDumpMultiple) {
        this.scoredDumpMultiple = scoredDumpMultiple;
    }

    public Integer getScore() {
        return score;
    }

    public void setScore(Integer score) {
        this.score = score;
    }

    public Integer getRebateValue() {
        return rebateValue;
    }

    public void setRebateValue(Integer rebateValue) {
        this.rebateValue = rebateValue;
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
        sb.append(", scoredDumpMultiple=").append(scoredDumpMultiple);
        sb.append(", score=").append(score);
        sb.append(", rebateValue=").append(rebateValue);
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