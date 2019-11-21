package august;

public class Test {
    public static void main(String[] args) {
        test1();
    }
    public static void test1() {
        String ids = "3,4,5,";
        System.out.println(ids.split(",").length) ;
        String ids2 = "0,";
        System.out.println(ids2.split(",").length) ;
        String ids3 = "0";
        System.out.println(ids3.split(",").length) ;
    }
    public void method1(){
        System.out.println("method1") ;
        method2();
    }
    public void method2(){
        System.out.println("method2") ;
    }

}