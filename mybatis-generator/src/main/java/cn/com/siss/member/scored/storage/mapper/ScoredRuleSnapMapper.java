package cn.com.siss.member.scored.storage.mapper;

import cn.com.siss.member.scored.api.domain.ScoredRuleSnap;
import cn.com.siss.member.scored.api.domain.ScoredRuleSnapExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ScoredRuleSnapMapper {
    int countByExample(ScoredRuleSnapExample example);

    int deleteByExample(ScoredRuleSnapExample example);

    int deleteByPrimaryKey(Long id);

    int insert(ScoredRuleSnap record);

    int insertSelective(ScoredRuleSnap record);

    List<ScoredRuleSnap> selectByExample(ScoredRuleSnapExample example);

    ScoredRuleSnap selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") ScoredRuleSnap record, @Param("example") ScoredRuleSnapExample example);

    int updateByExample(@Param("record") ScoredRuleSnap record, @Param("example") ScoredRuleSnapExample example);

    int updateByPrimaryKeySelective(ScoredRuleSnap record);

    int updateByPrimaryKey(ScoredRuleSnap record);
}