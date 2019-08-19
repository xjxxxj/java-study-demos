package april.day13;

import java.util.List;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-04-13 08:55
 **/
public class PrizeItem {

    private String name ;
    private Integer stock ;


    public PrizeItem(String name, Integer stock) {
        this.name = name;
        this.stock = stock;
    }
    //扣库存
    public synchronized boolean reduceStock(){
        if(stock > 0){
            stock -- ;
            return true ;
        }
        return false ;
    }
    public PrizeItem() {
    }

    @Override
    public String toString() {
        return "PrizeItem{" +
                "name='" + name + '\'' +
                ", stock=" + stock +
                '}';
    }

    public Integer getStock() {
        return stock;
    }

    public void setStock(Integer stock) {
        this.stock = stock;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}