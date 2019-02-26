package write;

import com.alibaba.excel.EasyExcelFactory;
import com.alibaba.excel.ExcelWriter;
import com.alibaba.excel.metadata.Sheet;
import pojo.Student;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-02-25 16:53
 **/
public class TestWrite {

    public static void main(String[] args) throws FileNotFoundException {
        FileOutputStream out = new FileOutputStream("data.xlsx");
        ExcelWriter writer = EasyExcelFactory.getWriter(out);
        //写第一个sheet, sheet1  数据全是List<String> 无模型映射关系
        Sheet sheet1 = new Sheet(1, 3);
        sheet1.setSheetName("第一个sheet");
        //设置列宽 设置每列的宽度
        Map columnWidth = new HashMap();
        columnWidth.put(0,10000);
        columnWidth.put(1,40000);
        columnWidth.put(2,10000);
        columnWidth.put(3,10000);
        sheet1.setColumnWidthMap(columnWidth);
        sheet1.setHead(createTestListStringHead());
        //or 设置自适应宽度
        //sheet1.setAutoWidth(Boolean.TRUE);
        writer.write1(createTestListObject(), sheet1);

      /*  //写第二个sheet sheet2  模型上打有表头的注解，合并单元格
        Sheet sheet2 = new Sheet(2, 3, .class, "第二个sheet", null);
        sheet2.setTableStyle(createTableStyle());
        writer.write(createTestListJavaMode(), sheet2);

        //写第三个sheet包含多个table情况
        Sheet sheet3 = new Sheet(3, 0);
        sheet3.setSheetName("第三个sheet");
        Table table1 = new Table(1);
        table1.setHead(createTestListStringHead());
        writer.write1(createTestListObject(), sheet3, table1);

        //写sheet2  模型上打有表头的注解
        Table table2 = new Table(2);
        table2.setTableStyle(createTableStyle());
        table2.setClazz(JavaModel1.class);
        writer.write(createTestListJavaMode(), sheet3, table2);

        //关闭资源
        writer.finish();
        out.close();*/

    }

    private static List<List<Object>> createTestListObject() {
        List<List<Object>> datas = new ArrayList<List<Object>>() ;
        List<Object> data = new ArrayList<Object>() ;
        Student student1 = new Student();
        student1.setName("xxj");
        student1.setAge(23);
        data.add(student1) ;
        Student student2 = new Student();
        student2.setName("xqx");
        student2.setAge(24);
        data.add(student2) ;
        datas.add(data) ;
        return datas ;
    }

    private static List<List<String>> createTestListStringHead() {
        List<List<String>> headers = new ArrayList<List<String>>() ;
        List<String> header = new ArrayList<String>() ;
        header.add("名字") ;
        header.add("年龄") ;
        headers.add(header) ;
        return headers ;
    }

}