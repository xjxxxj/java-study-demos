package april.day14.prizedraw_2;

import org.springframework.util.CollectionUtils;

import java.util.*;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-04-13 08:59
 **/
public class LotteryDraw {
    //存储数量较少的奖品
    private Map<Integer, PrizeItem> corePrizeRate = new HashMap<>();
    private int defaultBallNum = 1000 ;
    //存储数量较多的奖品，1000个小球
    private Map<Integer, PrizeItem> otherPrizeRate = new HashMap<>(defaultBallNum) ;
    private int allStock ;
    private int allBallNum ;
    private int corePrizeRateCount ;

    /*抽奖活动**/
    private RewardPointsLottery rewardPointsLottery ;

    public RewardPointsLottery getRewardPointsLottery() {
        return rewardPointsLottery;
    }

    public LotteryDraw(RewardPointsLottery rewardPointsLottery) {
        this.rewardPointsLottery = rewardPointsLottery;
    }
    /**抽奖用户*/
    /**
     *
     * @param user 抽奖用户
     * @return [抽奖结果]
     */
    public String draw(User user){
        Random random = new Random();
        //是否中奖
        if(!isLucky()){
            return user + "——不中奖" ;
        }
        //判断奖品级别
        if(corePrizeRateCount > 0){//存在数量较少的奖品项
            int randomNum = random.nextInt(allStock) + 1 ;
            PrizeItem prizeItem = corePrizeRate.get(randomNum);
            if(prizeItem != null){//抽中数量极少的奖品项
                //扣库存
                if(prizeItem.reduceStock()){
                    return user + "——抽中奖品：" + prizeItem.getName() ;
                }
            }
        }
        //抽中其他奖品
        int randomBallNum = random.nextInt(allBallNum) + 1;
        PrizeItem prizeItem = otherPrizeRate.get(randomBallNum);
        if(prizeItem != null){
            //扣库存
            prizeItem.reduceStock() ;
            return user + "——抽中奖品：" + prizeItem.getName() ;
        }
        return user + "——不中奖" ;
    }
    private boolean isLucky() {
        int rate = rewardPointsLottery.getRate() ;//抽奖活动总中奖率，单位1/100
        int randomNum = new Random().nextInt(100) + 1 ;
        if(randomNum <= rate){
            return true ;
        }
        return false ;
    }

    /**
      * @Description:
      * 假设奖品总库存为N,使用两种算法，
      * 对于数量较少（占总数量<1/1000）的奖品（记为集合A）:
      *    遍历A，对于每个元素，在N范围内取一个随机数，以key=随机数，value=奖品标识的方式存在corePrizeRate中。
      * 对于其他奖品:
      *    根据占的比例，在1000个小球中分配小球（编号1,2，...,1000），以key=小球编号，value=奖品标识的方式存在otherPrizeRate中
      * @Author: 谢庆香
      * @Date: 2019/4/13
      * @Time: 9:26
    */
    public void initPrizeRate(){
        if(CollectionUtils.isEmpty(rewardPointsLottery.getPrizeItemList())){
            throw new RuntimeException("没有奖品") ;
        }
        allStock = rewardPointsLottery.getAllStock() ;//总奖品数量
        List<PrizeItem> corePrizeItemList = new ArrayList<>() ;//核心奖品
        List<PrizeItem> otherPrizeItemList = new ArrayList<>();//其他奖品
        Random random = new Random();
        int corePrizeIndex = 1 ;
        int coreStock = 0 ;
        int otherPrizeIndex = 1 ;
        for(PrizeItem prizeItem : rewardPointsLottery.getPrizeItemList()){
            int stock = prizeItem.getStock() ;//当前奖品数量
            if(stock*defaultBallNum/allStock < 1){//比例小于1/1000
                corePrizeItemList.add(prizeItem) ;
                coreStock += stock ;
            }
            otherPrizeItemList.add(prizeItem) ;
        }
        corePrizeRateCount = corePrizeItemList.size() ;
        for(PrizeItem prizeItem : corePrizeItemList){
            for(int i = 0 ; i < prizeItem.getStock() ; i ++){
                corePrizeRate.put(corePrizeIndex,prizeItem) ;
                corePrizeIndex ++ ;
            }
        }
        int otherStock = allStock - coreStock ;
        for(PrizeItem prizeItem : otherPrizeItemList){
            int stock = prizeItem.getStock() ;//当前奖品数量
            int ballNum = (stock* defaultBallNum/otherStock)  ;//小球数量
            for(int i = 0 ; i < ballNum ; i ++){
                otherPrizeRate.put(otherPrizeIndex,prizeItem) ;
                otherPrizeIndex ++ ;
            }
        }
        this.allBallNum = otherPrizeRate.size() ;
    }




}