package cn.com.siss.member.scored.storage.mapper;

import cn.com.siss.member.scored.api.domain.ScoredOrder1000003;
import cn.com.siss.member.scored.api.domain.ScoredOrder1000003Example;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ScoredOrder1000003Mapper {
    int countByExample(ScoredOrder1000003Example example);

    int deleteByExample(ScoredOrder1000003Example example);

    int deleteByPrimaryKey(Long id);

    int insert(ScoredOrder1000003 record);

    int insertSelective(ScoredOrder1000003 record);

    List<ScoredOrder1000003> selectByExample(ScoredOrder1000003Example example);

    ScoredOrder1000003 selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") ScoredOrder1000003 record, @Param("example") ScoredOrder1000003Example example);

    int updateByExample(@Param("record") ScoredOrder1000003 record, @Param("example") ScoredOrder1000003Example example);

    int updateByPrimaryKeySelective(ScoredOrder1000003 record);

    int updateByPrimaryKey(ScoredOrder1000003 record);
}