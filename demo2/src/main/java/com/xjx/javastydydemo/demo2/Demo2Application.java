package com.xjx.javastydydemo.demo2;

import com.xjx.javastudydemo.demo1.Demo1Application;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

@SpringBootApplication
public class Demo2Application {

    public static void main(String[] args) throws IOException {

        String filePath = Demo1Application.class.getClassLoader().getResource("readme2.txt").getFile();
        BufferedReader bufferedReader = new BufferedReader(new FileReader(filePath));
        String str = null;
        while ((str = bufferedReader.readLine()) != null){
            System.out.println(str) ;
        }
    }

}
