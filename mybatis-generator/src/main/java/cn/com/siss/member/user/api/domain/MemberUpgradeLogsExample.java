package cn.com.siss.member.user.api.domain;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class MemberUpgradeLogsExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    protected Integer limitStart;

    protected Integer limitEnd;

    public MemberUpgradeLogsExample() {
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

        public Criteria andMemberIdIsNull() {
            addCriterion("member_id is null");
            return (Criteria) this;
        }

        public Criteria andMemberIdIsNotNull() {
            addCriterion("member_id is not null");
            return (Criteria) this;
        }

        public Criteria andMemberIdEqualTo(Long value) {
            addCriterion("member_id =", value, "memberId");
            return (Criteria) this;
        }

        public Criteria andMemberIdNotEqualTo(Long value) {
            addCriterion("member_id <>", value, "memberId");
            return (Criteria) this;
        }

        public Criteria andMemberIdGreaterThan(Long value) {
            addCriterion("member_id >", value, "memberId");
            return (Criteria) this;
        }

        public Criteria andMemberIdGreaterThanOrEqualTo(Long value) {
            addCriterion("member_id >=", value, "memberId");
            return (Criteria) this;
        }

        public Criteria andMemberIdLessThan(Long value) {
            addCriterion("member_id <", value, "memberId");
            return (Criteria) this;
        }

        public Criteria andMemberIdLessThanOrEqualTo(Long value) {
            addCriterion("member_id <=", value, "memberId");
            return (Criteria) this;
        }

        public Criteria andMemberIdIn(List<Long> values) {
            addCriterion("member_id in", values, "memberId");
            return (Criteria) this;
        }

        public Criteria andMemberIdNotIn(List<Long> values) {
            addCriterion("member_id not in", values, "memberId");
            return (Criteria) this;
        }

        public Criteria andMemberIdBetween(Long value1, Long value2) {
            addCriterion("member_id between", value1, value2, "memberId");
            return (Criteria) this;
        }

        public Criteria andMemberIdNotBetween(Long value1, Long value2) {
            addCriterion("member_id not between", value1, value2, "memberId");
            return (Criteria) this;
        }

        public Criteria andMemberNoIsNull() {
            addCriterion("member_no is null");
            return (Criteria) this;
        }

        public Criteria andMemberNoIsNotNull() {
            addCriterion("member_no is not null");
            return (Criteria) this;
        }

        public Criteria andMemberNoEqualTo(String value) {
            addCriterion("member_no =", value, "memberNo");
            return (Criteria) this;
        }

        public Criteria andMemberNoNotEqualTo(String value) {
            addCriterion("member_no <>", value, "memberNo");
            return (Criteria) this;
        }

        public Criteria andMemberNoGreaterThan(String value) {
            addCriterion("member_no >", value, "memberNo");
            return (Criteria) this;
        }

        public Criteria andMemberNoGreaterThanOrEqualTo(String value) {
            addCriterion("member_no >=", value, "memberNo");
            return (Criteria) this;
        }

        public Criteria andMemberNoLessThan(String value) {
            addCriterion("member_no <", value, "memberNo");
            return (Criteria) this;
        }

        public Criteria andMemberNoLessThanOrEqualTo(String value) {
            addCriterion("member_no <=", value, "memberNo");
            return (Criteria) this;
        }

        public Criteria andMemberNoLike(String value) {
            addCriterion("member_no like", value, "memberNo");
            return (Criteria) this;
        }

        public Criteria andMemberNoNotLike(String value) {
            addCriterion("member_no not like", value, "memberNo");
            return (Criteria) this;
        }

        public Criteria andMemberNoIn(List<String> values) {
            addCriterion("member_no in", values, "memberNo");
            return (Criteria) this;
        }

        public Criteria andMemberNoNotIn(List<String> values) {
            addCriterion("member_no not in", values, "memberNo");
            return (Criteria) this;
        }

        public Criteria andMemberNoBetween(String value1, String value2) {
            addCriterion("member_no between", value1, value2, "memberNo");
            return (Criteria) this;
        }

        public Criteria andMemberNoNotBetween(String value1, String value2) {
            addCriterion("member_no not between", value1, value2, "memberNo");
            return (Criteria) this;
        }

        public Criteria andUpgradeWayIsNull() {
            addCriterion("upgrade_way is null");
            return (Criteria) this;
        }

        public Criteria andUpgradeWayIsNotNull() {
            addCriterion("upgrade_way is not null");
            return (Criteria) this;
        }

        public Criteria andUpgradeWayEqualTo(Integer value) {
            addCriterion("upgrade_way =", value, "upgradeWay");
            return (Criteria) this;
        }

        public Criteria andUpgradeWayNotEqualTo(Integer value) {
            addCriterion("upgrade_way <>", value, "upgradeWay");
            return (Criteria) this;
        }

        public Criteria andUpgradeWayGreaterThan(Integer value) {
            addCriterion("upgrade_way >", value, "upgradeWay");
            return (Criteria) this;
        }

        public Criteria andUpgradeWayGreaterThanOrEqualTo(Integer value) {
            addCriterion("upgrade_way >=", value, "upgradeWay");
            return (Criteria) this;
        }

        public Criteria andUpgradeWayLessThan(Integer value) {
            addCriterion("upgrade_way <", value, "upgradeWay");
            return (Criteria) this;
        }

        public Criteria andUpgradeWayLessThanOrEqualTo(Integer value) {
            addCriterion("upgrade_way <=", value, "upgradeWay");
            return (Criteria) this;
        }

        public Criteria andUpgradeWayIn(List<Integer> values) {
            addCriterion("upgrade_way in", values, "upgradeWay");
            return (Criteria) this;
        }

        public Criteria andUpgradeWayNotIn(List<Integer> values) {
            addCriterion("upgrade_way not in", values, "upgradeWay");
            return (Criteria) this;
        }

        public Criteria andUpgradeWayBetween(Integer value1, Integer value2) {
            addCriterion("upgrade_way between", value1, value2, "upgradeWay");
            return (Criteria) this;
        }

        public Criteria andUpgradeWayNotBetween(Integer value1, Integer value2) {
            addCriterion("upgrade_way not between", value1, value2, "upgradeWay");
            return (Criteria) this;
        }

        public Criteria andLevelQuotaIsNull() {
            addCriterion("level_quota is null");
            return (Criteria) this;
        }

        public Criteria andLevelQuotaIsNotNull() {
            addCriterion("level_quota is not null");
            return (Criteria) this;
        }

        public Criteria andLevelQuotaEqualTo(Integer value) {
            addCriterion("level_quota =", value, "levelQuota");
            return (Criteria) this;
        }

        public Criteria andLevelQuotaNotEqualTo(Integer value) {
            addCriterion("level_quota <>", value, "levelQuota");
            return (Criteria) this;
        }

        public Criteria andLevelQuotaGreaterThan(Integer value) {
            addCriterion("level_quota >", value, "levelQuota");
            return (Criteria) this;
        }

        public Criteria andLevelQuotaGreaterThanOrEqualTo(Integer value) {
            addCriterion("level_quota >=", value, "levelQuota");
            return (Criteria) this;
        }

        public Criteria andLevelQuotaLessThan(Integer value) {
            addCriterion("level_quota <", value, "levelQuota");
            return (Criteria) this;
        }

        public Criteria andLevelQuotaLessThanOrEqualTo(Integer value) {
            addCriterion("level_quota <=", value, "levelQuota");
            return (Criteria) this;
        }

        public Criteria andLevelQuotaIn(List<Integer> values) {
            addCriterion("level_quota in", values, "levelQuota");
            return (Criteria) this;
        }

        public Criteria andLevelQuotaNotIn(List<Integer> values) {
            addCriterion("level_quota not in", values, "levelQuota");
            return (Criteria) this;
        }

        public Criteria andLevelQuotaBetween(Integer value1, Integer value2) {
            addCriterion("level_quota between", value1, value2, "levelQuota");
            return (Criteria) this;
        }

        public Criteria andLevelQuotaNotBetween(Integer value1, Integer value2) {
            addCriterion("level_quota not between", value1, value2, "levelQuota");
            return (Criteria) this;
        }

        public Criteria andLevelIdIsNull() {
            addCriterion("level_id is null");
            return (Criteria) this;
        }

        public Criteria andLevelIdIsNotNull() {
            addCriterion("level_id is not null");
            return (Criteria) this;
        }

        public Criteria andLevelIdEqualTo(Long value) {
            addCriterion("level_id =", value, "levelId");
            return (Criteria) this;
        }

        public Criteria andLevelIdNotEqualTo(Long value) {
            addCriterion("level_id <>", value, "levelId");
            return (Criteria) this;
        }

        public Criteria andLevelIdGreaterThan(Long value) {
            addCriterion("level_id >", value, "levelId");
            return (Criteria) this;
        }

        public Criteria andLevelIdGreaterThanOrEqualTo(Long value) {
            addCriterion("level_id >=", value, "levelId");
            return (Criteria) this;
        }

        public Criteria andLevelIdLessThan(Long value) {
            addCriterion("level_id <", value, "levelId");
            return (Criteria) this;
        }

        public Criteria andLevelIdLessThanOrEqualTo(Long value) {
            addCriterion("level_id <=", value, "levelId");
            return (Criteria) this;
        }

        public Criteria andLevelIdIn(List<Long> values) {
            addCriterion("level_id in", values, "levelId");
            return (Criteria) this;
        }

        public Criteria andLevelIdNotIn(List<Long> values) {
            addCriterion("level_id not in", values, "levelId");
            return (Criteria) this;
        }

        public Criteria andLevelIdBetween(Long value1, Long value2) {
            addCriterion("level_id between", value1, value2, "levelId");
            return (Criteria) this;
        }

        public Criteria andLevelIdNotBetween(Long value1, Long value2) {
            addCriterion("level_id not between", value1, value2, "levelId");
            return (Criteria) this;
        }

        public Criteria andLevelNoIsNull() {
            addCriterion("level_no is null");
            return (Criteria) this;
        }

        public Criteria andLevelNoIsNotNull() {
            addCriterion("level_no is not null");
            return (Criteria) this;
        }

        public Criteria andLevelNoEqualTo(String value) {
            addCriterion("level_no =", value, "levelNo");
            return (Criteria) this;
        }

        public Criteria andLevelNoNotEqualTo(String value) {
            addCriterion("level_no <>", value, "levelNo");
            return (Criteria) this;
        }

        public Criteria andLevelNoGreaterThan(String value) {
            addCriterion("level_no >", value, "levelNo");
            return (Criteria) this;
        }

        public Criteria andLevelNoGreaterThanOrEqualTo(String value) {
            addCriterion("level_no >=", value, "levelNo");
            return (Criteria) this;
        }

        public Criteria andLevelNoLessThan(String value) {
            addCriterion("level_no <", value, "levelNo");
            return (Criteria) this;
        }

        public Criteria andLevelNoLessThanOrEqualTo(String value) {
            addCriterion("level_no <=", value, "levelNo");
            return (Criteria) this;
        }

        public Criteria andLevelNoLike(String value) {
            addCriterion("level_no like", value, "levelNo");
            return (Criteria) this;
        }

        public Criteria andLevelNoNotLike(String value) {
            addCriterion("level_no not like", value, "levelNo");
            return (Criteria) this;
        }

        public Criteria andLevelNoIn(List<String> values) {
            addCriterion("level_no in", values, "levelNo");
            return (Criteria) this;
        }

        public Criteria andLevelNoNotIn(List<String> values) {
            addCriterion("level_no not in", values, "levelNo");
            return (Criteria) this;
        }

        public Criteria andLevelNoBetween(String value1, String value2) {
            addCriterion("level_no between", value1, value2, "levelNo");
            return (Criteria) this;
        }

        public Criteria andLevelNoNotBetween(String value1, String value2) {
            addCriterion("level_no not between", value1, value2, "levelNo");
            return (Criteria) this;
        }

        public Criteria andLevelNameIsNull() {
            addCriterion("level_name is null");
            return (Criteria) this;
        }

        public Criteria andLevelNameIsNotNull() {
            addCriterion("level_name is not null");
            return (Criteria) this;
        }

        public Criteria andLevelNameEqualTo(String value) {
            addCriterion("level_name =", value, "levelName");
            return (Criteria) this;
        }

        public Criteria andLevelNameNotEqualTo(String value) {
            addCriterion("level_name <>", value, "levelName");
            return (Criteria) this;
        }

        public Criteria andLevelNameGreaterThan(String value) {
            addCriterion("level_name >", value, "levelName");
            return (Criteria) this;
        }

        public Criteria andLevelNameGreaterThanOrEqualTo(String value) {
            addCriterion("level_name >=", value, "levelName");
            return (Criteria) this;
        }

        public Criteria andLevelNameLessThan(String value) {
            addCriterion("level_name <", value, "levelName");
            return (Criteria) this;
        }

        public Criteria andLevelNameLessThanOrEqualTo(String value) {
            addCriterion("level_name <=", value, "levelName");
            return (Criteria) this;
        }

        public Criteria andLevelNameLike(String value) {
            addCriterion("level_name like", value, "levelName");
            return (Criteria) this;
        }

        public Criteria andLevelNameNotLike(String value) {
            addCriterion("level_name not like", value, "levelName");
            return (Criteria) this;
        }

        public Criteria andLevelNameIn(List<String> values) {
            addCriterion("level_name in", values, "levelName");
            return (Criteria) this;
        }

        public Criteria andLevelNameNotIn(List<String> values) {
            addCriterion("level_name not in", values, "levelName");
            return (Criteria) this;
        }

        public Criteria andLevelNameBetween(String value1, String value2) {
            addCriterion("level_name between", value1, value2, "levelName");
            return (Criteria) this;
        }

        public Criteria andLevelNameNotBetween(String value1, String value2) {
            addCriterion("level_name not between", value1, value2, "levelName");
            return (Criteria) this;
        }

        public Criteria andPreLevelIdIsNull() {
            addCriterion("pre_level_id is null");
            return (Criteria) this;
        }

        public Criteria andPreLevelIdIsNotNull() {
            addCriterion("pre_level_id is not null");
            return (Criteria) this;
        }

        public Criteria andPreLevelIdEqualTo(Long value) {
            addCriterion("pre_level_id =", value, "preLevelId");
            return (Criteria) this;
        }

        public Criteria andPreLevelIdNotEqualTo(Long value) {
            addCriterion("pre_level_id <>", value, "preLevelId");
            return (Criteria) this;
        }

        public Criteria andPreLevelIdGreaterThan(Long value) {
            addCriterion("pre_level_id >", value, "preLevelId");
            return (Criteria) this;
        }

        public Criteria andPreLevelIdGreaterThanOrEqualTo(Long value) {
            addCriterion("pre_level_id >=", value, "preLevelId");
            return (Criteria) this;
        }

        public Criteria andPreLevelIdLessThan(Long value) {
            addCriterion("pre_level_id <", value, "preLevelId");
            return (Criteria) this;
        }

        public Criteria andPreLevelIdLessThanOrEqualTo(Long value) {
            addCriterion("pre_level_id <=", value, "preLevelId");
            return (Criteria) this;
        }

        public Criteria andPreLevelIdIn(List<Long> values) {
            addCriterion("pre_level_id in", values, "preLevelId");
            return (Criteria) this;
        }

        public Criteria andPreLevelIdNotIn(List<Long> values) {
            addCriterion("pre_level_id not in", values, "preLevelId");
            return (Criteria) this;
        }

        public Criteria andPreLevelIdBetween(Long value1, Long value2) {
            addCriterion("pre_level_id between", value1, value2, "preLevelId");
            return (Criteria) this;
        }

        public Criteria andPreLevelIdNotBetween(Long value1, Long value2) {
            addCriterion("pre_level_id not between", value1, value2, "preLevelId");
            return (Criteria) this;
        }

        public Criteria andPreLevelNoIsNull() {
            addCriterion("pre_level_no is null");
            return (Criteria) this;
        }

        public Criteria andPreLevelNoIsNotNull() {
            addCriterion("pre_level_no is not null");
            return (Criteria) this;
        }

        public Criteria andPreLevelNoEqualTo(String value) {
            addCriterion("pre_level_no =", value, "preLevelNo");
            return (Criteria) this;
        }

        public Criteria andPreLevelNoNotEqualTo(String value) {
            addCriterion("pre_level_no <>", value, "preLevelNo");
            return (Criteria) this;
        }

        public Criteria andPreLevelNoGreaterThan(String value) {
            addCriterion("pre_level_no >", value, "preLevelNo");
            return (Criteria) this;
        }

        public Criteria andPreLevelNoGreaterThanOrEqualTo(String value) {
            addCriterion("pre_level_no >=", value, "preLevelNo");
            return (Criteria) this;
        }

        public Criteria andPreLevelNoLessThan(String value) {
            addCriterion("pre_level_no <", value, "preLevelNo");
            return (Criteria) this;
        }

        public Criteria andPreLevelNoLessThanOrEqualTo(String value) {
            addCriterion("pre_level_no <=", value, "preLevelNo");
            return (Criteria) this;
        }

        public Criteria andPreLevelNoLike(String value) {
            addCriterion("pre_level_no like", value, "preLevelNo");
            return (Criteria) this;
        }

        public Criteria andPreLevelNoNotLike(String value) {
            addCriterion("pre_level_no not like", value, "preLevelNo");
            return (Criteria) this;
        }

        public Criteria andPreLevelNoIn(List<String> values) {
            addCriterion("pre_level_no in", values, "preLevelNo");
            return (Criteria) this;
        }

        public Criteria andPreLevelNoNotIn(List<String> values) {
            addCriterion("pre_level_no not in", values, "preLevelNo");
            return (Criteria) this;
        }

        public Criteria andPreLevelNoBetween(String value1, String value2) {
            addCriterion("pre_level_no between", value1, value2, "preLevelNo");
            return (Criteria) this;
        }

        public Criteria andPreLevelNoNotBetween(String value1, String value2) {
            addCriterion("pre_level_no not between", value1, value2, "preLevelNo");
            return (Criteria) this;
        }

        public Criteria andPreLevelNameIsNull() {
            addCriterion("pre_level_name is null");
            return (Criteria) this;
        }

        public Criteria andPreLevelNameIsNotNull() {
            addCriterion("pre_level_name is not null");
            return (Criteria) this;
        }

        public Criteria andPreLevelNameEqualTo(String value) {
            addCriterion("pre_level_name =", value, "preLevelName");
            return (Criteria) this;
        }

        public Criteria andPreLevelNameNotEqualTo(String value) {
            addCriterion("pre_level_name <>", value, "preLevelName");
            return (Criteria) this;
        }

        public Criteria andPreLevelNameGreaterThan(String value) {
            addCriterion("pre_level_name >", value, "preLevelName");
            return (Criteria) this;
        }

        public Criteria andPreLevelNameGreaterThanOrEqualTo(String value) {
            addCriterion("pre_level_name >=", value, "preLevelName");
            return (Criteria) this;
        }

        public Criteria andPreLevelNameLessThan(String value) {
            addCriterion("pre_level_name <", value, "preLevelName");
            return (Criteria) this;
        }

        public Criteria andPreLevelNameLessThanOrEqualTo(String value) {
            addCriterion("pre_level_name <=", value, "preLevelName");
            return (Criteria) this;
        }

        public Criteria andPreLevelNameLike(String value) {
            addCriterion("pre_level_name like", value, "preLevelName");
            return (Criteria) this;
        }

        public Criteria andPreLevelNameNotLike(String value) {
            addCriterion("pre_level_name not like", value, "preLevelName");
            return (Criteria) this;
        }

        public Criteria andPreLevelNameIn(List<String> values) {
            addCriterion("pre_level_name in", values, "preLevelName");
            return (Criteria) this;
        }

        public Criteria andPreLevelNameNotIn(List<String> values) {
            addCriterion("pre_level_name not in", values, "preLevelName");
            return (Criteria) this;
        }

        public Criteria andPreLevelNameBetween(String value1, String value2) {
            addCriterion("pre_level_name between", value1, value2, "preLevelName");
            return (Criteria) this;
        }

        public Criteria andPreLevelNameNotBetween(String value1, String value2) {
            addCriterion("pre_level_name not between", value1, value2, "preLevelName");
            return (Criteria) this;
        }

        public Criteria andCreatedTimeIsNull() {
            addCriterion("created_time is null");
            return (Criteria) this;
        }

        public Criteria andCreatedTimeIsNotNull() {
            addCriterion("created_time is not null");
            return (Criteria) this;
        }

        public Criteria andCreatedTimeEqualTo(Date value) {
            addCriterion("created_time =", value, "createdTime");
            return (Criteria) this;
        }

        public Criteria andCreatedTimeNotEqualTo(Date value) {
            addCriterion("created_time <>", value, "createdTime");
            return (Criteria) this;
        }

        public Criteria andCreatedTimeGreaterThan(Date value) {
            addCriterion("created_time >", value, "createdTime");
            return (Criteria) this;
        }

        public Criteria andCreatedTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("created_time >=", value, "createdTime");
            return (Criteria) this;
        }

        public Criteria andCreatedTimeLessThan(Date value) {
            addCriterion("created_time <", value, "createdTime");
            return (Criteria) this;
        }

        public Criteria andCreatedTimeLessThanOrEqualTo(Date value) {
            addCriterion("created_time <=", value, "createdTime");
            return (Criteria) this;
        }

        public Criteria andCreatedTimeIn(List<Date> values) {
            addCriterion("created_time in", values, "createdTime");
            return (Criteria) this;
        }

        public Criteria andCreatedTimeNotIn(List<Date> values) {
            addCriterion("created_time not in", values, "createdTime");
            return (Criteria) this;
        }

        public Criteria andCreatedTimeBetween(Date value1, Date value2) {
            addCriterion("created_time between", value1, value2, "createdTime");
            return (Criteria) this;
        }

        public Criteria andCreatedTimeNotBetween(Date value1, Date value2) {
            addCriterion("created_time not between", value1, value2, "createdTime");
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