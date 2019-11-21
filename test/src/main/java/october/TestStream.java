package october;

import org.junit.Test;

import java.util.*;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.stream.Collectors;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-10-18 11:15
 **/
public class TestStream {



    @Test
    public void testListToMap() {
        List<Description> list = new ArrayList<>();
        for(int i = 0 ; i < 5; i ++ ) {
            Description description = new Description();
            description.setColumnName(i + "");
            description.setTableName("table-" + i);
            description.setMessage("-----" + i);
            list.add(description);
        }
        Map<String, Description> collect = list.parallelStream().collect(Collectors.toMap(Description::getColumnName, value -> value));
        System.out.println(collect) ;
    }
    //模仿数据库
    private static List<Student> repository = new ArrayList<>();
    static {
        for(int i = 0; i < 1000; i++) {
            Student student = new Student();
            student.setId(i);
            student.setName("name" + i);
        }
    }
    private List<Student> getByIds(List<Integer> ids) {
        List<Student> result = new CopyOnWriteArrayList<>();
        repository.parallelStream().forEach(item -> {
            if(ids.contains(item.getId())) {
                result.add(item);
            }
        });
        return result;
    }
    @Test
    public void testStream() {
        //要查的数据
        List<Integer> ids = new ArrayList<>();
        ids.add(1);
        ids.add(2);
        ids.add(3);
        ids.add(4);
        ids.add(4);
        ids.add(1);
        List<Student> metaData = getByIds(ids);
        Map<Integer, Student> idStudentMap = metaData.parallelStream().collect(Collectors.toMap(Student::getId, value -> value));
        //不需要保留顺序
        List<Student> resultUnSorted = new CopyOnWriteArrayList<>();
        ids.parallelStream().forEach(id -> {
            resultUnSorted.add(idStudentMap.get(id));
        });
        //需要保留顺序
        List<Student> resultSorted = new ArrayList<>();
        ids.stream().forEach(id -> {
            resultSorted.add(idStudentMap.get(id));
        });
    }


}