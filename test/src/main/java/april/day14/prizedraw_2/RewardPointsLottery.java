package april.day14.prizedraw_2;

import org.springframework.util.CollectionUtils;

import java.util.List;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-04-13 08:57
 **/
public class RewardPointsLottery {

    private String name ;
    /*中奖率，单位：1/100**/
    private Integer rate ;
    private List<PrizeItem> prizeItemList ;

    public Integer getAllStock(){
        if(CollectionUtils.isEmpty(prizeItemList)){
            return 0 ;
        }
        int result = 0 ;
        for(PrizeItem prizeItem : prizeItemList){
            result += prizeItem.getStock() ;
        }
        return result ;
    }

    public List<PrizeItem> getPrizeItemList() {
        return prizeItemList;
    }

    public void setPrizeItemList(List<PrizeItem> prizeItemList) {
        this.prizeItemList = prizeItemList;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getRate() {
        return rate;
    }

    public void setRate(Integer rate) {
        this.rate = rate;
    }

    @Override
    public String toString() {
        return "RewardPointsLottery{" +
                "name='" + name + '\'' +
                ", rate=" + rate +
                ", prizeItemList=" + prizeItemList +
                '}';
    }
}