package xjx.demo.test.testoverstock;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-09-09 13:44
 **/
@Mapper
public interface TestProductMapper {
    Integer updateStock(@Param("id") Long id, @Param("changeStock") Integer changeStock);
}