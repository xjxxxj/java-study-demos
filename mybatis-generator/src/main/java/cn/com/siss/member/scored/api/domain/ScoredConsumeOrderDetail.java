package cn.com.siss.member.scored.api.domain;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

public class ScoredConsumeOrderDetail implements Serializable {
    /**
     * 订单明细ID
     * 表字段 : scored_consume_order_detail.id
     */
    private Long id;

    /**
     * 积分订单ID
     * 表字段 : scored_consume_order_detail.order_id
     */
    private Long orderId;

    /**
     * 商户编号
     * 表字段 : scored_consume_order_detail.merchant_id
     */
    private Long merchantId;

    /**
     * 业务门店ID[会员自己(定时任务)操作的,值为会员的所属门店]
     * 表字段 : scored_consume_order_detail.branch_id
     */
    private Long branchId;

    /**
     * 业务门店编号(同branch_id)
     * 表字段 : scored_consume_order_detail.branch_no
     */
    private String branchNo;

    /**
     * 业务门店名称
     * 表字段 : scored_consume_order_detail.branch_name
     */
    private String branchName;

    /**
     * 会员id
     * 表字段 : scored_consume_order_detail.member_id
     */
    private Long memberId;

    /**
     * 会员卡(编)号[积分账号]
     * 表字段 : scored_consume_order_detail.member_no
     */
    private String memberNo;

    /**
     * 积分账户ID
     * 表字段 : scored_consume_order_detail.account_id
     */
    private Long accountId;

    /**
     * 消费类型(2:抵扣积分; 3:转储兑换; 4:产品兑换;)
     * 表字段 : scored_consume_order_detail.consume_type
     */
    private Integer consumeType;

    /**
     * 消费的项目ID(consume_type=3时关联积分转储规则表; consume_type=4时关联礼品表)
     * 表字段 : scored_consume_order_detail.item_id
     */
    private Long itemId;

    /**
     * 消费的项目名称(consume_type=2或3时,现金)
     * 表字段 : scored_consume_order_detail.item_name
     */
    private String itemName;

    /**
     * 项目积分单价
     * 表字段 : scored_consume_order_detail.item_score_price
     */
    private BigDecimal itemScorePrice;

    /**
     * 项目现金单价(单位:分)(consume_type=2时为抵扣的金额)
     * 表字段 : scored_consume_order_detail.item_cash_price
     */
    private Integer itemCashPrice;

    /**
     * 消费的项目数量(consume_type=2时,值为1)
     * 表字段 : scored_consume_order_detail.quantity
     */
    private Integer quantity;

    /**
     * 创建时间
     * 表字段 : scored_consume_order_detail.created_time
     */
    private Date createdTime;

    /**
     * 创建人
     * 表字段 : scored_consume_order_detail.created_by
     */
    private String createdBy;

    /**
     * 更新时间
     * 表字段 : scored_consume_order_detail.updated_time
     */
    private Date updatedTime;

    /**
     * 更新人
     * 表字段 : scored_consume_order_detail.updated_by
     */
    private String updatedBy;

    /**
     * 备注
     * 表字段 : scored_consume_order_detail.remark
     */
    private String remark;

    /**
     * 删除标识(1:在线; 2:删除)
     * 表字段 : scored_consume_order_detail.deleted
     */
    private Integer deleted;

    private static final long serialVersionUID = 1L;

    public ScoredConsumeOrderDetail(Long id, Long orderId, Long merchantId, Long branchId, String branchNo, String branchName, Long memberId, String memberNo, Long accountId, Integer consumeType, Long itemId, String itemName, BigDecimal itemScorePrice, Integer itemCashPrice, Integer quantity, Date createdTime, String createdBy, Date updatedTime, String updatedBy, String remark, Integer deleted) {
        this.id = id;
        this.orderId = orderId;
        this.merchantId = merchantId;
        this.branchId = branchId;
        this.branchNo = branchNo;
        this.branchName = branchName;
        this.memberId = memberId;
        this.memberNo = memberNo;
        this.accountId = accountId;
        this.consumeType = consumeType;
        this.itemId = itemId;
        this.itemName = itemName;
        this.itemScorePrice = itemScorePrice;
        this.itemCashPrice = itemCashPrice;
        this.quantity = quantity;
        this.createdTime = createdTime;
        this.createdBy = createdBy;
        this.updatedTime = updatedTime;
        this.updatedBy = updatedBy;
        this.remark = remark;
        this.deleted = deleted;
    }

    public ScoredConsumeOrderDetail() {
        super();
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getOrderId() {
        return orderId;
    }

    public void setOrderId(Long orderId) {
        this.orderId = orderId;
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

    public Long getAccountId() {
        return accountId;
    }

    public void setAccountId(Long accountId) {
        this.accountId = accountId;
    }

    public Integer getConsumeType() {
        return consumeType;
    }

    public void setConsumeType(Integer consumeType) {
        this.consumeType = consumeType;
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

    public BigDecimal getItemScorePrice() {
        return itemScorePrice;
    }

    public void setItemScorePrice(BigDecimal itemScorePrice) {
        this.itemScorePrice = itemScorePrice;
    }

    public Integer getItemCashPrice() {
        return itemCashPrice;
    }

    public void setItemCashPrice(Integer itemCashPrice) {
        this.itemCashPrice = itemCashPrice;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
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
        sb.append(", orderId=").append(orderId);
        sb.append(", merchantId=").append(merchantId);
        sb.append(", branchId=").append(branchId);
        sb.append(", branchNo=").append(branchNo);
        sb.append(", branchName=").append(branchName);
        sb.append(", memberId=").append(memberId);
        sb.append(", memberNo=").append(memberNo);
        sb.append(", accountId=").append(accountId);
        sb.append(", consumeType=").append(consumeType);
        sb.append(", itemId=").append(itemId);
        sb.append(", itemName=").append(itemName);
        sb.append(", itemScorePrice=").append(itemScorePrice);
        sb.append(", itemCashPrice=").append(itemCashPrice);
        sb.append(", quantity=").append(quantity);
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