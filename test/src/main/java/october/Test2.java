package october;

import org.hibernate.validator.constraints.NotBlank;
import org.junit.Test;

import java.io.*;
import java.util.HashMap;
import java.util.Map;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-10-18 19:40
 **/
public class Test2 {

    public static void main(String[] args) {
        Map<String, String> map = new HashMap<>();
        map.put("shopId", "@ApiModelProperty(value = \"商户Id\", required = true)");
        map.put("fromTag", "@ApiModelProperty(value = \"请求来源（1：来自微信小程序，2：来自支付宝小程序，无值默认来自微信）\")");
        map.put("appId", "@ApiModelProperty(value = \"第三方平台 appid\")");
        map.put("openId", "@ApiModelProperty(value = \"微信ID\")");
        map.put("continueScanFlag", "@ApiModelProperty(value = \"是否连续扫码标志，1：是，2：否\")");
        map.put("barcode", "@ApiModelProperty(value = \"商品条码\")");
        map.put("branchNo", "@ApiModelProperty(value = \"门店编号\")");
        map.put("phone", "@ApiModelProperty(value = \"手机号码\")");
        map.put("payWay", "    @ApiModelProperty(value = \"1、线下支付,2、储值卡支付，3、微信支付 4、支付宝支付\")\n");
        map.put("orderNo", "    @ApiModelProperty(value = \"订单编号\")\n");
        map.put("price", "    @ApiModelProperty(value = \"订单编号\")\n");
    }
    @Test
    public void test1() throws IOException {
        File file = new File("C:\\Users\\xieqx\\Desktop\\work\\扫码购\\2.5\\SissO2O.Mall.Api\\Common");
        if(file.isDirectory()) {
            File[] files = file.listFiles();
            for (int i = 0; i < files.length; i++) {
                File currentFile = files[i];
                BufferedReader reader = new BufferedReader(new InputStreamReader(new FileInputStream(currentFile)));
                String str = null;
                while ((str = reader.readLine()) != null) {
                    System.out.println(str) ;
                }
            }
        }
    }

}