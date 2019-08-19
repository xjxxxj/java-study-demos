package cn.com.siss.member.scored.storage.mapper;

import cn.com.siss.member.scored.api.domain.ScoredRule;
import cn.com.siss.member.scored.api.domain.ScoredRuleExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ScoredRuleMapper {
    int countByExample(ScoredRuleExample example);

    int deleteByExample(ScoredRuleExample example);

    int deleteByPrimaryKey(Long id);

    int insert(ScoredRule record);

    int insertSelective(ScoredRule record);

    List<ScoredRule> selectByExample(ScoredRuleExample example);

    ScoredRule selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") ScoredRule record, @Param("example") ScoredRuleExample example);

    int updateByExample(@Param("record") ScoredRule record, @Param("example") ScoredRuleExample example);

    int updateByPrimaryKeySelective(ScoredRule record);

    int updateByPrimaryKey(ScoredRule record);
}