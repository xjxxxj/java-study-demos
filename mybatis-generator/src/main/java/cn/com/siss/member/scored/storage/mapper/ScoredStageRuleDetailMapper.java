package cn.com.siss.member.scored.storage.mapper;

import cn.com.siss.member.scored.api.domain.ScoredStageRuleDetail;
import cn.com.siss.member.scored.api.domain.ScoredStageRuleDetailExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ScoredStageRuleDetailMapper {
    int countByExample(ScoredStageRuleDetailExample example);

    int deleteByExample(ScoredStageRuleDetailExample example);

    int deleteByPrimaryKey(Long id);

    int insert(ScoredStageRuleDetail record);

    int insertSelective(ScoredStageRuleDetail record);

    List<ScoredStageRuleDetail> selectByExample(ScoredStageRuleDetailExample example);

    ScoredStageRuleDetail selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") ScoredStageRuleDetail record, @Param("example") ScoredStageRuleDetailExample example);

    int updateByExample(@Param("record") ScoredStageRuleDetail record, @Param("example") ScoredStageRuleDetailExample example);

    int updateByPrimaryKeySelective(ScoredStageRuleDetail record);

    int updateByPrimaryKey(ScoredStageRuleDetail record);
}