package cn.com.siss.member.user.storage.mapper;

import cn.com.siss.member.user.api.domain.MemberUpgradeLogs;
import cn.com.siss.member.user.api.domain.MemberUpgradeLogsExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface MemberUpgradeLogsMapper {
    int countByExample(MemberUpgradeLogsExample example);

    int deleteByExample(MemberUpgradeLogsExample example);

    int deleteByPrimaryKey(Long id);

    int insert(MemberUpgradeLogs record);

    int insertSelective(MemberUpgradeLogs record);

    List<MemberUpgradeLogs> selectByExample(MemberUpgradeLogsExample example);

    MemberUpgradeLogs selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") MemberUpgradeLogs record, @Param("example") MemberUpgradeLogsExample example);

    int updateByExample(@Param("record") MemberUpgradeLogs record, @Param("example") MemberUpgradeLogsExample example);

    int updateByPrimaryKeySelective(MemberUpgradeLogs record);

    int updateByPrimaryKey(MemberUpgradeLogs record);
}