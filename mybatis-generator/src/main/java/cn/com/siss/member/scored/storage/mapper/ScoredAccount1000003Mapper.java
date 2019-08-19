package cn.com.siss.member.scored.storage.mapper;

import cn.com.siss.member.scored.api.domain.ScoredAccount1000003;
import cn.com.siss.member.scored.api.domain.ScoredAccount1000003Example;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ScoredAccount1000003Mapper {
    int countByExample(ScoredAccount1000003Example example);

    int deleteByExample(ScoredAccount1000003Example example);

    int deleteByPrimaryKey(Long id);

    int insert(ScoredAccount1000003 record);

    int insertSelective(ScoredAccount1000003 record);

    List<ScoredAccount1000003> selectByExample(ScoredAccount1000003Example example);

    ScoredAccount1000003 selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") ScoredAccount1000003 record, @Param("example") ScoredAccount1000003Example example);

    int updateByExample(@Param("record") ScoredAccount1000003 record, @Param("example") ScoredAccount1000003Example example);

    int updateByPrimaryKeySelective(ScoredAccount1000003 record);

    int updateByPrimaryKey(ScoredAccount1000003 record);
}