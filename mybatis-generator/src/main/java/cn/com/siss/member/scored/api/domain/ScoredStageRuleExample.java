package cn.com.siss.member.scored.api.domain;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class ScoredStageRuleExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    protected Integer limitStart;

    protected Integer limitEnd;

    public ScoredStageRuleExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    public void setLimitStart(Integer limitStart) {
        this.limitStart=limitStart;
    }

    public Integer getLimitStart() {
        return limitStart;
    }

    public void setLimitEnd(Integer limitEnd) {
        this.limitEnd=limitEnd;
    }

    public Integer getLimitEnd() {
        return limitEnd;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Long value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Long value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Long value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Long value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Long value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Long value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Long> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Long> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Long value1, Long value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Long value1, Long value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andMerchantIdIsNull() {
            addCriterion("merchant_id is null");
            return (Criteria) this;
        }

        public Criteria andMerchantIdIsNotNull() {
            addCriterion("merchant_id is not null");
            return (Criteria) this;
        }

        public Criteria andMerchantIdEqualTo(Long value) {
            addCriterion("merchant_id =", value, "merchantId");
            return (Criteria) this;
        }

        public Criteria andMerchantIdNotEqualTo(Long value) {
            addCriterion("merchant_id <>", value, "merchantId");
            return (Criteria) this;
        }

        public Criteria andMerchantIdGreaterThan(Long value) {
            addCriterion("merchant_id >", value, "merchantId");
            return (Criteria) this;
        }

        public Criteria andMerchantIdGreaterThanOrEqualTo(Long value) {
            addCriterion("merchant_id >=", value, "merchantId");
            return (Criteria) this;
        }

        public Criteria andMerchantIdLessThan(Long value) {
            addCriterion("merchant_id <", value, "merchantId");
            return (Criteria) this;
        }

        public Criteria andMerchantIdLessThanOrEqualTo(Long value) {
            addCriterion("merchant_id <=", value, "merchantId");
            return (Criteria) this;
        }

        public Criteria andMerchantIdIn(List<Long> values) {
            addCriterion("merchant_id in", values, "merchantId");
            return (Criteria) this;
        }

        public Criteria andMerchantIdNotIn(List<Long> values) {
            addCriterion("merchant_id not in", values, "merchantId");
            return (Criteria) this;
        }

        public Criteria andMerchantIdBetween(Long value1, Long value2) {
            addCriterion("merchant_id between", value1, value2, "merchantId");
            return (Criteria) this;
        }

        public Criteria andMerchantIdNotBetween(Long value1, Long value2) {
            addCriterion("merchant_id not between", value1, value2, "merchantId");
            return (Criteria) this;
        }

        public Criteria andStageRuleNoIsNull() {
            addCriterion("stage_rule_no is null");
            return (Criteria) this;
        }

        public Criteria andStageRuleNoIsNotNull() {
            addCriterion("stage_rule_no is not null");
            return (Criteria) this;
        }

        public Criteria andStageRuleNoEqualTo(String value) {
            addCriterion("stage_rule_no =", value, "stageRuleNo");
            return (Criteria) this;
        }

        public Criteria andStageRuleNoNotEqualTo(String value) {
            addCriterion("stage_rule_no <>", value, "stageRuleNo");
            return (Criteria) this;
        }

        public Criteria andStageRuleNoGreaterThan(String value) {
            addCriterion("stage_rule_no >", value, "stageRuleNo");
            return (Criteria) this;
        }

        public Criteria andStageRuleNoGreaterThanOrEqualTo(String value) {
            addCriterion("stage_rule_no >=", value, "stageRuleNo");
            return (Criteria) this;
        }

        public Criteria andStageRuleNoLessThan(String value) {
            addCriterion("stage_rule_no <", value, "stageRuleNo");
            return (Criteria) this;
        }

        public Criteria andStageRuleNoLessThanOrEqualTo(String value) {
            addCriterion("stage_rule_no <=", value, "stageRuleNo");
            return (Criteria) this;
        }

        public Criteria andStageRuleNoLike(String value) {
            addCriterion("stage_rule_no like", value, "stageRuleNo");
            return (Criteria) this;
        }

        public Criteria andStageRuleNoNotLike(String value) {
            addCriterion("stage_rule_no not like", value, "stageRuleNo");
            return (Criteria) this;
        }

        public Criteria andStageRuleNoIn(List<String> values) {
            addCriterion("stage_rule_no in", values, "stageRuleNo");
            return (Criteria) this;
        }

        public Criteria andStageRuleNoNotIn(List<String> values) {
            addCriterion("stage_rule_no not in", values, "stageRuleNo");
            return (Criteria) this;
        }

        public Criteria andStageRuleNoBetween(String value1, String value2) {
            addCriterion("stage_rule_no between", value1, value2, "stageRuleNo");
            return (Criteria) this;
        }

        public Criteria andStageRuleNoNotBetween(String value1, String value2) {
            addCriterion("stage_rule_no not between", value1, value2, "stageRuleNo");
            return (Criteria) this;
        }

        public Criteria andTargetWayIsNull() {
            addCriterion("target_way is null");
            return (Criteria) this;
        }

        public Criteria andTargetWayIsNotNull() {
            addCriterion("target_way is not null");
            return (Criteria) this;
        }

        public Criteria andTargetWayEqualTo(Integer value) {
            addCriterion("target_way =", value, "targetWay");
            return (Criteria) this;
        }

        public Criteria andTargetWayNotEqualTo(Integer value) {
            addCriterion("target_way <>", value, "targetWay");
            return (Criteria) this;
        }

        public Criteria andTargetWayGreaterThan(Integer value) {
            addCriterion("target_way >", value, "targetWay");
            return (Criteria) this;
        }

        public Criteria andTargetWayGreaterThanOrEqualTo(Integer value) {
            addCriterion("target_way >=", value, "targetWay");
            return (Criteria) this;
        }

        public Criteria andTargetWayLessThan(Integer value) {
            addCriterion("target_way <", value, "targetWay");
            return (Criteria) this;
        }

        public Criteria andTargetWayLessThanOrEqualTo(Integer value) {
            addCriterion("target_way <=", value, "targetWay");
            return (Criteria) this;
        }

        public Criteria andTargetWayIn(List<Integer> values) {
            addCriterion("target_way in", values, "targetWay");
            return (Criteria) this;
        }

        public Criteria andTargetWayNotIn(List<Integer> values) {
            addCriterion("target_way not in", values, "targetWay");
            return (Criteria) this;
        }

        public Criteria andTargetWayBetween(Integer value1, Integer value2) {
            addCriterion("target_way between", value1, value2, "targetWay");
            return (Criteria) this;
        }

        public Criteria andTargetWayNotBetween(Integer value1, Integer value2) {
            addCriterion("target_way not between", value1, value2, "targetWay");
            return (Criteria) this;
        }

        public Criteria andMemberLevelIdIsNull() {
            addCriterion("member_level_id is null");
            return (Criteria) this;
        }

        public Criteria andMemberLevelIdIsNotNull() {
            addCriterion("member_level_id is not null");
            return (Criteria) this;
        }

        public Criteria andMemberLevelIdEqualTo(Long value) {
            addCriterion("member_level_id =", value, "memberLevelId");
            return (Criteria) this;
        }

        public Criteria andMemberLevelIdNotEqualTo(Long value) {
            addCriterion("member_level_id <>", value, "memberLevelId");
            return (Criteria) this;
        }

        public Criteria andMemberLevelIdGreaterThan(Long value) {
            addCriterion("member_level_id >", value, "memberLevelId");
            return (Criteria) this;
        }

        public Criteria andMemberLevelIdGreaterThanOrEqualTo(Long value) {
            addCriterion("member_level_id >=", value, "memberLevelId");
            return (Criteria) this;
        }

        public Criteria andMemberLevelIdLessThan(Long value) {
            addCriterion("member_level_id <", value, "memberLevelId");
            return (Criteria) this;
        }

        public Criteria andMemberLevelIdLessThanOrEqualTo(Long value) {
            addCriterion("member_level_id <=", value, "memberLevelId");
            return (Criteria) this;
        }

        public Criteria andMemberLevelIdIn(List<Long> values) {
            addCriterion("member_level_id in", values, "memberLevelId");
            return (Criteria) this;
        }

        public Criteria andMemberLevelIdNotIn(List<Long> values) {
            addCriterion("member_level_id not in", values, "memberLevelId");
            return (Criteria) this;
        }

        public Criteria andMemberLevelIdBetween(Long value1, Long value2) {
            addCriterion("member_level_id between", value1, value2, "memberLevelId");
            return (Criteria) this;
        }

        public Criteria andMemberLevelIdNotBetween(Long value1, Long value2) {
            addCriterion("member_level_id not between", value1, value2, "memberLevelId");
            return (Criteria) this;
        }

        public Criteria andMemberLevelNoIsNull() {
            addCriterion("member_level_no is null");
            return (Criteria) this;
        }

        public Criteria andMemberLevelNoIsNotNull() {
            addCriterion("member_level_no is not null");
            return (Criteria) this;
        }

        public Criteria andMemberLevelNoEqualTo(String value) {
            addCriterion("member_level_no =", value, "memberLevelNo");
            return (Criteria) this;
        }

        public Criteria andMemberLevelNoNotEqualTo(String value) {
            addCriterion("member_level_no <>", value, "memberLevelNo");
            return (Criteria) this;
        }

        public Criteria andMemberLevelNoGreaterThan(String value) {
            addCriterion("member_level_no >", value, "memberLevelNo");
            return (Criteria) this;
        }

        public Criteria andMemberLevelNoGreaterThanOrEqualTo(String value) {
            addCriterion("member_level_no >=", value, "memberLevelNo");
            return (Criteria) this;
        }

        public Criteria andMemberLevelNoLessThan(String value) {
            addCriterion("member_level_no <", value, "memberLevelNo");
            return (Criteria) this;
        }

        public Criteria andMemberLevelNoLessThanOrEqualTo(String value) {
            addCriterion("member_level_no <=", value, "memberLevelNo");
            return (Criteria) this;
        }

        public Criteria andMemberLevelNoLike(String value) {
            addCriterion("member_level_no like", value, "memberLevelNo");
            return (Criteria) this;
        }

        public Criteria andMemberLevelNoNotLike(String value) {
            addCriterion("member_level_no not like", value, "memberLevelNo");
            return (Criteria) this;
        }

        public Criteria andMemberLevelNoIn(List<String> values) {
            addCriterion("member_level_no in", values, "memberLevelNo");
            return (Criteria) this;
        }

        public Criteria andMemberLevelNoNotIn(List<String> values) {
            addCriterion("member_level_no not in", values, "memberLevelNo");
            return (Criteria) this;
        }

        public Criteria andMemberLevelNoBetween(String value1, String value2) {
            addCriterion("member_level_no between", value1, value2, "memberLevelNo");
            return (Criteria) this;
        }

        public Criteria andMemberLevelNoNotBetween(String value1, String value2) {
            addCriterion("member_level_no not between", value1, value2, "memberLevelNo");
            return (Criteria) this;
        }

        public Criteria andMemberLevelNameIsNull() {
            addCriterion("member_level_name is null");
            return (Criteria) this;
        }

        public Criteria andMemberLevelNameIsNotNull() {
            addCriterion("member_level_name is not null");
            return (Criteria) this;
        }

        public Criteria andMemberLevelNameEqualTo(String value) {
            addCriterion("member_level_name =", value, "memberLevelName");
            return (Criteria) this;
        }

        public Criteria andMemberLevelNameNotEqualTo(String value) {
            addCriterion("member_level_name <>", value, "memberLevelName");
            return (Criteria) this;
        }

        public Criteria andMemberLevelNameGreaterThan(String value) {
            addCriterion("member_level_name >", value, "memberLevelName");
            return (Criteria) this;
        }

        public Criteria andMemberLevelNameGreaterThanOrEqualTo(String value) {
            addCriterion("member_level_name >=", value, "memberLevelName");
            return (Criteria) this;
        }

        public Criteria andMemberLevelNameLessThan(String value) {
            addCriterion("member_level_name <", value, "memberLevelName");
            return (Criteria) this;
        }

        public Criteria andMemberLevelNameLessThanOrEqualTo(String value) {
            addCriterion("member_level_name <=", value, "memberLevelName");
            return (Criteria) this;
        }

        public Criteria andMemberLevelNameLike(String value) {
            addCriterion("member_level_name like", value, "memberLevelName");
            return (Criteria) this;
        }

        public Criteria andMemberLevelNameNotLike(String value) {
            addCriterion("member_level_name not like", value, "memberLevelName");
            return (Criteria) this;
        }

        public Criteria andMemberLevelNameIn(List<String> values) {
            addCriterion("member_level_name in", values, "memberLevelName");
            return (Criteria) this;
        }

        public Criteria andMemberLevelNameNotIn(List<String> values) {
            addCriterion("member_level_name not in", values, "memberLevelName");
            return (Criteria) this;
        }

        public Criteria andMemberLevelNameBetween(String value1, String value2) {
            addCriterion("member_level_name between", value1, value2, "memberLevelName");
            return (Criteria) this;
        }

        public Criteria andMemberLevelNameNotBetween(String value1, String value2) {
            addCriterion("member_level_name not between", value1, value2, "memberLevelName");
            return (Criteria) this;
        }

        public Criteria andBranchNosIsNull() {
            addCriterion("branch_nos is null");
            return (Criteria) this;
        }

        public Criteria andBranchNosIsNotNull() {
            addCriterion("branch_nos is not null");
            return (Criteria) this;
        }

        public Criteria andBranchNosEqualTo(String value) {
            addCriterion("branch_nos =", value, "branchNos");
            return (Criteria) this;
        }

        public Criteria andBranchNosNotEqualTo(String value) {
            addCriterion("branch_nos <>", value, "branchNos");
            return (Criteria) this;
        }

        public Criteria andBranchNosGreaterThan(String value) {
            addCriterion("branch_nos >", value, "branchNos");
            return (Criteria) this;
        }

        public Criteria andBranchNosGreaterThanOrEqualTo(String value) {
            addCriterion("branch_nos >=", value, "branchNos");
            return (Criteria) this;
        }

        public Criteria andBranchNosLessThan(String value) {
            addCriterion("branch_nos <", value, "branchNos");
            return (Criteria) this;
        }

        public Criteria andBranchNosLessThanOrEqualTo(String value) {
            addCriterion("branch_nos <=", value, "branchNos");
            return (Criteria) this;
        }

        public Criteria andBranchNosLike(String value) {
            addCriterion("branch_nos like", value, "branchNos");
            return (Criteria) this;
        }

        public Criteria andBranchNosNotLike(String value) {
            addCriterion("branch_nos not like", value, "branchNos");
            return (Criteria) this;
        }

        public Criteria andBranchNosIn(List<String> values) {
            addCriterion("branch_nos in", values, "branchNos");
            return (Criteria) this;
        }

        public Criteria andBranchNosNotIn(List<String> values) {
            addCriterion("branch_nos not in", values, "branchNos");
            return (Criteria) this;
        }

        public Criteria andBranchNosBetween(String value1, String value2) {
            addCriterion("branch_nos between", value1, value2, "branchNos");
            return (Criteria) this;
        }

        public Criteria andBranchNosNotBetween(String value1, String value2) {
            addCriterion("branch_nos not between", value1, value2, "branchNos");
            return (Criteria) this;
        }

        public Criteria andBranchNamesIsNull() {
            addCriterion("branch_names is null");
            return (Criteria) this;
        }

        public Criteria andBranchNamesIsNotNull() {
            addCriterion("branch_names is not null");
            return (Criteria) this;
        }

        public Criteria andBranchNamesEqualTo(String value) {
            addCriterion("branch_names =", value, "branchNames");
            return (Criteria) this;
        }

        public Criteria andBranchNamesNotEqualTo(String value) {
            addCriterion("branch_names <>", value, "branchNames");
            return (Criteria) this;
        }

        public Criteria andBranchNamesGreaterThan(String value) {
            addCriterion("branch_names >", value, "branchNames");
            return (Criteria) this;
        }

        public Criteria andBranchNamesGreaterThanOrEqualTo(String value) {
            addCriterion("branch_names >=", value, "branchNames");
            return (Criteria) this;
        }

        public Criteria andBranchNamesLessThan(String value) {
            addCriterion("branch_names <", value, "branchNames");
            return (Criteria) this;
        }

        public Criteria andBranchNamesLessThanOrEqualTo(String value) {
            addCriterion("branch_names <=", value, "branchNames");
            return (Criteria) this;
        }

        public Criteria andBranchNamesLike(String value) {
            addCriterion("branch_names like", value, "branchNames");
            return (Criteria) this;
        }

        public Criteria andBranchNamesNotLike(String value) {
            addCriterion("branch_names not like", value, "branchNames");
            return (Criteria) this;
        }

        public Criteria andBranchNamesIn(List<String> values) {
            addCriterion("branch_names in", values, "branchNames");
            return (Criteria) this;
        }

        public Criteria andBranchNamesNotIn(List<String> values) {
            addCriterion("branch_names not in", values, "branchNames");
            return (Criteria) this;
        }

        public Criteria andBranchNamesBetween(String value1, String value2) {
            addCriterion("branch_names between", value1, value2, "branchNames");
            return (Criteria) this;
        }

        public Criteria andBranchNamesNotBetween(String value1, String value2) {
            addCriterion("branch_names not between", value1, value2, "branchNames");
            return (Criteria) this;
        }

        public Criteria andStartTimeIsNull() {
            addCriterion("start_time is null");
            return (Criteria) this;
        }

        public Criteria andStartTimeIsNotNull() {
            addCriterion("start_time is not null");
            return (Criteria) this;
        }

        public Criteria andStartTimeEqualTo(Date value) {
            addCriterion("start_time =", value, "startTime");
            return (Criteria) this;
        }

        public Criteria andStartTimeNotEqualTo(Date value) {
            addCriterion("start_time <>", value, "startTime");
            return (Criteria) this;
        }

        public Criteria andStartTimeGreaterThan(Date value) {
            addCriterion("start_time >", value, "startTime");
            return (Criteria) this;
        }

        public Criteria andStartTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("start_time >=", value, "startTime");
            return (Criteria) this;
        }

        public Criteria andStartTimeLessThan(Date value) {
            addCriterion("start_time <", value, "startTime");
            return (Criteria) this;
        }

        public Criteria andStartTimeLessThanOrEqualTo(Date value) {
            addCriterion("start_time <=", value, "startTime");
            return (Criteria) this;
        }

        public Criteria andStartTimeIn(List<Date> values) {
            addCriterion("start_time in", values, "startTime");
            return (Criteria) this;
        }

        public Criteria andStartTimeNotIn(List<Date> values) {
            addCriterion("start_time not in", values, "startTime");
            return (Criteria) this;
        }

        public Criteria andStartTimeBetween(Date value1, Date value2) {
            addCriterion("start_time between", value1, value2, "startTime");
            return (Criteria) this;
        }

        public Criteria andStartTimeNotBetween(Date value1, Date value2) {
            addCriterion("start_time not between", value1, value2, "startTime");
            return (Criteria) this;
        }

        public Criteria andEndTimeIsNull() {
            addCriterion("end_time is null");
            return (Criteria) this;
        }

        public Criteria andEndTimeIsNotNull() {
            addCriterion("end_time is not null");
            return (Criteria) this;
        }

        public Criteria andEndTimeEqualTo(Date value) {
            addCriterion("end_time =", value, "endTime");
            return (Criteria) this;
        }

        public Criteria andEndTimeNotEqualTo(Date value) {
            addCriterion("end_time <>", value, "endTime");
            return (Criteria) this;
        }

        public Criteria andEndTimeGreaterThan(Date value) {
            addCriterion("end_time >", value, "endTime");
            return (Criteria) this;
        }

        public Criteria andEndTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("end_time >=", value, "endTime");
            return (Criteria) this;
        }

        public Criteria andEndTimeLessThan(Date value) {
            addCriterion("end_time <", value, "endTime");
            return (Criteria) this;
        }

        public Criteria andEndTimeLessThanOrEqualTo(Date value) {
            addCriterion("end_time <=", value, "endTime");
            return (Criteria) this;
        }

        public Criteria andEndTimeIn(List<Date> values) {
            addCriterion("end_time in", values, "endTime");
            return (Criteria) this;
        }

        public Criteria andEndTimeNotIn(List<Date> values) {
            addCriterion("end_time not in", values, "endTime");
            return (Criteria) this;
        }

        public Criteria andEndTimeBetween(Date value1, Date value2) {
            addCriterion("end_time between", value1, value2, "endTime");
            return (Criteria) this;
        }

        public Criteria andEndTimeNotBetween(Date value1, Date value2) {
            addCriterion("end_time not between", value1, value2, "endTime");
            return (Criteria) this;
        }

        public Criteria andAuditStatusIsNull() {
            addCriterion("audit_status is null");
            return (Criteria) this;
        }

        public Criteria andAuditStatusIsNotNull() {
            addCriterion("audit_status is not null");
            return (Criteria) this;
        }

        public Criteria andAuditStatusEqualTo(Integer value) {
            addCriterion("audit_status =", value, "auditStatus");
            return (Criteria) this;
        }

        public Criteria andAuditStatusNotEqualTo(Integer value) {
            addCriterion("audit_status <>", value, "auditStatus");
            return (Criteria) this;
        }

        public Criteria andAuditStatusGreaterThan(Integer value) {
            addCriterion("audit_status >", value, "auditStatus");
            return (Criteria) this;
        }

        public Criteria andAuditStatusGreaterThanOrEqualTo(Integer value) {
            addCriterion("audit_status >=", value, "auditStatus");
            return (Criteria) this;
        }

        public Criteria andAuditStatusLessThan(Integer value) {
            addCriterion("audit_status <", value, "auditStatus");
            return (Criteria) this;
        }

        public Criteria andAuditStatusLessThanOrEqualTo(Integer value) {
            addCriterion("audit_status <=", value, "auditStatus");
            return (Criteria) this;
        }

        public Criteria andAuditStatusIn(List<Integer> values) {
            addCriterion("audit_status in", values, "auditStatus");
            return (Criteria) this;
        }

        public Criteria andAuditStatusNotIn(List<Integer> values) {
            addCriterion("audit_status not in", values, "auditStatus");
            return (Criteria) this;
        }

        public Criteria andAuditStatusBetween(Integer value1, Integer value2) {
            addCriterion("audit_status between", value1, value2, "auditStatus");
            return (Criteria) this;
        }

        public Criteria andAuditStatusNotBetween(Integer value1, Integer value2) {
            addCriterion("audit_status not between", value1, value2, "auditStatus");
            return (Criteria) this;
        }

        public Criteria andRemarkIsNull() {
            addCriterion("remark is null");
            return (Criteria) this;
        }

        public Criteria andRemarkIsNotNull() {
            addCriterion("remark is not null");
            return (Criteria) this;
        }

        public Criteria andRemarkEqualTo(String value) {
            addCriterion("remark =", value, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkNotEqualTo(String value) {
            addCriterion("remark <>", value, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkGreaterThan(String value) {
            addCriterion("remark >", value, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkGreaterThanOrEqualTo(String value) {
            addCriterion("remark >=", value, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkLessThan(String value) {
            addCriterion("remark <", value, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkLessThanOrEqualTo(String value) {
            addCriterion("remark <=", value, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkLike(String value) {
            addCriterion("remark like", value, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkNotLike(String value) {
            addCriterion("remark not like", value, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkIn(List<String> values) {
            addCriterion("remark in", values, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkNotIn(List<String> values) {
            addCriterion("remark not in", values, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkBetween(String value1, String value2) {
            addCriterion("remark between", value1, value2, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkNotBetween(String value1, String value2) {
            addCriterion("remark not between", value1, value2, "remark");
            return (Criteria) this;
        }

        public Criteria andCreateTimeIsNull() {
            addCriterion("create_time is null");
            return (Criteria) this;
        }

        public Criteria andCreateTimeIsNotNull() {
            addCriterion("create_time is not null");
            return (Criteria) this;
        }

        public Criteria andCreateTimeEqualTo(Date value) {
            addCriterion("create_time =", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeNotEqualTo(Date value) {
            addCriterion("create_time <>", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeGreaterThan(Date value) {
            addCriterion("create_time >", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("create_time >=", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeLessThan(Date value) {
            addCriterion("create_time <", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeLessThanOrEqualTo(Date value) {
            addCriterion("create_time <=", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeIn(List<Date> values) {
            addCriterion("create_time in", values, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeNotIn(List<Date> values) {
            addCriterion("create_time not in", values, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeBetween(Date value1, Date value2) {
            addCriterion("create_time between", value1, value2, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeNotBetween(Date value1, Date value2) {
            addCriterion("create_time not between", value1, value2, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreatedByIsNull() {
            addCriterion("created_by is null");
            return (Criteria) this;
        }

        public Criteria andCreatedByIsNotNull() {
            addCriterion("created_by is not null");
            return (Criteria) this;
        }

        public Criteria andCreatedByEqualTo(String value) {
            addCriterion("created_by =", value, "createdBy");
            return (Criteria) this;
        }

        public Criteria andCreatedByNotEqualTo(String value) {
            addCriterion("created_by <>", value, "createdBy");
            return (Criteria) this;
        }

        public Criteria andCreatedByGreaterThan(String value) {
            addCriterion("created_by >", value, "createdBy");
            return (Criteria) this;
        }

        public Criteria andCreatedByGreaterThanOrEqualTo(String value) {
            addCriterion("created_by >=", value, "createdBy");
            return (Criteria) this;
        }

        public Criteria andCreatedByLessThan(String value) {
            addCriterion("created_by <", value, "createdBy");
            return (Criteria) this;
        }

        public Criteria andCreatedByLessThanOrEqualTo(String value) {
            addCriterion("created_by <=", value, "createdBy");
            return (Criteria) this;
        }

        public Criteria andCreatedByLike(String value) {
            addCriterion("created_by like", value, "createdBy");
            return (Criteria) this;
        }

        public Criteria andCreatedByNotLike(String value) {
            addCriterion("created_by not like", value, "createdBy");
            return (Criteria) this;
        }

        public Criteria andCreatedByIn(List<String> values) {
            addCriterion("created_by in", values, "createdBy");
            return (Criteria) this;
        }

        public Criteria andCreatedByNotIn(List<String> values) {
            addCriterion("created_by not in", values, "createdBy");
            return (Criteria) this;
        }

        public Criteria andCreatedByBetween(String value1, String value2) {
            addCriterion("created_by between", value1, value2, "createdBy");
            return (Criteria) this;
        }

        public Criteria andCreatedByNotBetween(String value1, String value2) {
            addCriterion("created_by not between", value1, value2, "createdBy");
            return (Criteria) this;
        }

        public Criteria andUpdatedTimeIsNull() {
            addCriterion("updated_time is null");
            return (Criteria) this;
        }

        public Criteria andUpdatedTimeIsNotNull() {
            addCriterion("updated_time is not null");
            return (Criteria) this;
        }

        public Criteria andUpdatedTimeEqualTo(Date value) {
            addCriterion("updated_time =", value, "updatedTime");
            return (Criteria) this;
        }

        public Criteria andUpdatedTimeNotEqualTo(Date value) {
            addCriterion("updated_time <>", value, "updatedTime");
            return (Criteria) this;
        }

        public Criteria andUpdatedTimeGreaterThan(Date value) {
            addCriterion("updated_time >", value, "updatedTime");
            return (Criteria) this;
        }

        public Criteria andUpdatedTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("updated_time >=", value, "updatedTime");
            return (Criteria) this;
        }

        public Criteria andUpdatedTimeLessThan(Date value) {
            addCriterion("updated_time <", value, "updatedTime");
            return (Criteria) this;
        }

        public Criteria andUpdatedTimeLessThanOrEqualTo(Date value) {
            addCriterion("updated_time <=", value, "updatedTime");
            return (Criteria) this;
        }

        public Criteria andUpdatedTimeIn(List<Date> values) {
            addCriterion("updated_time in", values, "updatedTime");
            return (Criteria) this;
        }

        public Criteria andUpdatedTimeNotIn(List<Date> values) {
            addCriterion("updated_time not in", values, "updatedTime");
            return (Criteria) this;
        }

        public Criteria andUpdatedTimeBetween(Date value1, Date value2) {
            addCriterion("updated_time between", value1, value2, "updatedTime");
            return (Criteria) this;
        }

        public Criteria andUpdatedTimeNotBetween(Date value1, Date value2) {
            addCriterion("updated_time not between", value1, value2, "updatedTime");
            return (Criteria) this;
        }

        public Criteria andUpdatedByIsNull() {
            addCriterion("updated_by is null");
            return (Criteria) this;
        }

        public Criteria andUpdatedByIsNotNull() {
            addCriterion("updated_by is not null");
            return (Criteria) this;
        }

        public Criteria andUpdatedByEqualTo(String value) {
            addCriterion("updated_by =", value, "updatedBy");
            return (Criteria) this;
        }

        public Criteria andUpdatedByNotEqualTo(String value) {
            addCriterion("updated_by <>", value, "updatedBy");
            return (Criteria) this;
        }

        public Criteria andUpdatedByGreaterThan(String value) {
            addCriterion("updated_by >", value, "updatedBy");
            return (Criteria) this;
        }

        public Criteria andUpdatedByGreaterThanOrEqualTo(String value) {
            addCriterion("updated_by >=", value, "updatedBy");
            return (Criteria) this;
        }

        public Criteria andUpdatedByLessThan(String value) {
            addCriterion("updated_by <", value, "updatedBy");
            return (Criteria) this;
        }

        public Criteria andUpdatedByLessThanOrEqualTo(String value) {
            addCriterion("updated_by <=", value, "updatedBy");
            return (Criteria) this;
        }

        public Criteria andUpdatedByLike(String value) {
            addCriterion("updated_by like", value, "updatedBy");
            return (Criteria) this;
        }

        public Criteria andUpdatedByNotLike(String value) {
            addCriterion("updated_by not like", value, "updatedBy");
            return (Criteria) this;
        }

        public Criteria andUpdatedByIn(List<String> values) {
            addCriterion("updated_by in", values, "updatedBy");
            return (Criteria) this;
        }

        public Criteria andUpdatedByNotIn(List<String> values) {
            addCriterion("updated_by not in", values, "updatedBy");
            return (Criteria) this;
        }

        public Criteria andUpdatedByBetween(String value1, String value2) {
            addCriterion("updated_by between", value1, value2, "updatedBy");
            return (Criteria) this;
        }

        public Criteria andUpdatedByNotBetween(String value1, String value2) {
            addCriterion("updated_by not between", value1, value2, "updatedBy");
            return (Criteria) this;
        }

        public Criteria andDeletedIsNull() {
            addCriterion("deleted is null");
            return (Criteria) this;
        }

        public Criteria andDeletedIsNotNull() {
            addCriterion("deleted is not null");
            return (Criteria) this;
        }

        public Criteria andDeletedEqualTo(Integer value) {
            addCriterion("deleted =", value, "deleted");
            return (Criteria) this;
        }

        public Criteria andDeletedNotEqualTo(Integer value) {
            addCriterion("deleted <>", value, "deleted");
            return (Criteria) this;
        }

        public Criteria andDeletedGreaterThan(Integer value) {
            addCriterion("deleted >", value, "deleted");
            return (Criteria) this;
        }

        public Criteria andDeletedGreaterThanOrEqualTo(Integer value) {
            addCriterion("deleted >=", value, "deleted");
            return (Criteria) this;
        }

        public Criteria andDeletedLessThan(Integer value) {
            addCriterion("deleted <", value, "deleted");
            return (Criteria) this;
        }

        public Criteria andDeletedLessThanOrEqualTo(Integer value) {
            addCriterion("deleted <=", value, "deleted");
            return (Criteria) this;
        }

        public Criteria andDeletedIn(List<Integer> values) {
            addCriterion("deleted in", values, "deleted");
            return (Criteria) this;
        }

        public Criteria andDeletedNotIn(List<Integer> values) {
            addCriterion("deleted not in", values, "deleted");
            return (Criteria) this;
        }

        public Criteria andDeletedBetween(Integer value1, Integer value2) {
            addCriterion("deleted between", value1, value2, "deleted");
            return (Criteria) this;
        }

        public Criteria andDeletedNotBetween(Integer value1, Integer value2) {
            addCriterion("deleted not between", value1, value2, "deleted");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}