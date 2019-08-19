package march.day25.entity;

import java.io.Serializable;
import java.util.List;

/**
 * @program: sync-data
 * @description: 接受数据封装
 * @author: 谢庆香
 * @create: 2019-03-22 10:12
 **/
public class ItemInfoParam implements Serializable {
    private static final long serialVersionUID = -4168298321959939698L;
    private Long shopId;
    private String security;
    private List<ItemInfo> itemInfoList;

    @Override
    public String toString() {
        return "ItemInfoParam{" +
                "shopId=" + shopId +
                ", security='" + security + '\'' +
                ", itemInfoList=" + itemInfoList +
                '}';
    }

    public Long getShopId() {
        return shopId;
    }

    public void setShopId(Long shopId) {
        this.shopId = shopId;
    }

    public String getSecurity() {
        return security;
    }

    public void setSecurity(String security) {
        this.security = security;
    }

    public List<ItemInfo> getItemInfoList() {
        return itemInfoList;
    }

    public void setItemInfoList(List<ItemInfo> itemInfoList) {
        this.itemInfoList = itemInfoList;
    }
}