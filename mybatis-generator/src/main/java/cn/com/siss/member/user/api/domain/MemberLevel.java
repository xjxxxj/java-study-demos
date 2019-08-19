package cn.com.siss.member.user.api.domain;

import java.io.Serializable;
import java.util.Date;

public class MemberLevel implements Serializable {
    /**
     * 会员类别(等级)ID
     * 表字段 : member_level.id
     */
    private Long id;

    /**
     * 商户编号
     * 表字段 : member_level.merchant_id
     */
    private Long merchantId;

    /**
     * 会员类别(等级)编码
     * 表字段 : member_level.level_no
     */
    private String levelNo;

    /**
     * 会员类别(等级)名称
     * 表字段 : member_level.level_name
     */
    private String levelName;

    /**
     * 会员类别(等级)配额(升到该会员类别所需要的指定升级方式的值)
     * 表字段 : member_level.level_quota
     */
    private Integer levelQuota;

    /**
     * 优惠方式(1;零售折扣; 2;会员价; 3:会员折扣)
     * 表字段 : member_level.preferential_way
     */
    private Integer preferentialWay;

    /**
     * 优惠折扣(100%)
     * 表字段 : member_level.preferential_discount
     */
    private Integer preferentialDiscount;

    /**
     * 优惠项(7个会员价+PLUS会员价选项, 价格取自商品SKU信息)
     * 表字段 : member_level.preferential_item
     */
    private Integer preferentialItem;

    /**
     * 有效期方式(1:永远有效; 2:开卡后n天内有效; 3:指定时间区间内有效)
     * 表字段 : member_level.effective_way
     */
    private Integer effectiveWay;

    /**
     * 有效开始日期(如果effective_way=2时, 字段值为空; 会员开卡时有效开始日期取当天)
     * 表字段 : member_level.effective_start_date
     */
    private Date effectiveStartDate;

    /**
     * 有效期天数(当effective_way=3时, 该值为结束日期减开始日期之差的天数值)
     * 表字段 : member_level.effective_days
     */
    private Integer effectiveDays;

    /**
     * 会员权限使用次数限制
     * 表字段 : member_level.limit_quantity
     */
    private Integer limitQuantity;

    /**
     * 所属区域(0:不分区域, 值来自商户门店分组编码)
     * 表字段 : member_level.area_code
     */
    private String areaCode;

    /**
     * 积分能力(1:开启; 2:不开启)
     * 表字段 : member_level.scored_ability
     */
    private Integer scoredAbility;

    /**
     * 储值能力(1:开启; 2:不开启)
     * 表字段 : member_level.finance_ability
     */
    private Integer financeAbility;

    /**
     * 项目储值能力(1:开启; 2:不开启)
     * 表字段 : member_level.finance_item_ability
     */
    private Integer financeItemAbility;

    /**
     * 默认等级标识(1:是; 2:否)
     * 表字段 : member_level.default_flag
     */
    private Integer defaultFlag;

    /**
     * 会员状态(1:启用; 2:禁用)
     * 表字段 : member_level.status
     */
    private Integer status;

    /**
     * 描述
     * 表字段 : member_level.description
     */
    private String description;

    /**
     * 创建时间
     * 表字段 : member_level.created_time
     */
    private Date createdTime;

    /**
     * 创建人
     * 表字段 : member_level.created_by
     */
    private String createdBy;

    /**
     * 更新时间
     * 表字段 : member_level.updated_time
     */
    private Date updatedTime;

    /**
     * 更新人
     * 表字段 : member_level.updated_by
     */
    private String updatedBy;

    /**
     * 备注
     * 表字段 : member_level.remark
     */
    private String remark;

    /**
     * 删除标识(1:在线; 2:删除)
     * 表字段 : member_level.deleted
     */
    private Integer deleted;

    private static final long serialVersionUID = 1L;

    public MemberLevel(Long id, Long merchantId, String levelNo, String levelName, Integer levelQuota, Integer preferentialWay, Integer preferentialDiscount, Integer preferentialItem, Integer effectiveWay, Date effectiveStartDate, Integer effectiveDays, Integer limitQuantity, String areaCode, Integer scoredAbility, Integer financeAbility, Integer financeItemAbility, Integer defaultFlag, Integer status, String description, Date createdTime, String createdBy, Date updatedTime, String updatedBy, String remark, Integer deleted) {
        this.id = id;
        this.merchantId = merchantId;
        this.levelNo = levelNo;
        this.levelName = levelName;
        this.levelQuota = levelQuota;
        this.preferentialWay = preferentialWay;
        this.preferentialDiscount = preferentialDiscount;
        this.preferentialItem = preferentialItem;
        this.effectiveWay = effectiveWay;
        this.effectiveStartDate = effectiveStartDate;
        this.effectiveDays = effectiveDays;
        this.limitQuantity = limitQuantity;
        this.areaCode = areaCode;
        this.scoredAbility = scoredAbility;
        this.financeAbility = financeAbility;
        this.financeItemAbility = financeItemAbility;
        this.defaultFlag = defaultFlag;
        this.status = status;
        this.description = description;
        this.createdTime = createdTime;
        this.createdBy = createdBy;
        this.updatedTime = updatedTime;
        this.updatedBy = updatedBy;
        this.remark = remark;
        this.deleted = deleted;
    }

    public MemberLevel() {
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

    public String getLevelNo() {
        return levelNo;
    }

    public void setLevelNo(String levelNo) {
        this.levelNo = levelNo == null ? null : levelNo.trim();
    }

    public String getLevelName() {
        return levelName;
    }

    public void setLevelName(String levelName) {
        this.levelName = levelName == null ? null : levelName.trim();
    }

    public Integer getLevelQuota() {
        return levelQuota;
    }

    public void setLevelQuota(Integer levelQuota) {
        this.levelQuota = levelQuota;
    }

    public Integer getPreferentialWay() {
        return preferentialWay;
    }

    public void setPreferentialWay(Integer preferentialWay) {
        this.preferentialWay = preferentialWay;
    }

    public Integer getPreferentialDiscount() {
        return preferentialDiscount;
    }

    public void setPreferentialDiscount(Integer preferentialDiscount) {
        this.preferentialDiscount = preferentialDiscount;
    }

    public Integer getPreferentialItem() {
        return preferentialItem;
    }

    public void setPreferentialItem(Integer preferentialItem) {
        this.preferentialItem = preferentialItem;
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

    public Integer getLimitQuantity() {
        return limitQuantity;
    }

    public void setLimitQuantity(Integer limitQuantity) {
        this.limitQuantity = limitQuantity;
    }

    public String getAreaCode() {
        return areaCode;
    }

    public void setAreaCode(String areaCode) {
        this.areaCode = areaCode == null ? null : areaCode.trim();
    }

    public Integer getScoredAbility() {
        return scoredAbility;
    }

    public void setScoredAbility(Integer scoredAbility) {
        this.scoredAbility = scoredAbility;
    }

    public Integer getFinanceAbility() {
        return financeAbility;
    }

    public void setFinanceAbility(Integer financeAbility) {
        this.financeAbility = financeAbility;
    }

    public Integer getFinanceItemAbility() {
        return financeItemAbility;
    }

    public void setFinanceItemAbility(Integer financeItemAbility) {
        this.financeItemAbility = financeItemAbility;
    }

    public Integer getDefaultFlag() {
        return defaultFlag;
    }

    public void setDefaultFlag(Integer defaultFlag) {
        this.defaultFlag = defaultFlag;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
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
        sb.append(", levelNo=").append(levelNo);
        sb.append(", levelName=").append(levelName);
        sb.append(", levelQuota=").append(levelQuota);
        sb.append(", preferentialWay=").append(preferentialWay);
        sb.append(", preferentialDiscount=").append(preferentialDiscount);
        sb.append(", preferentialItem=").append(preferentialItem);
        sb.append(", effectiveWay=").append(effectiveWay);
        sb.append(", effectiveStartDate=").append(effectiveStartDate);
        sb.append(", effectiveDays=").append(effectiveDays);
        sb.append(", limitQuantity=").append(limitQuantity);
        sb.append(", areaCode=").append(areaCode);
        sb.append(", scoredAbility=").append(scoredAbility);
        sb.append(", financeAbility=").append(financeAbility);
        sb.append(", financeItemAbility=").append(financeItemAbility);
        sb.append(", defaultFlag=").append(defaultFlag);
        sb.append(", status=").append(status);
        sb.append(", description=").append(description);
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