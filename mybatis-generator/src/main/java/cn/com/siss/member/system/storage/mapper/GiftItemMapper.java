package cn.com.siss.member.system.storage.mapper;

import cn.com.siss.member.system.api.domain.GiftItem;
import cn.com.siss.member.system.api.domain.GiftItemExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface GiftItemMapper {
    int countByExample(GiftItemExample example);

    int deleteByExample(GiftItemExample example);

    int deleteByPrimaryKey(Long id);

    int insert(GiftItem record);

    int insertSelective(GiftItem record);

    List<GiftItem> selectByExample(GiftItemExample example);

    GiftItem selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") GiftItem record, @Param("example") GiftItemExample example);

    int updateByExample(@Param("record") GiftItem record, @Param("example") GiftItemExample example);

    int updateByPrimaryKeySelective(GiftItem record);

    int updateByPrimaryKey(GiftItem record);
}