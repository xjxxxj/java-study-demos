package cn.com.siss.member.system.api.domain;

import java.io.Serializable;
import java.util.Date;

public class GiftItem implements Serializable {
    /**
     * 礼品项ID
     * 表字段 : gift_item.id
     */
    private Long id;

    /**
     * 礼品类别(1:礼品; 2:赠品)
     * 表字段 : gift_item.gift_category
     */
    private Integer giftCategory;

    /**
     * 礼品项目类型(1:商品; 2:礼券; 3:计次项目)
     * 表字段 : gift_item.item_type
     */
    private Integer itemType;

    /**
     * 礼品项目编号
     * 表字段 : gift_item.item_no
     */
    private String itemNo;

    /**
     * 礼品项目名字
     * 表字段 : gift_item.item_name
     */
    private String itemName;

    /**
     * 礼品项目库存
     * 表字段 : gift_item.item_stock
     */
    private Integer itemStock;

    /**
     * 库存限制标识(1:受限; 2:无限库存)
     * 表字段 : gift_item.limit_stock
     */
    private Integer limitStock;

    /**
     * 兑现礼品的门店编号(多个以英文字符“,”逗号分隔)
     * 表字段 : gift_item.cash_branch
     */
    private String cashBranch;

    /**
     * 所需积分
     * 表字段 : gift_item.need_scored
     */
    private Integer needScored;

    /**
     * 所需现金(单位:分)
     * 表字段 : gift_item.need_cash
     */
    private Integer needCash;

    /**
     * 有效期开始时间
     * 表字段 : gift_item.start_time
     */
    private Date startTime;

    /**
     * 有效期结束时间
     * 表字段 : gift_item.end_time
     */
    private Date endTime;

    /**
     * 创建时间
     * 表字段 : gift_item.created_time
     */
    private Date createdTime;

    /**
     * 创建人
     * 表字段 : gift_item.created_by
     */
    private String createdBy;

    /**
     * 更新时间
     * 表字段 : gift_item.updated_time
     */
    private Date updatedTime;

    /**
     * 更新人
     * 表字段 : gift_item.updated_by
     */
    private String updatedBy;

    /**
     * 备注
     * 表字段 : gift_item.remark
     */
    private String remark;

    /**
     * 删除标识(1:在线; 2:删除)
     * 表字段 : gift_item.deleted
     */
    private Integer deleted;

    private static final long serialVersionUID = 1L;

    public GiftItem(Long id, Integer giftCategory, Integer itemType, String itemNo, String itemName, Integer itemStock, Integer limitStock, String cashBranch, Integer needScored, Integer needCash, Date startTime, Date endTime, Date createdTime, String createdBy, Date updatedTime, String updatedBy, String remark, Integer deleted) {
        this.id = id;
        this.giftCategory = giftCategory;
        this.itemType = itemType;
        this.itemNo = itemNo;
        this.itemName = itemName;
        this.itemStock = itemStock;
        this.limitStock = limitStock;
        this.cashBranch = cashBranch;
        this.needScored = needScored;
        this.needCash = needCash;
        this.startTime = startTime;
        this.endTime = endTime;
        this.createdTime = createdTime;
        this.createdBy = createdBy;
        this.updatedTime = updatedTime;
        this.updatedBy = updatedBy;
        this.remark = remark;
        this.deleted = deleted;
    }

    public GiftItem() {
        super();
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Integer getGiftCategory() {
        return giftCategory;
    }

    public void setGiftCategory(Integer giftCategory) {
        this.giftCategory = giftCategory;
    }

    public Integer getItemType() {
        return itemType;
    }

    public void setItemType(Integer itemType) {
        this.itemType = itemType;
    }

    public String getItemNo() {
        return itemNo;
    }

    public void setItemNo(String itemNo) {
        this.itemNo = itemNo == null ? null : itemNo.trim();
    }

    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName == null ? null : itemName.trim();
    }

    public Integer getItemStock() {
        return itemStock;
    }

    public void setItemStock(Integer itemStock) {
        this.itemStock = itemStock;
    }

    public Integer getLimitStock() {
        return limitStock;
    }

    public void setLimitStock(Integer limitStock) {
        this.limitStock = limitStock;
    }

    public String getCashBranch() {
        return cashBranch;
    }

    public void setCashBranch(String cashBranch) {
        this.cashBranch = cashBranch == null ? null : cashBranch.trim();
    }

    public Integer getNeedScored() {
        return needScored;
    }

    public void setNeedScored(Integer needScored) {
        this.needScored = needScored;
    }

    public Integer getNeedCash() {
        return needCash;
    }

    public void setNeedCash(Integer needCash) {
        this.needCash = needCash;
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
        sb.append(", giftCategory=").append(giftCategory);
        sb.append(", itemType=").append(itemType);
        sb.append(", itemNo=").append(itemNo);
        sb.append(", itemName=").append(itemName);
        sb.append(", itemStock=").append(itemStock);
        sb.append(", limitStock=").append(limitStock);
        sb.append(", cashBranch=").append(cashBranch);
        sb.append(", needScored=").append(needScored);
        sb.append(", needCash=").append(needCash);
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