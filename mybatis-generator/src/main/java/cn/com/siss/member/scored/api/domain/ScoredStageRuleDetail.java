package cn.com.siss.member.scored.api.domain;

import java.io.Serializable;
import java.util.Date;

public class ScoredStageRuleDetail implements Serializable {
    /**
     * 主键id
     * 表字段 : scored_stage_rule_detail.id
     */
    private Long id;

    /**
     * 商户编号
     * 表字段 : scored_stage_rule_detail.merchant_id
     */
    private Long merchantId;

    /**
     * 时段积分规则ID
     * 表字段 : scored_stage_rule_detail.stage_rule_id
     */
    private Long stageRuleId;

    /**
     * 商品类别/品牌/商品编号
     * 表字段 : scored_stage_rule_detail.item_no
     */
    private String itemNo;

    /**
     * 商品类别/品牌/商品id
     * 表字段 : scored_stage_rule_detail.item_id
     */
    private Long itemId;

    /**
     * 商品类别/品牌/商品名称
     * 表字段 : scored_stage_rule_detail.item_name
     */
    private String itemName;

    /**
     * 积分倍数，单位1/100，eg:120，表示1.2倍积分
     * 表字段 : scored_stage_rule_detail.multiple
     */
    private Integer multiple;

    /**
     * 修改时间
     * 表字段 : scored_stage_rule_detail.updated_time
     */
    private Date updatedTime;

    /**
     * 修改人
     * 表字段 : scored_stage_rule_detail.updated_by
     */
    private String updatedBy;

    /**
     * 删除标志
     * 表字段 : scored_stage_rule_detail.deleted
     */
    private Integer deleted;

    private static final long serialVersionUID = 1L;

    public ScoredStageRuleDetail(Long id, Long merchantId, Long stageRuleId, String itemNo, Long itemId, String itemName, Integer multiple, Date updatedTime, String updatedBy, Integer deleted) {
        this.id = id;
        this.merchantId = merchantId;
        this.stageRuleId = stageRuleId;
        this.itemNo = itemNo;
        this.itemId = itemId;
        this.itemName = itemName;
        this.multiple = multiple;
        this.updatedTime = updatedTime;
        this.updatedBy = updatedBy;
        this.deleted = deleted;
    }

    public ScoredStageRuleDetail() {
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

    public Long getStageRuleId() {
        return stageRuleId;
    }

    public void setStageRuleId(Long stageRuleId) {
        this.stageRuleId = stageRuleId;
    }

    public String getItemNo() {
        return itemNo;
    }

    public void setItemNo(String itemNo) {
        this.itemNo = itemNo == null ? null : itemNo.trim();
    }

    public Long getItemId() {
        return itemId;
    }

    public void setItemId(Long itemId) {
        this.itemId = itemId;
    }

    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName == null ? null : itemName.trim();
    }

    public Integer getMultiple() {
        return multiple;
    }

    public void setMultiple(Integer multiple) {
        this.multiple = multiple;
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
        sb.append(", stageRuleId=").append(stageRuleId);
        sb.append(", itemNo=").append(itemNo);
        sb.append(", itemId=").append(itemId);
        sb.append(", itemName=").append(itemName);
        sb.append(", multiple=").append(multiple);
        sb.append(", updatedTime=").append(updatedTime);
        sb.append(", updatedBy=").append(updatedBy);
        sb.append(", deleted=").append(deleted);
        sb.append("]");
        return sb.toString();
    }
}