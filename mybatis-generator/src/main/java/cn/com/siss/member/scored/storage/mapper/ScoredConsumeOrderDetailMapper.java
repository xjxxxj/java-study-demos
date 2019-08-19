package cn.com.siss.member.scored.storage.mapper;

import cn.com.siss.member.scored.api.domain.ScoredConsumeOrderDetail;
import cn.com.siss.member.scored.api.domain.ScoredConsumeOrderDetailExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ScoredConsumeOrderDetailMapper {
    int countByExample(ScoredConsumeOrderDetailExample example);

    int deleteByExample(ScoredConsumeOrderDetailExample example);

    int deleteByPrimaryKey(Long id);

    int insert(ScoredConsumeOrderDetail record);

    int insertSelective(ScoredConsumeOrderDetail record);

    List<ScoredConsumeOrderDetail> selectByExample(ScoredConsumeOrderDetailExample example);

    ScoredConsumeOrderDetail selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") ScoredConsumeOrderDetail record, @Param("example") ScoredConsumeOrderDetailExample example);

    int updateByExample(@Param("record") ScoredConsumeOrderDetail record, @Param("example") ScoredConsumeOrderDetailExample example);

    int updateByPrimaryKeySelective(ScoredConsumeOrderDetail record);

    int updateByPrimaryKey(ScoredConsumeOrderDetail record);
}