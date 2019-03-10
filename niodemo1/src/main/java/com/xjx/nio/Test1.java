package com.xjx.nio;

import java.nio.IntBuffer;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-03-10 13:09
 **/
public class Test1 {

    public static void main(String[] args) {
        IntBuffer allocate = IntBuffer.allocate(12);
        for(int i = 0 ; i < 5 ; i ++){
            allocate.put(i) ;
        }
        allocate.flip() ;
        allocate.put(6) ;
        allocate.put(5) ;
        allocate.put(8) ;
        while (allocate.hasRemaining()){
            System.out.println(allocate.get()) ;
        }
    }

}