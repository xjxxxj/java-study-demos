package cn.com.siss.member.system.storage.mapper;

import cn.com.siss.member.system.api.domain.ScoredDumpRule;
import cn.com.siss.member.system.api.domain.ScoredDumpRuleExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ScoredDumpRuleMapper {
    int countByExample(ScoredDumpRuleExample example);

    int deleteByExample(ScoredDumpRuleExample example);

    int deleteByPrimaryKey(Long id);

    int insert(ScoredDumpRule record);

    int insertSelective(ScoredDumpRule record);

    List<ScoredDumpRule> selectByExample(ScoredDumpRuleExample example);

    ScoredDumpRule selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") ScoredDumpRule record, @Param("example") ScoredDumpRuleExample example);

    int updateByExample(@Param("record") ScoredDumpRule record, @Param("example") ScoredDumpRuleExample example);

    int updateByPrimaryKeySelective(ScoredDumpRule record);

    int updateByPrimaryKey(ScoredDumpRule record);
}