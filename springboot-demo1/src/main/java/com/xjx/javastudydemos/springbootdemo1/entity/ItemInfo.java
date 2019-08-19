package com.xjx.javastudydemos.springbootdemo1.entity;

import java.io.Serializable;
import java.util.Date;

/**
 * @program: sync-data
 * @description: ItemInfo对象
 * @author: 谢庆香
 * @create: 2019-03-21 11:31
 **/
public class ItemInfo implements Serializable {
    private static final long serialVersionUID = 6174697907880657590L;
    private Long itemInfoId;
    private String shopId;
    private String branchNo;
    private String itemNo;
    private String itemName;
    private String typeNo;
    private String typeName;
    private String itemUnit;
    private String itemSpec;
    private Double itemPrice;
    private Double itemMprice;
    private String itemSpell;
    private String itemDesc;
    private Character useFlag;
    private String branchName;
    private Double itemOldPrice;
    private String pic;
    private Date operDate;
    private String upPic;
    private Integer stock;
    private Integer saleNum;
    private Byte isStock;
    private String itemSubNo;
    private Integer intOrder;
    private Character isHot;
    private Character isBest;
    private Double itemPromotePrice;
    private String itemQrCode;
    private String unitId;
    private Integer purchaseNum;
    private String brandNo;
    private Character isDelete;

    @Override
    public String toString() {
        return "ItemInfo{" +
                "itemInfoId=" + itemInfoId +
                ", shopId='" + shopId + '\'' +
                ", branchNo='" + branchNo + '\'' +
                ", itemNo='" + itemNo + '\'' +
                ", itemName='" + itemName + '\'' +
                ", typeNo='" + typeNo + '\'' +
                ", typeName='" + typeName + '\'' +
                ", itemUnit='" + itemUnit + '\'' +
                ", itemSpec='" + itemSpec + '\'' +
                ", itemPrice=" + itemPrice +
                ", itemMprice=" + itemMprice +
                ", itemSpell='" + itemSpell + '\'' +
                ", itemDesc='" + itemDesc + '\'' +
                ", useFlag=" + useFlag +
                ", branchName='" + branchName + '\'' +
                ", itemOldPrice=" + itemOldPrice +
                ", pic='" + pic + '\'' +
                ", operDate=" + operDate +
                ", upPic='" + upPic + '\'' +
                ", stock=" + stock +
                ", saleNum=" + saleNum +
                ", isStock=" + isStock +
                ", itemSubNo='" + itemSubNo + '\'' +
                ", intOrder=" + intOrder +
                ", isHot=" + isHot +
                ", isBest=" + isBest +
                ", itemPromotePrice=" + itemPromotePrice +
                ", itemQrCode='" + itemQrCode + '\'' +
                ", unitId='" + unitId + '\'' +
                ", purchaseNum=" + purchaseNum +
                ", brandNo='" + brandNo + '\'' +
                ", isDelete=" + isDelete +
                '}';
    }

    public Long getItemInfoId() {
        return itemInfoId;
    }

    public void setItemInfoId(Long itemInfoId) {
        this.itemInfoId = itemInfoId;
    }

    public String getShopId() {
        return shopId;
    }

    public void setShopId(String shopId) {
        this.shopId = shopId;
    }

    public String getBranchNo() {
        return branchNo;
    }

    public void setBranchNo(String branchNo) {
        this.branchNo = branchNo;
    }

    public String getItemNo() {
        return itemNo;
    }

    public void setItemNo(String itemNo) {
        this.itemNo = itemNo;
    }

    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName;
    }

    public String getTypeNo() {
        return typeNo;
    }

    public void setTypeNo(String typeNo) {
        this.typeNo = typeNo;
    }

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }

    public String getItemUnit() {
        return itemUnit;
    }

    public void setItemUnit(String itemUnit) {
        this.itemUnit = itemUnit;
    }

    public String getItemSpec() {
        return itemSpec;
    }

    public void setItemSpec(String itemSpec) {
        this.itemSpec = itemSpec;
    }

    public Double getItemPrice() {
        return itemPrice;
    }

    public void setItemPrice(Double itemPrice) {
        this.itemPrice = itemPrice;
    }

    public Double getItemMprice() {
        return itemMprice;
    }

    public void setItemMprice(Double itemMprice) {
        this.itemMprice = itemMprice;
    }

    public String getItemSpell() {
        return itemSpell;
    }

    public void setItemSpell(String itemSpell) {
        this.itemSpell = itemSpell;
    }

    public String getItemDesc() {
        return itemDesc;
    }

    public void setItemDesc(String itemDesc) {
        this.itemDesc = itemDesc;
    }

    public Character getUseFlag() {
        return useFlag;
    }

    public void setUseFlag(Character useFlag) {
        this.useFlag = useFlag;
    }

    public String getBranchName() {
        return branchName;
    }

    public void setBranchName(String branchName) {
        this.branchName = branchName;
    }

    public Double getItemOldPrice() {
        return itemOldPrice;
    }

    public void setItemOldPrice(Double itemOldPrice) {
        this.itemOldPrice = itemOldPrice;
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic;
    }

    public Date getOperDate() {
        return operDate;
    }

    public void setOperDate(Date operDate) {
        this.operDate = operDate;
    }

    public String getUpPic() {
        return upPic;
    }

    public void setUpPic(String upPic) {
        this.upPic = upPic;
    }

    public Integer getStock() {
        return stock;
    }

    public void setStock(Integer stock) {
        this.stock = stock;
    }

    public Integer getSaleNum() {
        return saleNum;
    }

    public void setSaleNum(Integer saleNum) {
        this.saleNum = saleNum;
    }

    public Byte getIsStock() {
        return isStock;
    }

    public void setIsStock(Byte isStock) {
        this.isStock = isStock;
    }

    public String getItemSubNo() {
        return itemSubNo;
    }

    public void setItemSubNo(String itemSubNo) {
        this.itemSubNo = itemSubNo;
    }

    public Integer getIntOrder() {
        return intOrder;
    }

    public void setIntOrder(Integer intOrder) {
        this.intOrder = intOrder;
    }

    public Character getIsHot() {
        return isHot;
    }

    public void setIsHot(Character isHot) {
        this.isHot = isHot;
    }

    public Character getIsBest() {
        return isBest;
    }

    public void setIsBest(Character isBest) {
        this.isBest = isBest;
    }

    public Double getItemPromotePrice() {
        return itemPromotePrice;
    }

    public void setItemPromotePrice(Double itemPromotePrice) {
        this.itemPromotePrice = itemPromotePrice;
    }

    public String getItemQrCode() {
        return itemQrCode;
    }

    public void setItemQrCode(String itemQrCode) {
        this.itemQrCode = itemQrCode;
    }

    public String getUnitId() {
        return unitId;
    }

    public void setUnitId(String unitId) {
        this.unitId = unitId;
    }

    public Integer getPurchaseNum() {
        return purchaseNum;
    }

    public void setPurchaseNum(Integer purchaseNum) {
        this.purchaseNum = purchaseNum;
    }

    public String getBrandNo() {
        return brandNo;
    }

    public void setBrandNo(String brandNo) {
        this.brandNo = brandNo;
    }

    public Character getIsDelete() {
        return isDelete;
    }

    public void setIsDelete(Character isDelete) {
        this.isDelete = isDelete;
    }
}