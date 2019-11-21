package october;

import javax.validation.Valid;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-10-19 11:29
 **/
public class TestValid {

    public static void main(String[] args) {
        TestValid testValid = new TestValid();
        Description description = new Description();
        testValid.demo(description);
    }

    public void demo(@Valid Description description) {
        System.out.println(description) ;
    }

}