package cn.com.siss.member.system.storage.mapper;

import cn.com.siss.member.system.api.domain.RebateDetail;
import cn.com.siss.member.system.api.domain.RebateDetailExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface RebateDetailMapper {
    int countByExample(RebateDetailExample example);

    int deleteByExample(RebateDetailExample example);

    int deleteByPrimaryKey(Long id);

    int insert(RebateDetail record);

    int insertSelective(RebateDetail record);

    List<RebateDetail> selectByExample(RebateDetailExample example);

    RebateDetail selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") RebateDetail record, @Param("example") RebateDetailExample example);

    int updateByExample(@Param("record") RebateDetail record, @Param("example") RebateDetailExample example);

    int updateByPrimaryKeySelective(RebateDetail record);

    int updateByPrimaryKey(RebateDetail record);
}