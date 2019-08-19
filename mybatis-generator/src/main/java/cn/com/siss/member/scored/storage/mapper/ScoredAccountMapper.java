package cn.com.siss.member.scored.storage.mapper;

import cn.com.siss.member.scored.api.domain.ScoredAccount;
import cn.com.siss.member.scored.api.domain.ScoredAccountExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ScoredAccountMapper {
    int countByExample(ScoredAccountExample example);

    int deleteByExample(ScoredAccountExample example);

    int deleteByPrimaryKey(Long id);

    int insert(ScoredAccount record);

    int insertSelective(ScoredAccount record);

    List<ScoredAccount> selectByExample(ScoredAccountExample example);

    ScoredAccount selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") ScoredAccount record, @Param("example") ScoredAccountExample example);

    int updateByExample(@Param("record") ScoredAccount record, @Param("example") ScoredAccountExample example);

    int updateByPrimaryKeySelective(ScoredAccount record);

    int updateByPrimaryKey(ScoredAccount record);
}