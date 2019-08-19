package march.day25.entity;

import org.hibernate.validator.constraints.NotBlank;

import javax.validation.constraints.NotNull;
import java.io.Serializable;

/**
 * @program: sync-data
 * @description:
 * @author: 谢庆香
 * @create: 2019-03-27 09:23
 **/
public class ItemInfoInsertParam implements Serializable {
    private static final long serialVersionUID = 5961639686826315076L;
    @NotBlank(message = "缺少店铺id")
    private String shopId;
    @NotBlank(message = "缺少安全码")
    private String security;
    @NotNull(message = "上传数据不能为空")
    private ItemInfo itemInfo;

    @Override
    public String toString() {
        return "ItemInfoUpdateParam{" +
                "shopId='" + shopId + '\'' +
                ", security='" + security + '\'' +
                ", itemInfo=" + itemInfo +
                '}';
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public String getShopId() {
        return shopId;
    }

    public void setShopId(String shopId) {
        this.shopId = shopId;
    }

    public String getSecurity() {
        return security;
    }

    public void setSecurity(String security) {
        this.security = security;
    }

    public ItemInfo getItemInfo() {
        return itemInfo;
    }

    public void setItemInfo(ItemInfo itemInfo) {
        this.itemInfo = itemInfo;
    }
}