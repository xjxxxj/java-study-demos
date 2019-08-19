package cn.com.siss.member.scored.storage.mapper;

import cn.com.siss.member.scored.api.domain.ScoredStageRule;
import cn.com.siss.member.scored.api.domain.ScoredStageRuleExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ScoredStageRuleMapper {
    int countByExample(ScoredStageRuleExample example);

    int deleteByExample(ScoredStageRuleExample example);

    int deleteByPrimaryKey(Long id);

    int insert(ScoredStageRule record);

    int insertSelective(ScoredStageRule record);

    List<ScoredStageRule> selectByExample(ScoredStageRuleExample example);

    ScoredStageRule selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") ScoredStageRule record, @Param("example") ScoredStageRuleExample example);

    int updateByExample(@Param("record") ScoredStageRule record, @Param("example") ScoredStageRuleExample example);

    int updateByPrimaryKeySelective(ScoredStageRule record);

    int updateByPrimaryKey(ScoredStageRule record);
}