package com.xjx.javastudydemo.demo1;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.FileSystemResourceLoader;
import org.springframework.util.StringUtils;

import java.io.*;
import java.net.URL;
import java.util.Arrays;
import java.util.Scanner;

@SpringBootApplication
public class Demo1Application {

    public static void main(String[] args) throws IOException {
        String filePath = Demo1Application.class.getClassLoader().getResource("readme.txt").getFile();
        BufferedReader bufferedReader = new BufferedReader(new FileReader(filePath));
        String str = null;
        while ((str = bufferedReader.readLine()) != null){
            System.out.println(str) ;
        }
    }

}
