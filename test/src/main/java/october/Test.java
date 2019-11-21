package october;

import org.apache.commons.io.input.CharSequenceInputStream;
import org.springframework.util.StringUtils;
import sun.security.krb5.internal.crypto.Des;

import java.io.*;
import java.util.*;
import java.util.concurrent.ConcurrentHashMap;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-10-11 11:01
 **/
public class Test {

    public static void main(String[] args) throws IOException {

        File file = new File("H:\\resposity\\git\\github\\demo\\java-study-demos\\test\\src\\main\\java\\october\\2_5_all.sql");
        FileInputStream fileInputStream = new FileInputStream(file);
        ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
        byte[] buffer = new byte[1024];
        int len = 0;
        while ((len = fileInputStream.read(buffer)) != -1) {
            outputStream.write(buffer, 0, len);
        }
        String result = outputStream.toString();
        outputStream.close();
        fileInputStream.close();
        String[] tablesArr = result.split("create table");
        for(int i = 0; i < tablesArr.length; i ++) {
            tablesArr[i] = "create table" + tablesArr[i];
        }
        List<String> tablesList = Arrays.asList(tablesArr);
        tablesList = tablesList.subList(1, tablesList.size());
        File file1 = new File("H:\\resposity\\git\\github\\demo\\java-study-demos\\test\\src\\main\\java\\october\\dbo.sql");
        fileInputStream = new FileInputStream(file1);
        outputStream = new ByteArrayOutputStream();
        while ((len = fileInputStream.read(buffer)) != -1) {
            outputStream.write(buffer, 0, len);
        }
        String sqlServerStr = outputStream.toString();
        String[] sqlSplit = sqlServerStr.split("'MS_Description'");
        List<Description> descriptionList = new ArrayList<>();
        Arrays.asList(sqlSplit).parallelStream().forEach(item -> {
            if(item.startsWith(", N")) {
                Description description = new Description();
                String temp1 = item.replace(", N'", "");
                String message = temp1.substring(0, temp1.indexOf("',"));
                description.setMessage(message);
                descriptionList.add(description);
                String temp3 = item.split("'TABLE', N'")[1];
                try {
                    String tableName = temp3.substring(0, temp3.indexOf("',"));
                    description.setTableName(tableName);
                }catch (Exception e) {
                    temp3.substring(0,temp3.indexOf("'"));
                }
                if(item.contains("'COLUMN', N'")) {
                    String temp4 = item.split("'COLUMN', N'")[1];
                    String columnName = temp4.substring(0, temp4.indexOf("'"));
                    description.setColumnName(columnName);
                }
            }
        });
        Map<String, List<Description>> map = new ConcurrentHashMap<>();
        List<StringBuffer> bufferList = new ArrayList<>();
        for (Description description : descriptionList) {
            if(description != null && description.getTableName() != null) {
                if(map.get(description.getTableName()) == null) {
                    map.put(description.getTableName(),new ArrayList<Description>());
                }
                map.get(description.getTableName()).add(description);
            }
        }
        Set<String> strings = map.keySet();
        ArrayList<String> tempTableList = new ArrayList<>(tablesList);
        for(String s : strings) {
            //System.out.println("drop table if exists scan_code_mall." + s + ";") ;
            tablesList.stream().forEach(t -> {
                if(t.contains("scan_code_mall." + s)) {
                    List<Description> descriptionList1 = map.get(s);
                    String[] split = t.split("\r\n");
                    StringBuffer buffer1 = new StringBuffer();
                    StringBuffer tableComment = new StringBuffer();
                    descriptionList1.stream().forEach(item -> {
                        if(!StringUtils.isEmpty(item.getColumnName())) {
                            for(int j = 0; j < split.length; j ++) {
                                String s1 = split[j];
                                if(s1.contains(" " + item.getColumnName() + " ")) {
                                    split[j] = s1.replace(","," COMMENT '" + item.getMessage() + "',");
                                }
                            }
                        }else {
                            tableComment.append("alter table scan_code_mall." + item.getTableName() + " comment '" + item.getMessage() + "';");
                        }
                    });
                    for (String s2 : split) {
                        buffer1.append(s2 + "\r\n");
                    }
                    buffer1.append(tableComment + "\r\n");
                    bufferList.add(buffer1);
                    tempTableList.remove(t);
                }
            });
        }
        for(String str : tempTableList) {
            bufferList.add(new StringBuffer(str));
        }
        StringBuffer finalBuffer = new StringBuffer();
        for (StringBuffer stringBuffer : bufferList) {
            finalBuffer.append(stringBuffer.toString());
        }
        //System.out.println(finalBuffer) ;
    }
}