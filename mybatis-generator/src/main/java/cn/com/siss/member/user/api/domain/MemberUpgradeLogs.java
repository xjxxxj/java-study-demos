package cn.com.siss.member.user.api.domain;

import java.io.Serializable;
import java.util.Date;

public class MemberUpgradeLogs implements Serializable {
    /**
     * 主键ID
     * 表字段 : member_upgrade_logs.id
     */
    private Long id;

    /**
     * 商户编号
     * 表字段 : member_upgrade_logs.merchant_id
     */
    private Long merchantId;

    /**
     * 会员id
     * 表字段 : member_upgrade_logs.member_id
     */
    private Long memberId;

    /**
     * 会员卡号
     * 表字段 : member_upgrade_logs.member_no
     */
    private String memberNo;

    /**
     * 升级方式(1:按累计积分; 2:按剩余积分; 3:按累计消费额; 4:按单次充值金额)
     * 表字段 : member_upgrade_logs.upgrade_way
     */
    private Integer upgradeWay;

    /**
     * 会员类别(等级)配额
     * 表字段 : member_upgrade_logs.level_quota
     */
    private Integer levelQuota;

    /**
     * 升级后会员类别id
     * 表字段 : member_upgrade_logs.level_id
     */
    private Long levelId;

    /**
     * 升级后会员类别编号
     * 表字段 : member_upgrade_logs.level_no
     */
    private String levelNo;

    /**
     * 升级后会员类别名称
     * 表字段 : member_upgrade_logs.level_name
     */
    private String levelName;

    /**
     * 原会员类别id
     * 表字段 : member_upgrade_logs.pre_level_id
     */
    private Long preLevelId;

    /**
     * 原会员类别编号
     * 表字段 : member_upgrade_logs.pre_level_no
     */
    private String preLevelNo;

    /**
     * 原会员类别名称
     * 表字段 : member_upgrade_logs.pre_level_name
     */
    private String preLevelName;

    /**
     * 创建时间
     * 表字段 : member_upgrade_logs.created_time
     */
    private Date createdTime;

    /**
     * 创建人
     * 表字段 : member_upgrade_logs.created_by
     */
    private String createdBy;

    /**
     * 更新时间
     * 表字段 : member_upgrade_logs.updated_time
     */
    private Date updatedTime;

    /**
     * 更新人
     * 表字段 : member_upgrade_logs.updated_by
     */
    private String updatedBy;

    /**
     * 删除标志
     * 表字段 : member_upgrade_logs.deleted
     */
    private Integer deleted;

    private static final long serialVersionUID = 1L;

    public MemberUpgradeLogs(Long id, Long merchantId, Long memberId, String memberNo, Integer upgradeWay, Integer levelQuota, Long levelId, String levelNo, String levelName, Long preLevelId, String preLevelNo, String preLevelName, Date createdTime, String createdBy, Date updatedTime, String updatedBy, Integer deleted) {
        this.id = id;
        this.merchantId = merchantId;
        this.memberId = memberId;
        this.memberNo = memberNo;
        this.upgradeWay = upgradeWay;
        this.levelQuota = levelQuota;
        this.levelId = levelId;
        this.levelNo = levelNo;
        this.levelName = levelName;
        this.preLevelId = preLevelId;
        this.preLevelNo = preLevelNo;
        this.preLevelName = preLevelName;
        this.createdTime = createdTime;
        this.createdBy = createdBy;
        this.updatedTime = updatedTime;
        this.updatedBy = updatedBy;
        this.deleted = deleted;
    }

    public MemberUpgradeLogs() {
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

    public Integer getUpgradeWay() {
        return upgradeWay;
    }

    public void setUpgradeWay(Integer upgradeWay) {
        this.upgradeWay = upgradeWay;
    }

    public Integer getLevelQuota() {
        return levelQuota;
    }

    public void setLevelQuota(Integer levelQuota) {
        this.levelQuota = levelQuota;
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

    public String getLevelName() {
        return levelName;
    }

    public void setLevelName(String levelName) {
        this.levelName = levelName == null ? null : levelName.trim();
    }

    public Long getPreLevelId() {
        return preLevelId;
    }

    public void setPreLevelId(Long preLevelId) {
        this.preLevelId = preLevelId;
    }

    public String getPreLevelNo() {
        return preLevelNo;
    }

    public void setPreLevelNo(String preLevelNo) {
        this.preLevelNo = preLevelNo == null ? null : preLevelNo.trim();
    }

    public String getPreLevelName() {
        return preLevelName;
    }

    public void setPreLevelName(String preLevelName) {
        this.preLevelName = preLevelName == null ? null : preLevelName.trim();
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
        sb.append(", upgradeWay=").append(upgradeWay);
        sb.append(", levelQuota=").append(levelQuota);
        sb.append(", levelId=").append(levelId);
        sb.append(", levelNo=").append(levelNo);
        sb.append(", levelName=").append(levelName);
        sb.append(", preLevelId=").append(preLevelId);
        sb.append(", preLevelNo=").append(preLevelNo);
        sb.append(", preLevelName=").append(preLevelName);
        sb.append(", createdTime=").append(createdTime);
        sb.append(", createdBy=").append(createdBy);
        sb.append(", updatedTime=").append(updatedTime);
        sb.append(", updatedBy=").append(updatedBy);
        sb.append(", deleted=").append(deleted);
        sb.append("]");
        return sb.toString();
    }
}