package com.xjx.javastudydemos.mybatisplusdemo1.po;

import java.io.Serializable;

public class PrizeItem implements Serializable {
    /**
     * 主键，自动递增
     * 表字段 : prize_item.id
     */
    private Long id;

    /**
     * 商铺id
     * 表字段 : prize_item.shop_id
     */
    private String shopId;

    /**
     * 奖项名称，eg:一等奖
     * 表字段 : prize_item.name
     */
    private String name;

    /**
     * 奖品类型(1：积分，2:优惠券，3：储值卡，4：自定义）
     * 表字段 : prize_item.type
     */
    private Integer type;

    /**
     * 奖品真实数量
     * 表字段 : prize_item.real_count
     */
    private Integer realCount;

    /**
     * 展示给用户看的奖品数量
     * 表字段 : prize_item.show_count
     */
    private Integer showCount;

    /**
     * 排序数字，从小到大排序
     * 表字段 : prize_item.order_number
     */
    private Integer orderNumber;

    /**
     * 奖品项值,如果是积分类型奖品，存积分值。如果是优惠券类型奖品，存优惠券id。如果是储存金类型奖品，存储金额数目，如果是自定义奖品，存奖品名称。
     * 表字段 : prize_item.prize_value
     */
    private String prizeValue;

    /**
     * 关联的抽奖模板id
     * 表字段 : prize_item.template_id
     */
    private Long templateId;

    /**
     * 创建时间（时间戳，单位：ms)
     * 表字段 : prize_item.created_time
     */
    private Long createdTime;

    /**
     * 创建人（编号）
     * 表字段 : prize_item.created_by
     */
    private Long createdBy;

    /**
     * 修改时间（时间戳，单位：ms)
     * 表字段 : prize_item.updated_time
     */
    private Long updatedTime;

    /**
     * 修改人（编号）
     * 表字段 : prize_item.updated_by
     */
    private Long updatedBy;

    /**
     * 是否删除（1：否；2是）
     * 表字段 : prize_item.deleted
     */
    private Short deleted;

    /**
     * 图片地址，自定义类型奖品的图片url。
     * 表字段 : prize_item.img_url
     */
    private String imgUrl;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table prize_item
     *
     * @mbggenerated
     */
    private static final long serialVersionUID = 1L;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table prize_item
     *
     * @mbggenerated
     */
    public PrizeItem(Long id, String shopId, String name, Integer type, Integer realCount, Integer showCount, Integer orderNumber, String prizeValue, Long templateId, Long createdTime, Long createdBy, Long updatedTime, Long updatedBy, Short deleted, String imgUrl) {
        this.id = id;
        this.shopId = shopId;
        this.name = name;
        this.type = type;
        this.realCount = realCount;
        this.showCount = showCount;
        this.orderNumber = orderNumber;
        this.prizeValue = prizeValue;
        this.templateId = templateId;
        this.createdTime = createdTime;
        this.createdBy = createdBy;
        this.updatedTime = updatedTime;
        this.updatedBy = updatedBy;
        this.deleted = deleted;
        this.imgUrl = imgUrl;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table prize_item
     *
     * @mbggenerated
     */
    public PrizeItem() {
        super();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column prize_item.id
     *
     * @return the value of prize_item.id
     *
     * @mbggenerated
     */
    public Long getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column prize_item.id
     *
     * @param id the value for prize_item.id
     *
     * @mbggenerated
     */
    public void setId(Long id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column prize_item.shop_id
     *
     * @return the value of prize_item.shop_id
     *
     * @mbggenerated
     */
    public String getShopId() {
        return shopId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column prize_item.shop_id
     *
     * @param shopId the value for prize_item.shop_id
     *
     * @mbggenerated
     */
    public void setShopId(String shopId) {
        this.shopId = shopId == null ? null : shopId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column prize_item.name
     *
     * @return the value of prize_item.name
     *
     * @mbggenerated
     */
    public String getName() {
        return name;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column prize_item.name
     *
     * @param name the value for prize_item.name
     *
     * @mbggenerated
     */
    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column prize_item.type
     *
     * @return the value of prize_item.type
     *
     * @mbggenerated
     */
    public Integer getType() {
        return type;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column prize_item.type
     *
     * @param type the value for prize_item.type
     *
     * @mbggenerated
     */
    public void setType(Integer type) {
        this.type = type;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column prize_item.real_count
     *
     * @return the value of prize_item.real_count
     *
     * @mbggenerated
     */
    public Integer getRealCount() {
        return realCount;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column prize_item.real_count
     *
     * @param realCount the value for prize_item.real_count
     *
     * @mbggenerated
     */
    public void setRealCount(Integer realCount) {
        this.realCount = realCount;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column prize_item.show_count
     *
     * @return the value of prize_item.show_count
     *
     * @mbggenerated
     */
    public Integer getShowCount() {
        return showCount;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column prize_item.show_count
     *
     * @param showCount the value for prize_item.show_count
     *
     * @mbggenerated
     */
    public void setShowCount(Integer showCount) {
        this.showCount = showCount;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column prize_item.order_number
     *
     * @return the value of prize_item.order_number
     *
     * @mbggenerated
     */
    public Integer getOrderNumber() {
        return orderNumber;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column prize_item.order_number
     *
     * @param orderNumber the value for prize_item.order_number
     *
     * @mbggenerated
     */
    public void setOrderNumber(Integer orderNumber) {
        this.orderNumber = orderNumber;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column prize_item.prize_value
     *
     * @return the value of prize_item.prize_value
     *
     * @mbggenerated
     */
    public String getPrizeValue() {
        return prizeValue;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column prize_item.prize_value
     *
     * @param prizeValue the value for prize_item.prize_value
     *
     * @mbggenerated
     */
    public void setPrizeValue(String prizeValue) {
        this.prizeValue = prizeValue == null ? null : prizeValue.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column prize_item.template_id
     *
     * @return the value of prize_item.template_id
     *
     * @mbggenerated
     */
    public Long getTemplateId() {
        return templateId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column prize_item.template_id
     *
     * @param templateId the value for prize_item.template_id
     *
     * @mbggenerated
     */
    public void setTemplateId(Long templateId) {
        this.templateId = templateId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column prize_item.created_time
     *
     * @return the value of prize_item.created_time
     *
     * @mbggenerated
     */
    public Long getCreatedTime() {
        return createdTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column prize_item.created_time
     *
     * @param createdTime the value for prize_item.created_time
     *
     * @mbggenerated
     */
    public void setCreatedTime(Long createdTime) {
        this.createdTime = createdTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column prize_item.created_by
     *
     * @return the value of prize_item.created_by
     *
     * @mbggenerated
     */
    public Long getCreatedBy() {
        return createdBy;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column prize_item.created_by
     *
     * @param createdBy the value for prize_item.created_by
     *
     * @mbggenerated
     */
    public void setCreatedBy(Long createdBy) {
        this.createdBy = createdBy;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column prize_item.updated_time
     *
     * @return the value of prize_item.updated_time
     *
     * @mbggenerated
     */
    public Long getUpdatedTime() {
        return updatedTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column prize_item.updated_time
     *
     * @param updatedTime the value for prize_item.updated_time
     *
     * @mbggenerated
     */
    public void setUpdatedTime(Long updatedTime) {
        this.updatedTime = updatedTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column prize_item.updated_by
     *
     * @return the value of prize_item.updated_by
     *
     * @mbggenerated
     */
    public Long getUpdatedBy() {
        return updatedBy;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column prize_item.updated_by
     *
     * @param updatedBy the value for prize_item.updated_by
     *
     * @mbggenerated
     */
    public void setUpdatedBy(Long updatedBy) {
        this.updatedBy = updatedBy;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column prize_item.deleted
     *
     * @return the value of prize_item.deleted
     *
     * @mbggenerated
     */
    public Short getDeleted() {
        return deleted;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column prize_item.deleted
     *
     * @param deleted the value for prize_item.deleted
     *
     * @mbggenerated
     */
    public void setDeleted(Short deleted) {
        this.deleted = deleted;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column prize_item.img_url
     *
     * @return the value of prize_item.img_url
     *
     * @mbggenerated
     */
    public String getImgUrl() {
        return imgUrl;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column prize_item.img_url
     *
     * @param imgUrl the value for prize_item.img_url
     *
     * @mbggenerated
     */
    public void setImgUrl(String imgUrl) {
        this.imgUrl = imgUrl == null ? null : imgUrl.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table prize_item
     *
     * @mbggenerated
     */
    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", shopId=").append(shopId);
        sb.append(", name=").append(name);
        sb.append(", type=").append(type);
        sb.append(", realCount=").append(realCount);
        sb.append(", showCount=").append(showCount);
        sb.append(", orderNumber=").append(orderNumber);
        sb.append(", prizeValue=").append(prizeValue);
        sb.append(", templateId=").append(templateId);
        sb.append(", createdTime=").append(createdTime);
        sb.append(", createdBy=").append(createdBy);
        sb.append(", updatedTime=").append(updatedTime);
        sb.append(", updatedBy=").append(updatedBy);
        sb.append(", deleted=").append(deleted);
        sb.append(", imgUrl=").append(imgUrl);
        sb.append("]");
        return sb.toString();
    }
}