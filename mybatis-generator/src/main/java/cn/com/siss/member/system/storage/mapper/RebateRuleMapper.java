package cn.com.siss.member.system.storage.mapper;

import cn.com.siss.member.system.api.domain.RebateRule;
import cn.com.siss.member.system.api.domain.RebateRuleExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface RebateRuleMapper {
    int countByExample(RebateRuleExample example);

    int deleteByExample(RebateRuleExample example);

    int deleteByPrimaryKey(Long id);

    int insert(RebateRule record);

    int insertSelective(RebateRule record);

    List<RebateRule> selectByExample(RebateRuleExample example);

    RebateRule selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") RebateRule record, @Param("example") RebateRuleExample example);

    int updateByExample(@Param("record") RebateRule record, @Param("example") RebateRuleExample example);

    int updateByPrimaryKeySelective(RebateRule record);

    int updateByPrimaryKey(RebateRule record);
}