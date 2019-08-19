package march.day25;

import cn.com.siss.utils.common.JsonUtil;
import cn.com.siss.utils.web.HttpClientUtil;
import march.day25.entity.ItemInfo;
import march.day25.entity.ItemInfoInsertParam;
import march.day25.entity.ItemInfoParam;

import java.util.*;
import java.util.concurrent.atomic.AtomicLong;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-03-25 11:46
 **/
public class Test2 {
    public static final AtomicLong num = new AtomicLong(100) ;
    public static void main(String[] args) throws InterruptedException {
        //insertBatch(1,10);
        //insert(100);
        updateBatch();
        Thread.sleep(5000);
        System.out.println("=========================================================" + num.get()) ;
    }
    public static void updateBatch(){
        List<ItemInfo> itemInfoList = getItemInfoList(2);
        itemInfoList.get(0).setShopId(80000653 + "");
        itemInfoList.get(0).setItemNo("001616701436");
        System.out.println("====================data1:" + itemInfoList.get(0)) ;
        itemInfoList.get(1).setShopId(80000653 + "");
        itemInfoList.get(1).setItemNo("0058502030203");
        System.out.println("====================data2:" + itemInfoList.get(1)) ;
        ItemInfoParam param = new ItemInfoParam();
        param.setShopId(80000001L);
        param.setSecurity("123456789asdfghjkl789654");
        param.setItemInfoList(itemInfoList);

        HttpClientUtil instance = HttpClientUtil.getInstance();
        String message = instance.sendHttpPost("http://localhost:8080/itemInfo/updateBatch", JsonUtil.objectToJson(param));
        System.out.println(message) ;
    }
    public static void insert(int threadNum){
        Random random = new Random();
        for(int i = 0 ; i < threadNum ; i ++){
            new Thread(()->{
                while (true){
                    if(num.get() <= 0){
                        break;
                    }
                    List<ItemInfo> itemInfoList = getItemInfoList(1);
                    ItemInfoInsertParam param = new ItemInfoInsertParam();
                    param.setShopId(80000001 + "");
                    param.setSecurity("123456789asdfghjkl789654");
                    param.setItemInfo(itemInfoList.get(0));
                    doInsert(param,"http://localhost:8080/itemInfo/insert");
                    System.out.println(param) ;
                    if(num.addAndGet(-1) <= 0){
                        System.out.println(num.get()) ;
                        break;
                    };
                    try {
                        Thread.sleep(10);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
            }).start();
        }
    }
    public static void insertBatch(int threadNum,int count){
        Random random = new Random();
        for(int i = 0 ; i < threadNum ; i ++){
            new Thread(()->{
                while (true){
                    if(num.get() <= 0){
                        break;
                    }
                    List<ItemInfo> itemInfoList = getItemInfoList(count);
                    ItemInfoParam itemInfoParam = new ItemInfoParam();
                    itemInfoParam.setShopId(80000001L);
                    itemInfoParam.setSecurity("123456789asdfghjkl789654");
                    itemInfoParam.setItemInfoList(itemInfoList);
                    doInsert(itemInfoParam,"http://localhost:8080/itemInfo/insertBatch");
                    if(num.addAndGet(-count) <= 0){
                        System.out.println(num.get()) ;
                        break;
                    };
                    try {
                        Thread.sleep(10);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
            }).start();
        }
    }
    public static void doInsert(Object param,String url){
        HttpClientUtil instance = HttpClientUtil.getInstance();
        String message = instance.sendHttpPost(url, JsonUtil.objectToJson(param));
        System.out.println(message) ;
    }
    public static List<ItemInfo> getItemInfoList(int count){
        List<ItemInfo> itemInfoList = new ArrayList<>() ;
        Random random = new Random();
        String[] itemUnits = {"个","套" , "盒" , "袋"} ;
        for(int i = 0 ; i < count ; i ++){
            String randomString = UUID.randomUUID().toString() ;
            ItemInfo itemInfo = new ItemInfo();
            itemInfo.setItemInfoId(System.currentTimeMillis() + i);
            itemInfo.setShopId("No-" + randomString.substring(0,5) + i);
            itemInfo.setItemNo("No-" + randomString.substring(0,i%10) + System.currentTimeMillis() + "-" + i);
            itemInfo.setBranchNo(i + "");
            itemInfo.setItemName("商品-" + i);
            itemInfo.setItemUnit(itemUnits[count%itemUnits.length]);
            itemInfo.setTypeNo(random.nextInt(10000) + "");
            itemInfo.setBranchName(randomString.substring(0,random.nextInt(randomString.length())));
            itemInfo.setPurchaseNum(i);
            itemInfo.setItemSpec("MAMWMXAFNZ");
            itemInfo.setItemPrice(new Double(random.nextInt(1000) + 10));
            itemInfo.setItemOldPrice(new Double(random.nextInt(1000) + 10));
            itemInfo.setItemPromotePrice(new Double(random.nextInt(1000) + 10));
            itemInfo.setIsDelete('0');
            itemInfo.setIsHot(random.nextBoolean() ? '1':'0');
            itemInfo.setIsBest(random.nextBoolean() ? 'Y':'N');
            itemInfo.setOperDate(new Date());
            itemInfo.setBranchNo(randomString.substring(0,5) + i);
            itemInfo.setIntOrder(random.nextInt(100000));
            itemInfo.setIsStock((byte) random.nextInt(2));
            itemInfo.setItemDesc(randomString);
            itemInfoList.add(itemInfo) ;
        }
        return itemInfoList ;
    }

}