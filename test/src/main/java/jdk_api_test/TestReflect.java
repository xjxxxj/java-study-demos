package jdk_api_test;

import org.apache.commons.lang3.StringUtils;
import org.junit.Test;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-09-24 10:08
 **/
public class TestReflect {
    @Test
    public void Test() throws NoSuchMethodException, InvocationTargetException, IllegalAccessException {
        Object object = 4L;
        TestReflect testReflect = new TestReflect();
        Method method = TestReflect.class.getMethod("setString", Long.class);
        method.invoke(testReflect, object);
    }
    @Test
    public void TestBaseType() {
        String string = "5";
        System.out.println(string + "is baseType ->" + isBaseType(string)) ;
        int a = 6;
        System.out.println(a + "is baseType -> " + isBaseType(a)) ;
        TestReflect testReflect = new TestReflect();
        System.out.println(testReflect + "isBaseType ->" + isBaseType(testReflect)) ;
    }
    @Test
    public void TestTypeClassString() {
        Long l = Long.valueOf(1);
        System.out.println(l.getClass().toString()) ;
        System.out.println(Integer.class.toString()) ;
        System.out.println(Long.class.toString()) ;
        System.out.println(String.class.toString()) ;
        System.out.println(Short.class.toString()) ;
        System.out.println(Float.class.toString()) ;
        System.out.println(Double.class.toString()) ;
        System.out.println(Byte.class.toString()) ;
        System.out.println(Character.class.toString()) ;
        System.out.println(Boolean.class.toString()) ;
        System.out.println(Date.class.toString()) ;
        System.out.println(BigDecimal.class.toString()) ;
    }
    public void setString(Long value) {
        System.out.println(value) ;
    }

    public boolean isBaseType(Object object) {
        List<Class> baseTypeList = new ArrayList<>();
        baseTypeList.add(Double.class);
        baseTypeList.add(Integer.class);
        baseTypeList.add(Long.class);
        baseTypeList.add(String.class);
        baseTypeList.add(Short.class);
        baseTypeList.add(Byte.class);
        baseTypeList.add(Float.class);
        baseTypeList.add(String.class);
        StringBuffer buffer = new StringBuffer();
        baseTypeList.stream().forEach(item -> {
            if(object.getClass().equals(item)) {
                buffer.append("true");
            }
        });
        return StringUtils.isNotBlank(buffer.toString());
    }

}