package cn.com.siss.member.user.api.domain;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class MemberCardExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    protected Integer limitStart;

    protected Integer limitEnd;

    public MemberCardExample() {
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

        protected void addCriterionForJDBCDate(String condition, Date value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value.getTime()), property);
        }

        protected void addCriterionForJDBCDate(String condition, List<Date> values, String property) {
            if (values == null || values.size() == 0) {
                throw new RuntimeException("Value list for " + property + " cannot be null or empty");
            }
            List<java.sql.Date> dateList = new ArrayList<java.sql.Date>();
            Iterator<Date> iter = values.iterator();
            while (iter.hasNext()) {
                dateList.add(new java.sql.Date(iter.next().getTime()));
            }
            addCriterion(condition, dateList, property);
        }

        protected void addCriterionForJDBCDate(String condition, Date value1, Date value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value1.getTime()), new java.sql.Date(value2.getTime()), property);
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

        public Criteria andBranchIdIsNull() {
            addCriterion("branch_id is null");
            return (Criteria) this;
        }

        public Criteria andBranchIdIsNotNull() {
            addCriterion("branch_id is not null");
            return (Criteria) this;
        }

        public Criteria andBranchIdEqualTo(Long value) {
            addCriterion("branch_id =", value, "branchId");
            return (Criteria) this;
        }

        public Criteria andBranchIdNotEqualTo(Long value) {
            addCriterion("branch_id <>", value, "branchId");
            return (Criteria) this;
        }

        public Criteria andBranchIdGreaterThan(Long value) {
            addCriterion("branch_id >", value, "branchId");
            return (Criteria) this;
        }

        public Criteria andBranchIdGreaterThanOrEqualTo(Long value) {
            addCriterion("branch_id >=", value, "branchId");
            return (Criteria) this;
        }

        public Criteria andBranchIdLessThan(Long value) {
            addCriterion("branch_id <", value, "branchId");
            return (Criteria) this;
        }

        public Criteria andBranchIdLessThanOrEqualTo(Long value) {
            addCriterion("branch_id <=", value, "branchId");
            return (Criteria) this;
        }

        public Criteria andBranchIdIn(List<Long> values) {
            addCriterion("branch_id in", values, "branchId");
            return (Criteria) this;
        }

        public Criteria andBranchIdNotIn(List<Long> values) {
            addCriterion("branch_id not in", values, "branchId");
            return (Criteria) this;
        }

        public Criteria andBranchIdBetween(Long value1, Long value2) {
            addCriterion("branch_id between", value1, value2, "branchId");
            return (Criteria) this;
        }

        public Criteria andBranchIdNotBetween(Long value1, Long value2) {
            addCriterion("branch_id not between", value1, value2, "branchId");
            return (Criteria) this;
        }

        public Criteria andBranchNoIsNull() {
            addCriterion("branch_no is null");
            return (Criteria) this;
        }

        public Criteria andBranchNoIsNotNull() {
            addCriterion("branch_no is not null");
            return (Criteria) this;
        }

        public Criteria andBranchNoEqualTo(String value) {
            addCriterion("branch_no =", value, "branchNo");
            return (Criteria) this;
        }

        public Criteria andBranchNoNotEqualTo(String value) {
            addCriterion("branch_no <>", value, "branchNo");
            return (Criteria) this;
        }

        public Criteria andBranchNoGreaterThan(String value) {
            addCriterion("branch_no >", value, "branchNo");
            return (Criteria) this;
        }

        public Criteria andBranchNoGreaterThanOrEqualTo(String value) {
            addCriterion("branch_no >=", value, "branchNo");
            return (Criteria) this;
        }

        public Criteria andBranchNoLessThan(String value) {
            addCriterion("branch_no <", value, "branchNo");
            return (Criteria) this;
        }

        public Criteria andBranchNoLessThanOrEqualTo(String value) {
            addCriterion("branch_no <=", value, "branchNo");
            return (Criteria) this;
        }

        public Criteria andBranchNoLike(String value) {
            addCriterion("branch_no like", value, "branchNo");
            return (Criteria) this;
        }

        public Criteria andBranchNoNotLike(String value) {
            addCriterion("branch_no not like", value, "branchNo");
            return (Criteria) this;
        }

        public Criteria andBranchNoIn(List<String> values) {
            addCriterion("branch_no in", values, "branchNo");
            return (Criteria) this;
        }

        public Criteria andBranchNoNotIn(List<String> values) {
            addCriterion("branch_no not in", values, "branchNo");
            return (Criteria) this;
        }

        public Criteria andBranchNoBetween(String value1, String value2) {
            addCriterion("branch_no between", value1, value2, "branchNo");
            return (Criteria) this;
        }

        public Criteria andBranchNoNotBetween(String value1, String value2) {
            addCriterion("branch_no not between", value1, value2, "branchNo");
            return (Criteria) this;
        }

        public Criteria andBranchNameIsNull() {
            addCriterion("branch_name is null");
            return (Criteria) this;
        }

        public Criteria andBranchNameIsNotNull() {
            addCriterion("branch_name is not null");
            return (Criteria) this;
        }

        public Criteria andBranchNameEqualTo(String value) {
            addCriterion("branch_name =", value, "branchName");
            return (Criteria) this;
        }

        public Criteria andBranchNameNotEqualTo(String value) {
            addCriterion("branch_name <>", value, "branchName");
            return (Criteria) this;
        }

        public Criteria andBranchNameGreaterThan(String value) {
            addCriterion("branch_name >", value, "branchName");
            return (Criteria) this;
        }

        public Criteria andBranchNameGreaterThanOrEqualTo(String value) {
            addCriterion("branch_name >=", value, "branchName");
            return (Criteria) this;
        }

        public Criteria andBranchNameLessThan(String value) {
            addCriterion("branch_name <", value, "branchName");
            return (Criteria) this;
        }

        public Criteria andBranchNameLessThanOrEqualTo(String value) {
            addCriterion("branch_name <=", value, "branchName");
            return (Criteria) this;
        }

        public Criteria andBranchNameLike(String value) {
            addCriterion("branch_name like", value, "branchName");
            return (Criteria) this;
        }

        public Criteria andBranchNameNotLike(String value) {
            addCriterion("branch_name not like", value, "branchName");
            return (Criteria) this;
        }

        public Criteria andBranchNameIn(List<String> values) {
            addCriterion("branch_name in", values, "branchName");
            return (Criteria) this;
        }

        public Criteria andBranchNameNotIn(List<String> values) {
            addCriterion("branch_name not in", values, "branchName");
            return (Criteria) this;
        }

        public Criteria andBranchNameBetween(String value1, String value2) {
            addCriterion("branch_name between", value1, value2, "branchName");
            return (Criteria) this;
        }

        public Criteria andBranchNameNotBetween(String value1, String value2) {
            addCriterion("branch_name not between", value1, value2, "branchName");
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

        public Criteria andMemberNameIsNull() {
            addCriterion("member_name is null");
            return (Criteria) this;
        }

        public Criteria andMemberNameIsNotNull() {
            addCriterion("member_name is not null");
            return (Criteria) this;
        }

        public Criteria andMemberNameEqualTo(String value) {
            addCriterion("member_name =", value, "memberName");
            return (Criteria) this;
        }

        public Criteria andMemberNameNotEqualTo(String value) {
            addCriterion("member_name <>", value, "memberName");
            return (Criteria) this;
        }

        public Criteria andMemberNameGreaterThan(String value) {
            addCriterion("member_name >", value, "memberName");
            return (Criteria) this;
        }

        public Criteria andMemberNameGreaterThanOrEqualTo(String value) {
            addCriterion("member_name >=", value, "memberName");
            return (Criteria) this;
        }

        public Criteria andMemberNameLessThan(String value) {
            addCriterion("member_name <", value, "memberName");
            return (Criteria) this;
        }

        public Criteria andMemberNameLessThanOrEqualTo(String value) {
            addCriterion("member_name <=", value, "memberName");
            return (Criteria) this;
        }

        public Criteria andMemberNameLike(String value) {
            addCriterion("member_name like", value, "memberName");
            return (Criteria) this;
        }

        public Criteria andMemberNameNotLike(String value) {
            addCriterion("member_name not like", value, "memberName");
            return (Criteria) this;
        }

        public Criteria andMemberNameIn(List<String> values) {
            addCriterion("member_name in", values, "memberName");
            return (Criteria) this;
        }

        public Criteria andMemberNameNotIn(List<String> values) {
            addCriterion("member_name not in", values, "memberName");
            return (Criteria) this;
        }

        public Criteria andMemberNameBetween(String value1, String value2) {
            addCriterion("member_name between", value1, value2, "memberName");
            return (Criteria) this;
        }

        public Criteria andMemberNameNotBetween(String value1, String value2) {
            addCriterion("member_name not between", value1, value2, "memberName");
            return (Criteria) this;
        }

        public Criteria andCardPrefixIsNull() {
            addCriterion("card_prefix is null");
            return (Criteria) this;
        }

        public Criteria andCardPrefixIsNotNull() {
            addCriterion("card_prefix is not null");
            return (Criteria) this;
        }

        public Criteria andCardPrefixEqualTo(String value) {
            addCriterion("card_prefix =", value, "cardPrefix");
            return (Criteria) this;
        }

        public Criteria andCardPrefixNotEqualTo(String value) {
            addCriterion("card_prefix <>", value, "cardPrefix");
            return (Criteria) this;
        }

        public Criteria andCardPrefixGreaterThan(String value) {
            addCriterion("card_prefix >", value, "cardPrefix");
            return (Criteria) this;
        }

        public Criteria andCardPrefixGreaterThanOrEqualTo(String value) {
            addCriterion("card_prefix >=", value, "cardPrefix");
            return (Criteria) this;
        }

        public Criteria andCardPrefixLessThan(String value) {
            addCriterion("card_prefix <", value, "cardPrefix");
            return (Criteria) this;
        }

        public Criteria andCardPrefixLessThanOrEqualTo(String value) {
            addCriterion("card_prefix <=", value, "cardPrefix");
            return (Criteria) this;
        }

        public Criteria andCardPrefixLike(String value) {
            addCriterion("card_prefix like", value, "cardPrefix");
            return (Criteria) this;
        }

        public Criteria andCardPrefixNotLike(String value) {
            addCriterion("card_prefix not like", value, "cardPrefix");
            return (Criteria) this;
        }

        public Criteria andCardPrefixIn(List<String> values) {
            addCriterion("card_prefix in", values, "cardPrefix");
            return (Criteria) this;
        }

        public Criteria andCardPrefixNotIn(List<String> values) {
            addCriterion("card_prefix not in", values, "cardPrefix");
            return (Criteria) this;
        }

        public Criteria andCardPrefixBetween(String value1, String value2) {
            addCriterion("card_prefix between", value1, value2, "cardPrefix");
            return (Criteria) this;
        }

        public Criteria andCardPrefixNotBetween(String value1, String value2) {
            addCriterion("card_prefix not between", value1, value2, "cardPrefix");
            return (Criteria) this;
        }

        public Criteria andCardMidIsNull() {
            addCriterion("card_mid is null");
            return (Criteria) this;
        }

        public Criteria andCardMidIsNotNull() {
            addCriterion("card_mid is not null");
            return (Criteria) this;
        }

        public Criteria andCardMidEqualTo(Long value) {
            addCriterion("card_mid =", value, "cardMid");
            return (Criteria) this;
        }

        public Criteria andCardMidNotEqualTo(Long value) {
            addCriterion("card_mid <>", value, "cardMid");
            return (Criteria) this;
        }

        public Criteria andCardMidGreaterThan(Long value) {
            addCriterion("card_mid >", value, "cardMid");
            return (Criteria) this;
        }

        public Criteria andCardMidGreaterThanOrEqualTo(Long value) {
            addCriterion("card_mid >=", value, "cardMid");
            return (Criteria) this;
        }

        public Criteria andCardMidLessThan(Long value) {
            addCriterion("card_mid <", value, "cardMid");
            return (Criteria) this;
        }

        public Criteria andCardMidLessThanOrEqualTo(Long value) {
            addCriterion("card_mid <=", value, "cardMid");
            return (Criteria) this;
        }

        public Criteria andCardMidIn(List<Long> values) {
            addCriterion("card_mid in", values, "cardMid");
            return (Criteria) this;
        }

        public Criteria andCardMidNotIn(List<Long> values) {
            addCriterion("card_mid not in", values, "cardMid");
            return (Criteria) this;
        }

        public Criteria andCardMidBetween(Long value1, Long value2) {
            addCriterion("card_mid between", value1, value2, "cardMid");
            return (Criteria) this;
        }

        public Criteria andCardMidNotBetween(Long value1, Long value2) {
            addCriterion("card_mid not between", value1, value2, "cardMid");
            return (Criteria) this;
        }

        public Criteria andCardSuffixIsNull() {
            addCriterion("card_suffix is null");
            return (Criteria) this;
        }

        public Criteria andCardSuffixIsNotNull() {
            addCriterion("card_suffix is not null");
            return (Criteria) this;
        }

        public Criteria andCardSuffixEqualTo(String value) {
            addCriterion("card_suffix =", value, "cardSuffix");
            return (Criteria) this;
        }

        public Criteria andCardSuffixNotEqualTo(String value) {
            addCriterion("card_suffix <>", value, "cardSuffix");
            return (Criteria) this;
        }

        public Criteria andCardSuffixGreaterThan(String value) {
            addCriterion("card_suffix >", value, "cardSuffix");
            return (Criteria) this;
        }

        public Criteria andCardSuffixGreaterThanOrEqualTo(String value) {
            addCriterion("card_suffix >=", value, "cardSuffix");
            return (Criteria) this;
        }

        public Criteria andCardSuffixLessThan(String value) {
            addCriterion("card_suffix <", value, "cardSuffix");
            return (Criteria) this;
        }

        public Criteria andCardSuffixLessThanOrEqualTo(String value) {
            addCriterion("card_suffix <=", value, "cardSuffix");
            return (Criteria) this;
        }

        public Criteria andCardSuffixLike(String value) {
            addCriterion("card_suffix like", value, "cardSuffix");
            return (Criteria) this;
        }

        public Criteria andCardSuffixNotLike(String value) {
            addCriterion("card_suffix not like", value, "cardSuffix");
            return (Criteria) this;
        }

        public Criteria andCardSuffixIn(List<String> values) {
            addCriterion("card_suffix in", values, "cardSuffix");
            return (Criteria) this;
        }

        public Criteria andCardSuffixNotIn(List<String> values) {
            addCriterion("card_suffix not in", values, "cardSuffix");
            return (Criteria) this;
        }

        public Criteria andCardSuffixBetween(String value1, String value2) {
            addCriterion("card_suffix between", value1, value2, "cardSuffix");
            return (Criteria) this;
        }

        public Criteria andCardSuffixNotBetween(String value1, String value2) {
            addCriterion("card_suffix not between", value1, value2, "cardSuffix");
            return (Criteria) this;
        }

        public Criteria andScoredStartDateIsNull() {
            addCriterion("scored_start_date is null");
            return (Criteria) this;
        }

        public Criteria andScoredStartDateIsNotNull() {
            addCriterion("scored_start_date is not null");
            return (Criteria) this;
        }

        public Criteria andScoredStartDateEqualTo(Date value) {
            addCriterionForJDBCDate("scored_start_date =", value, "scoredStartDate");
            return (Criteria) this;
        }

        public Criteria andScoredStartDateNotEqualTo(Date value) {
            addCriterionForJDBCDate("scored_start_date <>", value, "scoredStartDate");
            return (Criteria) this;
        }

        public Criteria andScoredStartDateGreaterThan(Date value) {
            addCriterionForJDBCDate("scored_start_date >", value, "scoredStartDate");
            return (Criteria) this;
        }

        public Criteria andScoredStartDateGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("scored_start_date >=", value, "scoredStartDate");
            return (Criteria) this;
        }

        public Criteria andScoredStartDateLessThan(Date value) {
            addCriterionForJDBCDate("scored_start_date <", value, "scoredStartDate");
            return (Criteria) this;
        }

        public Criteria andScoredStartDateLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("scored_start_date <=", value, "scoredStartDate");
            return (Criteria) this;
        }

        public Criteria andScoredStartDateIn(List<Date> values) {
            addCriterionForJDBCDate("scored_start_date in", values, "scoredStartDate");
            return (Criteria) this;
        }

        public Criteria andScoredStartDateNotIn(List<Date> values) {
            addCriterionForJDBCDate("scored_start_date not in", values, "scoredStartDate");
            return (Criteria) this;
        }

        public Criteria andScoredStartDateBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("scored_start_date between", value1, value2, "scoredStartDate");
            return (Criteria) this;
        }

        public Criteria andScoredStartDateNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("scored_start_date not between", value1, value2, "scoredStartDate");
            return (Criteria) this;
        }

        public Criteria andScoredEndDateIsNull() {
            addCriterion("scored_end_date is null");
            return (Criteria) this;
        }

        public Criteria andScoredEndDateIsNotNull() {
            addCriterion("scored_end_date is not null");
            return (Criteria) this;
        }

        public Criteria andScoredEndDateEqualTo(Date value) {
            addCriterionForJDBCDate("scored_end_date =", value, "scoredEndDate");
            return (Criteria) this;
        }

        public Criteria andScoredEndDateNotEqualTo(Date value) {
            addCriterionForJDBCDate("scored_end_date <>", value, "scoredEndDate");
            return (Criteria) this;
        }

        public Criteria andScoredEndDateGreaterThan(Date value) {
            addCriterionForJDBCDate("scored_end_date >", value, "scoredEndDate");
            return (Criteria) this;
        }

        public Criteria andScoredEndDateGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("scored_end_date >=", value, "scoredEndDate");
            return (Criteria) this;
        }

        public Criteria andScoredEndDateLessThan(Date value) {
            addCriterionForJDBCDate("scored_end_date <", value, "scoredEndDate");
            return (Criteria) this;
        }

        public Criteria andScoredEndDateLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("scored_end_date <=", value, "scoredEndDate");
            return (Criteria) this;
        }

        public Criteria andScoredEndDateIn(List<Date> values) {
            addCriterionForJDBCDate("scored_end_date in", values, "scoredEndDate");
            return (Criteria) this;
        }

        public Criteria andScoredEndDateNotIn(List<Date> values) {
            addCriterionForJDBCDate("scored_end_date not in", values, "scoredEndDate");
            return (Criteria) this;
        }

        public Criteria andScoredEndDateBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("scored_end_date between", value1, value2, "scoredEndDate");
            return (Criteria) this;
        }

        public Criteria andScoredEndDateNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("scored_end_date not between", value1, value2, "scoredEndDate");
            return (Criteria) this;
        }

        public Criteria andFinanceStartDateIsNull() {
            addCriterion("finance_start_date is null");
            return (Criteria) this;
        }

        public Criteria andFinanceStartDateIsNotNull() {
            addCriterion("finance_start_date is not null");
            return (Criteria) this;
        }

        public Criteria andFinanceStartDateEqualTo(Date value) {
            addCriterionForJDBCDate("finance_start_date =", value, "financeStartDate");
            return (Criteria) this;
        }

        public Criteria andFinanceStartDateNotEqualTo(Date value) {
            addCriterionForJDBCDate("finance_start_date <>", value, "financeStartDate");
            return (Criteria) this;
        }

        public Criteria andFinanceStartDateGreaterThan(Date value) {
            addCriterionForJDBCDate("finance_start_date >", value, "financeStartDate");
            return (Criteria) this;
        }

        public Criteria andFinanceStartDateGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("finance_start_date >=", value, "financeStartDate");
            return (Criteria) this;
        }

        public Criteria andFinanceStartDateLessThan(Date value) {
            addCriterionForJDBCDate("finance_start_date <", value, "financeStartDate");
            return (Criteria) this;
        }

        public Criteria andFinanceStartDateLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("finance_start_date <=", value, "financeStartDate");
            return (Criteria) this;
        }

        public Criteria andFinanceStartDateIn(List<Date> values) {
            addCriterionForJDBCDate("finance_start_date in", values, "financeStartDate");
            return (Criteria) this;
        }

        public Criteria andFinanceStartDateNotIn(List<Date> values) {
            addCriterionForJDBCDate("finance_start_date not in", values, "financeStartDate");
            return (Criteria) this;
        }

        public Criteria andFinanceStartDateBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("finance_start_date between", value1, value2, "financeStartDate");
            return (Criteria) this;
        }

        public Criteria andFinanceStartDateNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("finance_start_date not between", value1, value2, "financeStartDate");
            return (Criteria) this;
        }

        public Criteria andFinanceEndDateIsNull() {
            addCriterion("finance_end_date is null");
            return (Criteria) this;
        }

        public Criteria andFinanceEndDateIsNotNull() {
            addCriterion("finance_end_date is not null");
            return (Criteria) this;
        }

        public Criteria andFinanceEndDateEqualTo(Date value) {
            addCriterionForJDBCDate("finance_end_date =", value, "financeEndDate");
            return (Criteria) this;
        }

        public Criteria andFinanceEndDateNotEqualTo(Date value) {
            addCriterionForJDBCDate("finance_end_date <>", value, "financeEndDate");
            return (Criteria) this;
        }

        public Criteria andFinanceEndDateGreaterThan(Date value) {
            addCriterionForJDBCDate("finance_end_date >", value, "financeEndDate");
            return (Criteria) this;
        }

        public Criteria andFinanceEndDateGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("finance_end_date >=", value, "financeEndDate");
            return (Criteria) this;
        }

        public Criteria andFinanceEndDateLessThan(Date value) {
            addCriterionForJDBCDate("finance_end_date <", value, "financeEndDate");
            return (Criteria) this;
        }

        public Criteria andFinanceEndDateLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("finance_end_date <=", value, "financeEndDate");
            return (Criteria) this;
        }

        public Criteria andFinanceEndDateIn(List<Date> values) {
            addCriterionForJDBCDate("finance_end_date in", values, "financeEndDate");
            return (Criteria) this;
        }

        public Criteria andFinanceEndDateNotIn(List<Date> values) {
            addCriterionForJDBCDate("finance_end_date not in", values, "financeEndDate");
            return (Criteria) this;
        }

        public Criteria andFinanceEndDateBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("finance_end_date between", value1, value2, "financeEndDate");
            return (Criteria) this;
        }

        public Criteria andFinanceEndDateNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("finance_end_date not between", value1, value2, "financeEndDate");
            return (Criteria) this;
        }

        public Criteria andPayWayIsNull() {
            addCriterion("pay_way is null");
            return (Criteria) this;
        }

        public Criteria andPayWayIsNotNull() {
            addCriterion("pay_way is not null");
            return (Criteria) this;
        }

        public Criteria andPayWayEqualTo(String value) {
            addCriterion("pay_way =", value, "payWay");
            return (Criteria) this;
        }

        public Criteria andPayWayNotEqualTo(String value) {
            addCriterion("pay_way <>", value, "payWay");
            return (Criteria) this;
        }

        public Criteria andPayWayGreaterThan(String value) {
            addCriterion("pay_way >", value, "payWay");
            return (Criteria) this;
        }

        public Criteria andPayWayGreaterThanOrEqualTo(String value) {
            addCriterion("pay_way >=", value, "payWay");
            return (Criteria) this;
        }

        public Criteria andPayWayLessThan(String value) {
            addCriterion("pay_way <", value, "payWay");
            return (Criteria) this;
        }

        public Criteria andPayWayLessThanOrEqualTo(String value) {
            addCriterion("pay_way <=", value, "payWay");
            return (Criteria) this;
        }

        public Criteria andPayWayLike(String value) {
            addCriterion("pay_way like", value, "payWay");
            return (Criteria) this;
        }

        public Criteria andPayWayNotLike(String value) {
            addCriterion("pay_way not like", value, "payWay");
            return (Criteria) this;
        }

        public Criteria andPayWayIn(List<String> values) {
            addCriterion("pay_way in", values, "payWay");
            return (Criteria) this;
        }

        public Criteria andPayWayNotIn(List<String> values) {
            addCriterion("pay_way not in", values, "payWay");
            return (Criteria) this;
        }

        public Criteria andPayWayBetween(String value1, String value2) {
            addCriterion("pay_way between", value1, value2, "payWay");
            return (Criteria) this;
        }

        public Criteria andPayWayNotBetween(String value1, String value2) {
            addCriterion("pay_way not between", value1, value2, "payWay");
            return (Criteria) this;
        }

        public Criteria andInitScoreIsNull() {
            addCriterion("init_score is null");
            return (Criteria) this;
        }

        public Criteria andInitScoreIsNotNull() {
            addCriterion("init_score is not null");
            return (Criteria) this;
        }

        public Criteria andInitScoreEqualTo(BigDecimal value) {
            addCriterion("init_score =", value, "initScore");
            return (Criteria) this;
        }

        public Criteria andInitScoreNotEqualTo(BigDecimal value) {
            addCriterion("init_score <>", value, "initScore");
            return (Criteria) this;
        }

        public Criteria andInitScoreGreaterThan(BigDecimal value) {
            addCriterion("init_score >", value, "initScore");
            return (Criteria) this;
        }

        public Criteria andInitScoreGreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("init_score >=", value, "initScore");
            return (Criteria) this;
        }

        public Criteria andInitScoreLessThan(BigDecimal value) {
            addCriterion("init_score <", value, "initScore");
            return (Criteria) this;
        }

        public Criteria andInitScoreLessThanOrEqualTo(BigDecimal value) {
            addCriterion("init_score <=", value, "initScore");
            return (Criteria) this;
        }

        public Criteria andInitScoreIn(List<BigDecimal> values) {
            addCriterion("init_score in", values, "initScore");
            return (Criteria) this;
        }

        public Criteria andInitScoreNotIn(List<BigDecimal> values) {
            addCriterion("init_score not in", values, "initScore");
            return (Criteria) this;
        }

        public Criteria andInitScoreBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("init_score between", value1, value2, "initScore");
            return (Criteria) this;
        }

        public Criteria andInitScoreNotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("init_score not between", value1, value2, "initScore");
            return (Criteria) this;
        }

        public Criteria andInitAmountIsNull() {
            addCriterion("init_amount is null");
            return (Criteria) this;
        }

        public Criteria andInitAmountIsNotNull() {
            addCriterion("init_amount is not null");
            return (Criteria) this;
        }

        public Criteria andInitAmountEqualTo(Integer value) {
            addCriterion("init_amount =", value, "initAmount");
            return (Criteria) this;
        }

        public Criteria andInitAmountNotEqualTo(Integer value) {
            addCriterion("init_amount <>", value, "initAmount");
            return (Criteria) this;
        }

        public Criteria andInitAmountGreaterThan(Integer value) {
            addCriterion("init_amount >", value, "initAmount");
            return (Criteria) this;
        }

        public Criteria andInitAmountGreaterThanOrEqualTo(Integer value) {
            addCriterion("init_amount >=", value, "initAmount");
            return (Criteria) this;
        }

        public Criteria andInitAmountLessThan(Integer value) {
            addCriterion("init_amount <", value, "initAmount");
            return (Criteria) this;
        }

        public Criteria andInitAmountLessThanOrEqualTo(Integer value) {
            addCriterion("init_amount <=", value, "initAmount");
            return (Criteria) this;
        }

        public Criteria andInitAmountIn(List<Integer> values) {
            addCriterion("init_amount in", values, "initAmount");
            return (Criteria) this;
        }

        public Criteria andInitAmountNotIn(List<Integer> values) {
            addCriterion("init_amount not in", values, "initAmount");
            return (Criteria) this;
        }

        public Criteria andInitAmountBetween(Integer value1, Integer value2) {
            addCriterion("init_amount between", value1, value2, "initAmount");
            return (Criteria) this;
        }

        public Criteria andInitAmountNotBetween(Integer value1, Integer value2) {
            addCriterion("init_amount not between", value1, value2, "initAmount");
            return (Criteria) this;
        }

        public Criteria andLimitQuantityIsNull() {
            addCriterion("limit_quantity is null");
            return (Criteria) this;
        }

        public Criteria andLimitQuantityIsNotNull() {
            addCriterion("limit_quantity is not null");
            return (Criteria) this;
        }

        public Criteria andLimitQuantityEqualTo(Integer value) {
            addCriterion("limit_quantity =", value, "limitQuantity");
            return (Criteria) this;
        }

        public Criteria andLimitQuantityNotEqualTo(Integer value) {
            addCriterion("limit_quantity <>", value, "limitQuantity");
            return (Criteria) this;
        }

        public Criteria andLimitQuantityGreaterThan(Integer value) {
            addCriterion("limit_quantity >", value, "limitQuantity");
            return (Criteria) this;
        }

        public Criteria andLimitQuantityGreaterThanOrEqualTo(Integer value) {
            addCriterion("limit_quantity >=", value, "limitQuantity");
            return (Criteria) this;
        }

        public Criteria andLimitQuantityLessThan(Integer value) {
            addCriterion("limit_quantity <", value, "limitQuantity");
            return (Criteria) this;
        }

        public Criteria andLimitQuantityLessThanOrEqualTo(Integer value) {
            addCriterion("limit_quantity <=", value, "limitQuantity");
            return (Criteria) this;
        }

        public Criteria andLimitQuantityIn(List<Integer> values) {
            addCriterion("limit_quantity in", values, "limitQuantity");
            return (Criteria) this;
        }

        public Criteria andLimitQuantityNotIn(List<Integer> values) {
            addCriterion("limit_quantity not in", values, "limitQuantity");
            return (Criteria) this;
        }

        public Criteria andLimitQuantityBetween(Integer value1, Integer value2) {
            addCriterion("limit_quantity between", value1, value2, "limitQuantity");
            return (Criteria) this;
        }

        public Criteria andLimitQuantityNotBetween(Integer value1, Integer value2) {
            addCriterion("limit_quantity not between", value1, value2, "limitQuantity");
            return (Criteria) this;
        }

        public Criteria andPasswordIsNull() {
            addCriterion("password is null");
            return (Criteria) this;
        }

        public Criteria andPasswordIsNotNull() {
            addCriterion("password is not null");
            return (Criteria) this;
        }

        public Criteria andPasswordEqualTo(String value) {
            addCriterion("password =", value, "password");
            return (Criteria) this;
        }

        public Criteria andPasswordNotEqualTo(String value) {
            addCriterion("password <>", value, "password");
            return (Criteria) this;
        }

        public Criteria andPasswordGreaterThan(String value) {
            addCriterion("password >", value, "password");
            return (Criteria) this;
        }

        public Criteria andPasswordGreaterThanOrEqualTo(String value) {
            addCriterion("password >=", value, "password");
            return (Criteria) this;
        }

        public Criteria andPasswordLessThan(String value) {
            addCriterion("password <", value, "password");
            return (Criteria) this;
        }

        public Criteria andPasswordLessThanOrEqualTo(String value) {
            addCriterion("password <=", value, "password");
            return (Criteria) this;
        }

        public Criteria andPasswordLike(String value) {
            addCriterion("password like", value, "password");
            return (Criteria) this;
        }

        public Criteria andPasswordNotLike(String value) {
            addCriterion("password not like", value, "password");
            return (Criteria) this;
        }

        public Criteria andPasswordIn(List<String> values) {
            addCriterion("password in", values, "password");
            return (Criteria) this;
        }

        public Criteria andPasswordNotIn(List<String> values) {
            addCriterion("password not in", values, "password");
            return (Criteria) this;
        }

        public Criteria andPasswordBetween(String value1, String value2) {
            addCriterion("password between", value1, value2, "password");
            return (Criteria) this;
        }

        public Criteria andPasswordNotBetween(String value1, String value2) {
            addCriterion("password not between", value1, value2, "password");
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