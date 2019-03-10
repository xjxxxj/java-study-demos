import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import pojo.Student;

import java.io.IOException;
import java.io.InputStream;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-02-27 00:52
 **/
public class Test {

    public static void main( String[] args ) throws IOException {
        Student student = new Student();
        student.setName("xjx");
        InputStream inputStream = Resources.getResourceAsStream("mybatis_config.xml");
        SqlSessionFactory build = new SqlSessionFactoryBuilder().build(inputStream);
        SqlSession sqlSession = build.openSession();
        int insert = sqlSession.insert("insert", student);
        sqlSession.commit();
        System.out.println(insert) ;
    }

}