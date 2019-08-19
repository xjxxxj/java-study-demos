package april.day13;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-04-15 09:24
 **/
public class Test {

    public static void main(String[] args) throws InterruptedException {
        RewardPointsLottery lottery = new RewardPointsLottery();
        lottery.setName("幸运之星抽奖活动");
        lottery.setRate(50);//50%中奖率
        List<PrizeItem> prizeItemList = new ArrayList<>() ;
        PrizeItem prizeItem_one = new PrizeItem("一等奖", 1);//一等奖1个
        PrizeItem prizeItem_two = new PrizeItem("二等奖", 10);//二等奖10个
        PrizeItem prizeItem_three = new PrizeItem("三等奖", 1000);//三等奖1000个
        PrizeItem prizeItem_four = new PrizeItem("四等奖", 100000);//四等奖10万个
        PrizeItem prizeItem_five = new PrizeItem("五等奖", 1000000);//五等奖100万个
        prizeItemList.add(prizeItem_one);
        prizeItemList.add(prizeItem_two) ;
        prizeItemList.add(prizeItem_three) ;
        prizeItemList.add(prizeItem_four) ;
        prizeItemList.add(prizeItem_five) ;
        lottery.setPrizeItemList(prizeItemList);//设置奖品
        //创建抽奖活动
        LotteryDraw lotteryDraw = new LotteryDraw(lottery);
        //初始化中奖率数据
        lotteryDraw.initPrizeRate();
        Random random = new Random();
        //并发抽奖
        for(int i = 0 ;i < 500 ; i ++){
            new Thread(()->{
                while (true){
                    User user = new User();
                    user.setUserId(System.currentTimeMillis() + random.nextInt(1000000000));
                    user.setName(Thread.currentThread().getName());
                    String draw = lotteryDraw.draw(user);
                    System.out.println(draw) ;
                    if(stockIsZero(lotteryDraw.getRewardPointsLottery().getPrizeItemList())){
                        System.out.println(lotteryDraw.getRewardPointsLottery()) ;
                        break;
                    }
                }
            }).start();
        }
    }

    private static boolean stockIsZero(List<PrizeItem> prizeItemList) {
        for(PrizeItem prizeItem:prizeItemList){
            if(prizeItem.getStock() > 0){
                return false ;
            }
        }
        return true ;
    }

}