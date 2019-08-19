package cn.com.siss.member.user.api.domain;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

public class MemberCard implements Serializable {
    /**
     * 主键ID
     * 表字段 : member_card.id
     */
    private Long id;

    /**
     * 商户编号
     * 表字段 : member_card.merchant_id
     */
    private Long merchantId;

    /**
     * 门店ID
     * 表字段 : member_card.branch_id
     */
    private Long branchId;

    /**
     * 门店编号
     * 表字段 : member_card.branch_no
     */
    private String branchNo;

    /**
     * 门店名称
     * 表字段 : member_card.branch_name
     */
    private String branchName;

    /**
     * 会员类别(等级)ID
     * 表字段 : member_card.level_id
     */
    private Long levelId;

    /**
     * 会员类别(等级)编号
     * 表字段 : member_card.level_no
     */
    private String levelNo;

    /**
     * 会员类别(等级)名称
     * 表字段 : member_card.level_name
     */
    private String levelName;

    /**
     * 会员卡号(card_prefix+card_mid+card_suffix)
     * 表字段 : member_card.member_no
     */
    private String memberNo;

    /**
     * 会员姓名
     * 表字段 : member_card.member_name
     */
    private String memberName;

    /**
     * 前缀(去除后面数字的前缀, 如: Z001, 截后: Z00)
     * 表字段 : member_card.card_prefix
     */
    private String cardPrefix;

    /**
     * 数字卡号
     * 表字段 : member_card.card_mid
     */
    private Long cardMid;

    /**
     * 后缀(去除掉前面数字的后缀, 如: 00100S, 截后: S)
     * 表字段 : member_card.card_suffix
     */
    private String cardSuffix;

    /**
     * 积分有效期开始时间
     * 表字段 : member_card.scored_start_date
     */
    private Date scoredStartDate;

    /**
     * 积分有效期结束时间
     * 表字段 : member_card.scored_end_date
     */
    private Date scoredEndDate;

    /**
     * 储值有效期开始时间
     * 表字段 : member_card.finance_start_date
     */
    private Date financeStartDate;

    /**
     * 储值有效期结束时间
     * 表字段 : member_card.finance_end_date
     */
    private Date financeEndDate;

    /**
     * 付款方式
     * 表字段 : member_card.pay_way
     */
    private String payWay;

    /**
     * 积分
     * 表字段 : member_card.init_score
     */
    private BigDecimal initScore;

    /**
     * 金额
     * 表字段 : member_card.init_amount
     */
    private Integer initAmount;

    /**
     * 限用次数
     * 表字段 : member_card.limit_quantity
     */
    private Integer limitQuantity;

    /**
     * 密码
     * 表字段 : member_card.password
     */
    private String password;

    /**
     * 创建时间
     * 表字段 : member_card.created_time
     */
    private Date createdTime;

    /**
     * 创建人
     * 表字段 : member_card.created_by
     */
    private String createdBy;

    /**
     * 更新时间
     * 表字段 : member_card.updated_time
     */
    private Date updatedTime;

    /**
     * 更新人
     * 表字段 : member_card.updated_by
     */
    private String updatedBy;

    /**
     * 备注
     * 表字段 : member_card.remark
     */
    private String remark;

    /**
     * 删除标识(1:在线; 2:删除)
     * 表字段 : member_card.deleted
     */
    private Integer deleted;

    private static final long serialVersionUID = 1L;

    public MemberCard(Long id, Long merchantId, Long branchId, String branchNo, String branchName, Long levelId, String levelNo, String levelName, String memberNo, String memberName, String cardPrefix, Long cardMid, String cardSuffix, Date scoredStartDate, Date scoredEndDate, Date financeStartDate, Date financeEndDate, String payWay, BigDecimal initScore, Integer initAmount, Integer limitQuantity, String password, Date createdTime, String createdBy, Date updatedTime, String updatedBy, String remark, Integer deleted) {
        this.id = id;
        this.merchantId = merchantId;
        this.branchId = branchId;
        this.branchNo = branchNo;
        this.branchName = branchName;
        this.levelId = levelId;
        this.levelNo = levelNo;
        this.levelName = levelName;
        this.memberNo = memberNo;
        this.memberName = memberName;
        this.cardPrefix = cardPrefix;
        this.cardMid = cardMid;
        this.cardSuffix = cardSuffix;
        this.scoredStartDate = scoredStartDate;
        this.scoredEndDate = scoredEndDate;
        this.financeStartDate = financeStartDate;
        this.financeEndDate = financeEndDate;
        this.payWay = payWay;
        this.initScore = initScore;
        this.initAmount = initAmount;
        this.limitQuantity = limitQuantity;
        this.password = password;
        this.createdTime = createdTime;
        this.createdBy = createdBy;
        this.updatedTime = updatedTime;
        this.updatedBy = updatedBy;
        this.remark = remark;
        this.deleted = deleted;
    }

    public MemberCard() {
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

    public String getMemberNo() {
        return memberNo;
    }

    public void setMemberNo(String memberNo) {
        this.memberNo = memberNo == null ? null : memberNo.trim();
    }

    public String getMemberName() {
        return memberName;
    }

    public void setMemberName(String memberName) {
        this.memberName = memberName == null ? null : memberName.trim();
    }

    public String getCardPrefix() {
        return cardPrefix;
    }

    public void setCardPrefix(String cardPrefix) {
        this.cardPrefix = cardPrefix == null ? null : cardPrefix.trim();
    }

    public Long getCardMid() {
        return cardMid;
    }

    public void setCardMid(Long cardMid) {
        this.cardMid = cardMid;
    }

    public String getCardSuffix() {
        return cardSuffix;
    }

    public void setCardSuffix(String cardSuffix) {
        this.cardSuffix = cardSuffix == null ? null : cardSuffix.trim();
    }

    public Date getScoredStartDate() {
        return scoredStartDate;
    }

    public void setScoredStartDate(Date scoredStartDate) {
        this.scoredStartDate = scoredStartDate;
    }

    public Date getScoredEndDate() {
        return scoredEndDate;
    }

    public void setScoredEndDate(Date scoredEndDate) {
        this.scoredEndDate = scoredEndDate;
    }

    public Date getFinanceStartDate() {
        return financeStartDate;
    }

    public void setFinanceStartDate(Date financeStartDate) {
        this.financeStartDate = financeStartDate;
    }

    public Date getFinanceEndDate() {
        return financeEndDate;
    }

    public void setFinanceEndDate(Date financeEndDate) {
        this.financeEndDate = financeEndDate;
    }

    public String getPayWay() {
        return payWay;
    }

    public void setPayWay(String payWay) {
        this.payWay = payWay == null ? null : payWay.trim();
    }

    public BigDecimal getInitScore() {
        return initScore;
    }

    public void setInitScore(BigDecimal initScore) {
        this.initScore = initScore;
    }

    public Integer getInitAmount() {
        return initAmount;
    }

    public void setInitAmount(Integer initAmount) {
        this.initAmount = initAmount;
    }

    public Integer getLimitQuantity() {
        return limitQuantity;
    }

    public void setLimitQuantity(Integer limitQuantity) {
        this.limitQuantity = limitQuantity;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
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
        sb.append(", branchId=").append(branchId);
        sb.append(", branchNo=").append(branchNo);
        sb.append(", branchName=").append(branchName);
        sb.append(", levelId=").append(levelId);
        sb.append(", levelNo=").append(levelNo);
        sb.append(", levelName=").append(levelName);
        sb.append(", memberNo=").append(memberNo);
        sb.append(", memberName=").append(memberName);
        sb.append(", cardPrefix=").append(cardPrefix);
        sb.append(", cardMid=").append(cardMid);
        sb.append(", cardSuffix=").append(cardSuffix);
        sb.append(", scoredStartDate=").append(scoredStartDate);
        sb.append(", scoredEndDate=").append(scoredEndDate);
        sb.append(", financeStartDate=").append(financeStartDate);
        sb.append(", financeEndDate=").append(financeEndDate);
        sb.append(", payWay=").append(payWay);
        sb.append(", initScore=").append(initScore);
        sb.append(", initAmount=").append(initAmount);
        sb.append(", limitQuantity=").append(limitQuantity);
        sb.append(", password=").append(password);
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