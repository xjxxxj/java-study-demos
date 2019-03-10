package com.xjx.nio;

import java.nio.IntBuffer;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-03-10 13:09
 **/
public class Test3 {

    public static void main(String[] args) {
        IntBuffer allocate = IntBuffer.allocate(100);
        for(int i = 0 ;i < 5 ; i ++){
            allocate.put(i) ;
        }
        allocate.limit(10) ;
        IntBuffer slice = allocate.slice();
        slice.put(6) ;
        slice.put(7) ;

        while (slice.hasRemaining()){
            System.out.println("slice" + slice.get()) ;
        }

        allocate.position(0) ;
        while (allocate.hasRemaining()){
            System.out.println("allocate" + allocate.get()) ;
        }

    }

}