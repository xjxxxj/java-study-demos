package xjx.study.demo.springbootrediscache.domain;

import java.io.Serializable;
import java.util.Date;

public class ProductInfo implements Serializable {
    /**
     * 商品ID
     * 表字段 : product_info.id
     */
    private Long id;

    /**
     * 商户编号(0表示平台自营)
     * 表字段 : product_info.merchant_id
     */
    private Long merchantId;

    /**
     * 商品编号
     * 表字段 : product_info.product_no
     */
    private String productNo;

    /**
     * 商品名称
     * 表字段 : product_info.product_name
     */
    private String productName;

    /**
     * 商品图标
     * 表字段 : product_info.product_icon
     */
    private String productIcon;

    /**
     * 商品最低价(单位:分)
     * 表字段 : product_info.low_price
     */
    private Integer lowPrice;

    /**
     * 商品最高价(单位:分)
     * 表字段 : product_info.high_price
     */
    private Integer highPrice;

    /**
     * 商品分类ID
     * 表字段 : product_info.category_id
     */
    private Long categoryId;

    /**
     * 商品品牌ID
     * 表字段 : product_info.brand_id
     */
    private Long brandId;

    /**
     * 积分标识(1:积分; 2:不积分)
     * 表字段 : product_info.score_flag
     */
    private Integer scoreFlag;

    /**
     * 商品积分(积分方案为“按照商品档案单品积分”时使用)
     * 表字段 : product_info.product_score
     */
    private Integer productScore;

    /**
     * 启用增值保障(1:启用; 2:不启用)
     * 表字段 : product_info.safeguard_flag
     */
    private Integer safeguardFlag;

    /**
     * 创建时间
     * 表字段 : product_info.created_time
     */
    private Date createdTime;

    /**
     * 创建人
     * 表字段 : product_info.created_by
     */
    private String createdBy;

    /**
     * 更新时间
     * 表字段 : product_info.updated_time
     */
    private Date updatedTime;

    /**
     * 更新人
     * 表字段 : product_info.updated_by
     */
    private String updatedBy;

    /**
     * 备注
     * 表字段 : product_info.remark
     */
    private String remark;

    /**
     * 删除标识(1:在线; 2:删除)
     * 表字段 : product_info.deleted
     */
    private Integer deleted;

    private static final long serialVersionUID = 1L;

    public ProductInfo(Long id, Long merchantId, String productNo, String productName, String productIcon, Integer lowPrice, Integer highPrice, Long categoryId, Long brandId, Integer scoreFlag, Integer productScore, Integer safeguardFlag, Date createdTime, String createdBy, Date updatedTime, String updatedBy, String remark, Integer deleted) {
        this.id = id;
        this.merchantId = merchantId;
        this.productNo = productNo;
        this.productName = productName;
        this.productIcon = productIcon;
        this.lowPrice = lowPrice;
        this.highPrice = highPrice;
        this.categoryId = categoryId;
        this.brandId = brandId;
        this.scoreFlag = scoreFlag;
        this.productScore = productScore;
        this.safeguardFlag = safeguardFlag;
        this.createdTime = createdTime;
        this.createdBy = createdBy;
        this.updatedTime = updatedTime;
        this.updatedBy = updatedBy;
        this.remark = remark;
        this.deleted = deleted;
    }

    public ProductInfo() {
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

    public String getProductNo() {
        return productNo;
    }

    public void setProductNo(String productNo) {
        this.productNo = productNo == null ? null : productNo.trim();
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName == null ? null : productName.trim();
    }

    public String getProductIcon() {
        return productIcon;
    }

    public void setProductIcon(String productIcon) {
        this.productIcon = productIcon == null ? null : productIcon.trim();
    }

    public Integer getLowPrice() {
        return lowPrice;
    }

    public void setLowPrice(Integer lowPrice) {
        this.lowPrice = lowPrice;
    }

    public Integer getHighPrice() {
        return highPrice;
    }

    public void setHighPrice(Integer highPrice) {
        this.highPrice = highPrice;
    }

    public Long getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(Long categoryId) {
        this.categoryId = categoryId;
    }

    public Long getBrandId() {
        return brandId;
    }

    public void setBrandId(Long brandId) {
        this.brandId = brandId;
    }

    public Integer getScoreFlag() {
        return scoreFlag;
    }

    public void setScoreFlag(Integer scoreFlag) {
        this.scoreFlag = scoreFlag;
    }

    public Integer getProductScore() {
        return productScore;
    }

    public void setProductScore(Integer productScore) {
        this.productScore = productScore;
    }

    public Integer getSafeguardFlag() {
        return safeguardFlag;
    }

    public void setSafeguardFlag(Integer safeguardFlag) {
        this.safeguardFlag = safeguardFlag;
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
        sb.append(", productNo=").append(productNo);
        sb.append(", productName=").append(productName);
        sb.append(", productIcon=").append(productIcon);
        sb.append(", lowPrice=").append(lowPrice);
        sb.append(", highPrice=").append(highPrice);
        sb.append(", categoryId=").append(categoryId);
        sb.append(", brandId=").append(brandId);
        sb.append(", scoreFlag=").append(scoreFlag);
        sb.append(", productScore=").append(productScore);
        sb.append(", safeguardFlag=").append(safeguardFlag);
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