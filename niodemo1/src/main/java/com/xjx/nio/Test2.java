package com.xjx.nio;

import java.nio.IntBuffer;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-03-10 13:09
 **/
public class Test2 {

    public static void main(String[] args) {
        IntBuffer allocate = IntBuffer.allocate(12);
        int[] intArray = new int[5] ;
        intArray[0] = 100 ;
        IntBuffer wrap = IntBuffer.wrap(intArray);
        System.out.println(wrap) ;
    }

}