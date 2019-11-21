package october;

import org.junit.Test;

import java.util.Arrays;
import java.util.List;

public class TestByteArray {

    @Test
    public void test1() {
        byte[] arr = {2,3,4,5};
        List<byte[]> bytes = Arrays.asList(arr).subList(1, arr.length - 1);
    }
}
