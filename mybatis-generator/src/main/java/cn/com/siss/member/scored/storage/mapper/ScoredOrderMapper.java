package cn.com.siss.member.scored.storage.mapper;

import cn.com.siss.member.scored.api.domain.ScoredOrder;
import cn.com.siss.member.scored.api.domain.ScoredOrderExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ScoredOrderMapper {
    int countByExample(ScoredOrderExample example);

    int deleteByExample(ScoredOrderExample example);

    int deleteByPrimaryKey(Long id);

    int insert(ScoredOrder record);

    int insertSelective(ScoredOrder record);

    List<ScoredOrder> selectByExample(ScoredOrderExample example);

    ScoredOrder selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") ScoredOrder record, @Param("example") ScoredOrderExample example);

    int updateByExample(@Param("record") ScoredOrder record, @Param("example") ScoredOrderExample example);

    int updateByPrimaryKeySelective(ScoredOrder record);

    int updateByPrimaryKey(ScoredOrder record);
}