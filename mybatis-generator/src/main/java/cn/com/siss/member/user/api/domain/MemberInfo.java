package cn.com.siss.member.user.api.domain;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

public class MemberInfo implements Serializable {
    /**
     * 会员ID
     * 表字段 : member_info.id
     */
    private Long id;

    /**
     * 商户编号
     * 表字段 : member_info.merchant_id
     */
    private Long merchantId;

    /**
     * 所属门店ID
     * 表字段 : member_info.branch_id
     */
    private Long branchId;

    /**
     * 所属门店编号
     * 表字段 : member_info.branch_no
     */
    private String branchNo;

    /**
     * 所属门店名称
     * 表字段 : member_info.branch_name
     */
    private String branchName;

    /**
     * 会员类别(等级)ID
     * 表字段 : member_info.level_id
     */
    private Long levelId;

    /**
     * 会员类别(等级)编号
     * 表字段 : member_info.level_no
     */
    private String levelNo;

    /**
     * 会员类别(等级)名称
     * 表字段 : member_info.level_name
     */
    private String levelName;

    /**
     * 会员卡(编)号
     * 表字段 : member_info.member_no
     */
    private String memberNo;

    /**
     * 会员姓名
     * 表字段 : member_info.member_name
     */
    private String memberName;

    /**
     * 会员手机号
     * 表字段 : member_info.member_mobile
     */
    private String memberMobile;

    /**
     * 会员绑定微信ID
     * 表字段 : member_info.wechat_id
     */
    private String wechatId;

    /**
     * 身份证号
     * 表字段 : member_info.identity_card
     */
    private String identityCard;

    /**
     * 人脸识别编号
     * 表字段 : member_info.face_id
     */
    private String faceId;

    /**
     * 母卡ID
     * 表字段 : member_info.parent_member_id
     */
    private Long parentMemberId;

    /**
     * 母卡编号
     * 表字段 : member_info.parent_member_no
     */
    private String parentMemberNo;

    /**
     * 会员的会费(单位:分)
     * 表字段 : member_info.member_fee
     */
    private Integer memberFee;

    /**
     * 会员有效开始日期
     * 表字段 : member_info.start_date
     */
    private Date startDate;

    /**
     * 会员有效结束日期
     * 表字段 : member_info.end_date
     */
    private Date endDate;

    /**
     * 会员状态(1:正常; 2:挂失; 3:黑名单; 4:无效/过期; 5:做废)
     * 表字段 : member_info.status
     */
    private Integer status;

    /**
     * 操作会员信息的操作员ID
     * 表字段 : member_info.operate_id
     */
    private String operateId;

    /**
     * 入会日期
     * 表字段 : member_info.operate_date
     */
    private Date operateDate;

    /**
     * 会员生日
     * 表字段 : member_info.member_birthday
     */
    private Date memberBirthday;

    /**
     * 公农历标志(1:公历; 2:农历)
     * 表字段 : member_info.birth_flag
     */
    private Integer birthFlag;

    /**
     * 会员生日修改标识(1:未修改; 2:已更改)(允许会员修改一次)
     * 表字段 : member_info.birth_updated
     */
    private Integer birthUpdated;

    /**
     * 会员性别(1:女; 2:男; 3:其他)
     * 表字段 : member_info.member_sex
     */
    private Integer memberSex;

    /**
     * 婚姻状况(1:未婚; 2:已婚; 3:离异; 4:丧偶; 5:其它)
     * 表字段 : member_info.marriage
     */
    private Integer marriage;

    /**
     * 民族
     * 表字段 : member_info.nation
     */
    private String nation;

    /**
     * 血型
     * 表字段 : member_info.blood_type
     */
    private String bloodType;

    /**
     * 身高
     * 表字段 : member_info.height
     */
    private BigDecimal height;

    /**
     * 体重
     * 表字段 : member_info.weight
     */
    private BigDecimal weight;

    /**
     * 文化程度
     * 表字段 : member_info.degree
     */
    private String degree;

    /**
     * 联系电话
     * 表字段 : member_info.telephone
     */
    private String telephone;

    /**
     * 邮箱
     * 表字段 : member_info.email
     */
    private String email;

    /**
     * 邮政编码
     * 表字段 : member_info.zip_code
     */
    private String zipCode;

    /**
     * 通讯地址
     * 表字段 : member_info.address
     */
    private String address;

    /**
     * 户口所在地
     * 表字段 : member_info.register_place
     */
    private String registerPlace;

    /**
     * 居住地
     * 表字段 : member_info.live_place
     */
    private String livePlace;

    /**
     * 出生地
     * 表字段 : member_info.birth_place
     */
    private String birthPlace;

    /**
     * 工作单位
     * 表字段 : member_info.company
     */
    private String company;

    /**
     * 职务
     * 表字段 : member_info.duty
     */
    private String duty;

    /**
     * 收入水平
     * 表字段 : member_info.salary_level
     */
    private String salaryLevel;

    /**
     * 爱好
     * 表字段 : member_info.hobby
     */
    private String hobby;

    /**
     * 会员卡密码
     * 表字段 : member_info.password
     */
    private String password;

    /**
     * 创建时间
     * 表字段 : member_info.created_time
     */
    private Date createdTime;

    /**
     * 创建人
     * 表字段 : member_info.created_by
     */
    private String createdBy;

    /**
     * 更新时间
     * 表字段 : member_info.updated_time
     */
    private Date updatedTime;

    /**
     * 更新人
     * 表字段 : member_info.updated_by
     */
    private String updatedBy;

    /**
     * 备注
     * 表字段 : member_info.remark
     */
    private String remark;

    /**
     * 删除标识(1:在线; 2:删除)
     * 表字段 : member_info.deleted
     */
    private Integer deleted;

    private static final long serialVersionUID = 1L;

    public MemberInfo(Long id, Long merchantId, Long branchId, String branchNo, String branchName, Long levelId, String levelNo, String levelName, String memberNo, String memberName, String memberMobile, String wechatId, String identityCard, String faceId, Long parentMemberId, String parentMemberNo, Integer memberFee, Date startDate, Date endDate, Integer status, String operateId, Date operateDate, Date memberBirthday, Integer birthFlag, Integer birthUpdated, Integer memberSex, Integer marriage, String nation, String bloodType, BigDecimal height, BigDecimal weight, String degree, String telephone, String email, String zipCode, String address, String registerPlace, String livePlace, String birthPlace, String company, String duty, String salaryLevel, String hobby, String password, Date createdTime, String createdBy, Date updatedTime, String updatedBy, String remark, Integer deleted) {
        this.id = id;
        this.merchantId = merchantId;
        this.branchId = branchId;
        this.branchNo = branchNo;
        this.branchName = branchName;
        this.levelId = levelId;
        this.levelNo = levelNo;
        this.levelName = levelName;
        this.memberNo = memberNo;
        this.memberName = memberName;
        this.memberMobile = memberMobile;
        this.wechatId = wechatId;
        this.identityCard = identityCard;
        this.faceId = faceId;
        this.parentMemberId = parentMemberId;
        this.parentMemberNo = parentMemberNo;
        this.memberFee = memberFee;
        this.startDate = startDate;
        this.endDate = endDate;
        this.status = status;
        this.operateId = operateId;
        this.operateDate = operateDate;
        this.memberBirthday = memberBirthday;
        this.birthFlag = birthFlag;
        this.birthUpdated = birthUpdated;
        this.memberSex = memberSex;
        this.marriage = marriage;
        this.nation = nation;
        this.bloodType = bloodType;
        this.height = height;
        this.weight = weight;
        this.degree = degree;
        this.telephone = telephone;
        this.email = email;
        this.zipCode = zipCode;
        this.address = address;
        this.registerPlace = registerPlace;
        this.livePlace = livePlace;
        this.birthPlace = birthPlace;
        this.company = company;
        this.duty = duty;
        this.salaryLevel = salaryLevel;
        this.hobby = hobby;
        this.password = password;
        this.createdTime = createdTime;
        this.createdBy = createdBy;
        this.updatedTime = updatedTime;
        this.updatedBy = updatedBy;
        this.remark = remark;
        this.deleted = deleted;
    }

    public MemberInfo() {
        super();
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getMerchantId() {
        return merchantId;
    }

    public void setMerchantId(Long merchantId) {
        this.merchantId = merchantId;
    }

    public Long getBranchId() {
        return branchId;
    }

    public void setBranchId(Long branchId) {
        this.branchId = branchId;
    }

    public String getBranchNo() {
        return branchNo;
    }

    public void setBranchNo(String branchNo) {
        this.branchNo = branchNo == null ? null : branchNo.trim();
    }

    public String getBranchName() {
        return branchName;
    }

    public void setBranchName(String branchName) {
        this.branchName = branchName == null ? null : branchName.trim();
    }

    public Long getLevelId() {
        return levelId;
    }

    public void setLevelId(Long levelId) {
        this.levelId = levelId;
    }

    public String getLevelNo() {
        return levelNo;
    }

    public void setLevelNo(String levelNo) {
        this.levelNo = levelNo == null ? null : levelNo.trim();
    }

    public String getLevelName() {
        return levelName;
    }

    public void setLevelName(String levelName) {
        this.levelName = levelName == null ? null : levelName.trim();
    }

    public String getMemberNo() {
        return memberNo;
    }

    public void setMemberNo(String memberNo) {
        this.memberNo = memberNo == null ? null : memberNo.trim();
    }

    public String getMemberName() {
        return memberName;
    }

    public void setMemberName(String memberName) {
        this.memberName = memberName == null ? null : memberName.trim();
    }

    public String getMemberMobile() {
        return memberMobile;
    }

    public void setMemberMobile(String memberMobile) {
        this.memberMobile = memberMobile == null ? null : memberMobile.trim();
    }

    public String getWechatId() {
        return wechatId;
    }

    public void setWechatId(String wechatId) {
        this.wechatId = wechatId == null ? null : wechatId.trim();
    }

    public String getIdentityCard() {
        return identityCard;
    }

    public void setIdentityCard(String identityCard) {
        this.identityCard = identityCard == null ? null : identityCard.trim();
    }

    public String getFaceId() {
        return faceId;
    }

    public void setFaceId(String faceId) {
        this.faceId = faceId == null ? null : faceId.trim();
    }

    public Long getParentMemberId() {
        return parentMemberId;
    }

    public void setParentMemberId(Long parentMemberId) {
        this.parentMemberId = parentMemberId;
    }

    public String getParentMemberNo() {
        return parentMemberNo;
    }

    public void setParentMemberNo(String parentMemberNo) {
        this.parentMemberNo = parentMemberNo == null ? null : parentMemberNo.trim();
    }

    public Integer getMemberFee() {
        return memberFee;
    }

    public void setMemberFee(Integer memberFee) {
        this.memberFee = memberFee;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getOperateId() {
        return operateId;
    }

    public void setOperateId(String operateId) {
        this.operateId = operateId == null ? null : operateId.trim();
    }

    public Date getOperateDate() {
        return operateDate;
    }

    public void setOperateDate(Date operateDate) {
        this.operateDate = operateDate;
    }

    public Date getMemberBirthday() {
        return memberBirthday;
    }

    public void setMemberBirthday(Date memberBirthday) {
        this.memberBirthday = memberBirthday;
    }

    public Integer getBirthFlag() {
        return birthFlag;
    }

    public void setBirthFlag(Integer birthFlag) {
        this.birthFlag = birthFlag;
    }

    public Integer getBirthUpdated() {
        return birthUpdated;
    }

    public void setBirthUpdated(Integer birthUpdated) {
        this.birthUpdated = birthUpdated;
    }

    public Integer getMemberSex() {
        return memberSex;
    }

    public void setMemberSex(Integer memberSex) {
        this.memberSex = memberSex;
    }

    public Integer getMarriage() {
        return marriage;
    }

    public void setMarriage(Integer marriage) {
        this.marriage = marriage;
    }

    public String getNation() {
        return nation;
    }

    public void setNation(String nation) {
        this.nation = nation == null ? null : nation.trim();
    }

    public String getBloodType() {
        return bloodType;
    }

    public void setBloodType(String bloodType) {
        this.bloodType = bloodType == null ? null : bloodType.trim();
    }

    public BigDecimal getHeight() {
        return height;
    }

    public void setHeight(BigDecimal height) {
        this.height = height;
    }

    public BigDecimal getWeight() {
        return weight;
    }

    public void setWeight(BigDecimal weight) {
        this.weight = weight;
    }

    public String getDegree() {
        return degree;
    }

    public void setDegree(String degree) {
        this.degree = degree == null ? null : degree.trim();
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone == null ? null : telephone.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public String getZipCode() {
        return zipCode;
    }

    public void setZipCode(String zipCode) {
        this.zipCode = zipCode == null ? null : zipCode.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getRegisterPlace() {
        return registerPlace;
    }

    public void setRegisterPlace(String registerPlace) {
        this.registerPlace = registerPlace == null ? null : registerPlace.trim();
    }

    public String getLivePlace() {
        return livePlace;
    }

    public void setLivePlace(String livePlace) {
        this.livePlace = livePlace == null ? null : livePlace.trim();
    }

    public String getBirthPlace() {
        return birthPlace;
    }

    public void setBirthPlace(String birthPlace) {
        this.birthPlace = birthPlace == null ? null : birthPlace.trim();
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company == null ? null : company.trim();
    }

    public String getDuty() {
        return duty;
    }

    public void setDuty(String duty) {
        this.duty = duty == null ? null : duty.trim();
    }

    public String getSalaryLevel() {
        return salaryLevel;
    }

    public void setSalaryLevel(String salaryLevel) {
        this.salaryLevel = salaryLevel == null ? null : salaryLevel.trim();
    }

    public String getHobby() {
        return hobby;
    }

    public void setHobby(String hobby) {
        this.hobby = hobby == null ? null : hobby.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public Date getCreatedTime() {
        return createdTime;
    }

    public void setCreatedTime(Date createdTime) {
        this.createdTime = createdTime;
    }

    public String getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(String createdBy) {
        this.createdBy = createdBy == null ? null : createdBy.trim();
    }

    public Date getUpdatedTime() {
        return updatedTime;
    }

    public void setUpdatedTime(Date updatedTime) {
        this.updatedTime = updatedTime;
    }

    public String getUpdatedBy() {
        return updatedBy;
    }

    public void setUpdatedBy(String updatedBy) {
        this.updatedBy = updatedBy == null ? null : updatedBy.trim();
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }

    public Integer getDeleted() {
        return deleted;
    }

    public void setDeleted(Integer deleted) {
        this.deleted = deleted;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", merchantId=").append(merchantId);
        sb.append(", branchId=").append(branchId);
        sb.append(", branchNo=").append(branchNo);
        sb.append(", branchName=").append(branchName);
        sb.append(", levelId=").append(levelId);
        sb.append(", levelNo=").append(levelNo);
        sb.append(", levelName=").append(levelName);
        sb.append(", memberNo=").append(memberNo);
        sb.append(", memberName=").append(memberName);
        sb.append(", memberMobile=").append(memberMobile);
        sb.append(", wechatId=").append(wechatId);
        sb.append(", identityCard=").append(identityCard);
        sb.append(", faceId=").append(faceId);
        sb.append(", parentMemberId=").append(parentMemberId);
        sb.append(", parentMemberNo=").append(parentMemberNo);
        sb.append(", memberFee=").append(memberFee);
        sb.append(", startDate=").append(startDate);
        sb.append(", endDate=").append(endDate);
        sb.append(", status=").append(status);
        sb.append(", operateId=").append(operateId);
        sb.append(", operateDate=").append(operateDate);
        sb.append(", memberBirthday=").append(memberBirthday);
        sb.append(", birthFlag=").append(birthFlag);
        sb.append(", birthUpdated=").append(birthUpdated);
        sb.append(", memberSex=").append(memberSex);
        sb.append(", marriage=").append(marriage);
        sb.append(", nation=").append(nation);
        sb.append(", bloodType=").append(bloodType);
        sb.append(", height=").append(height);
        sb.append(", weight=").append(weight);
        sb.append(", degree=").append(degree);
        sb.append(", telephone=").append(telephone);
        sb.append(", email=").append(email);
        sb.append(", zipCode=").append(zipCode);
        sb.append(", address=").append(address);
        sb.append(", registerPlace=").append(registerPlace);
        sb.append(", livePlace=").append(livePlace);
        sb.append(", birthPlace=").append(birthPlace);
        sb.append(", company=").append(company);
        sb.append(", duty=").append(duty);
        sb.append(", salaryLevel=").append(salaryLevel);
        sb.append(", hobby=").append(hobby);
        sb.append(", password=").append(password);
        sb.append(", createdTime=").append(createdTime);
        sb.append(", createdBy=").append(createdBy);
        sb.append(", updatedTime=").append(updatedTime);
        sb.append(", updatedBy=").append(updatedBy);
        sb.append(", remark=").append(remark);
        sb.append(", deleted=").append(deleted);
        sb.append("]");
        return sb.toString();
    }
}