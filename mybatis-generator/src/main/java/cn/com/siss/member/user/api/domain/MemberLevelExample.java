package cn.com.siss.member.user.api.domain;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class MemberLevelExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    protected Integer limitStart;

    protected Integer limitEnd;

    public MemberLevelExample() {
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

        public Criteria andPreferentialWayIsNull() {
            addCriterion("preferential_way is null");
            return (Criteria) this;
        }

        public Criteria andPreferentialWayIsNotNull() {
            addCriterion("preferential_way is not null");
            return (Criteria) this;
        }

        public Criteria andPreferentialWayEqualTo(Integer value) {
            addCriterion("preferential_way =", value, "preferentialWay");
            return (Criteria) this;
        }

        public Criteria andPreferentialWayNotEqualTo(Integer value) {
            addCriterion("preferential_way <>", value, "preferentialWay");
            return (Criteria) this;
        }

        public Criteria andPreferentialWayGreaterThan(Integer value) {
            addCriterion("preferential_way >", value, "preferentialWay");
            return (Criteria) this;
        }

        public Criteria andPreferentialWayGreaterThanOrEqualTo(Integer value) {
            addCriterion("preferential_way >=", value, "preferentialWay");
            return (Criteria) this;
        }

        public Criteria andPreferentialWayLessThan(Integer value) {
            addCriterion("preferential_way <", value, "preferentialWay");
            return (Criteria) this;
        }

        public Criteria andPreferentialWayLessThanOrEqualTo(Integer value) {
            addCriterion("preferential_way <=", value, "preferentialWay");
            return (Criteria) this;
        }

        public Criteria andPreferentialWayIn(List<Integer> values) {
            addCriterion("preferential_way in", values, "preferentialWay");
            return (Criteria) this;
        }

        public Criteria andPreferentialWayNotIn(List<Integer> values) {
            addCriterion("preferential_way not in", values, "preferentialWay");
            return (Criteria) this;
        }

        public Criteria andPreferentialWayBetween(Integer value1, Integer value2) {
            addCriterion("preferential_way between", value1, value2, "preferentialWay");
            return (Criteria) this;
        }

        public Criteria andPreferentialWayNotBetween(Integer value1, Integer value2) {
            addCriterion("preferential_way not between", value1, value2, "preferentialWay");
            return (Criteria) this;
        }

        public Criteria andPreferentialDiscountIsNull() {
            addCriterion("preferential_discount is null");
            return (Criteria) this;
        }

        public Criteria andPreferentialDiscountIsNotNull() {
            addCriterion("preferential_discount is not null");
            return (Criteria) this;
        }

        public Criteria andPreferentialDiscountEqualTo(Integer value) {
            addCriterion("preferential_discount =", value, "preferentialDiscount");
            return (Criteria) this;
        }

        public Criteria andPreferentialDiscountNotEqualTo(Integer value) {
            addCriterion("preferential_discount <>", value, "preferentialDiscount");
            return (Criteria) this;
        }

        public Criteria andPreferentialDiscountGreaterThan(Integer value) {
            addCriterion("preferential_discount >", value, "preferentialDiscount");
            return (Criteria) this;
        }

        public Criteria andPreferentialDiscountGreaterThanOrEqualTo(Integer value) {
            addCriterion("preferential_discount >=", value, "preferentialDiscount");
            return (Criteria) this;
        }

        public Criteria andPreferentialDiscountLessThan(Integer value) {
            addCriterion("preferential_discount <", value, "preferentialDiscount");
            return (Criteria) this;
        }

        public Criteria andPreferentialDiscountLessThanOrEqualTo(Integer value) {
            addCriterion("preferential_discount <=", value, "preferentialDiscount");
            return (Criteria) this;
        }

        public Criteria andPreferentialDiscountIn(List<Integer> values) {
            addCriterion("preferential_discount in", values, "preferentialDiscount");
            return (Criteria) this;
        }

        public Criteria andPreferentialDiscountNotIn(List<Integer> values) {
            addCriterion("preferential_discount not in", values, "preferentialDiscount");
            return (Criteria) this;
        }

        public Criteria andPreferentialDiscountBetween(Integer value1, Integer value2) {
            addCriterion("preferential_discount between", value1, value2, "preferentialDiscount");
            return (Criteria) this;
        }

        public Criteria andPreferentialDiscountNotBetween(Integer value1, Integer value2) {
            addCriterion("preferential_discount not between", value1, value2, "preferentialDiscount");
            return (Criteria) this;
        }

        public Criteria andPreferentialItemIsNull() {
            addCriterion("preferential_item is null");
            return (Criteria) this;
        }

        public Criteria andPreferentialItemIsNotNull() {
            addCriterion("preferential_item is not null");
            return (Criteria) this;
        }

        public Criteria andPreferentialItemEqualTo(Integer value) {
            addCriterion("preferential_item =", value, "preferentialItem");
            return (Criteria) this;
        }

        public Criteria andPreferentialItemNotEqualTo(Integer value) {
            addCriterion("preferential_item <>", value, "preferentialItem");
            return (Criteria) this;
        }

        public Criteria andPreferentialItemGreaterThan(Integer value) {
            addCriterion("preferential_item >", value, "preferentialItem");
            return (Criteria) this;
        }

        public Criteria andPreferentialItemGreaterThanOrEqualTo(Integer value) {
            addCriterion("preferential_item >=", value, "preferentialItem");
            return (Criteria) this;
        }

        public Criteria andPreferentialItemLessThan(Integer value) {
            addCriterion("preferential_item <", value, "preferentialItem");
            return (Criteria) this;
        }

        public Criteria andPreferentialItemLessThanOrEqualTo(Integer value) {
            addCriterion("preferential_item <=", value, "preferentialItem");
            return (Criteria) this;
        }

        public Criteria andPreferentialItemIn(List<Integer> values) {
            addCriterion("preferential_item in", values, "preferentialItem");
            return (Criteria) this;
        }

        public Criteria andPreferentialItemNotIn(List<Integer> values) {
            addCriterion("preferential_item not in", values, "preferentialItem");
            return (Criteria) this;
        }

        public Criteria andPreferentialItemBetween(Integer value1, Integer value2) {
            addCriterion("preferential_item between", value1, value2, "preferentialItem");
            return (Criteria) this;
        }

        public Criteria andPreferentialItemNotBetween(Integer value1, Integer value2) {
            addCriterion("preferential_item not between", value1, value2, "preferentialItem");
            return (Criteria) this;
        }

        public Criteria andEffectiveWayIsNull() {
            addCriterion("effective_way is null");
            return (Criteria) this;
        }

        public Criteria andEffectiveWayIsNotNull() {
            addCriterion("effective_way is not null");
            return (Criteria) this;
        }

        public Criteria andEffectiveWayEqualTo(Integer value) {
            addCriterion("effective_way =", value, "effectiveWay");
            return (Criteria) this;
        }

        public Criteria andEffectiveWayNotEqualTo(Integer value) {
            addCriterion("effective_way <>", value, "effectiveWay");
            return (Criteria) this;
        }

        public Criteria andEffectiveWayGreaterThan(Integer value) {
            addCriterion("effective_way >", value, "effectiveWay");
            return (Criteria) this;
        }

        public Criteria andEffectiveWayGreaterThanOrEqualTo(Integer value) {
            addCriterion("effective_way >=", value, "effectiveWay");
            return (Criteria) this;
        }

        public Criteria andEffectiveWayLessThan(Integer value) {
            addCriterion("effective_way <", value, "effectiveWay");
            return (Criteria) this;
        }

        public Criteria andEffectiveWayLessThanOrEqualTo(Integer value) {
            addCriterion("effective_way <=", value, "effectiveWay");
            return (Criteria) this;
        }

        public Criteria andEffectiveWayIn(List<Integer> values) {
            addCriterion("effective_way in", values, "effectiveWay");
            return (Criteria) this;
        }

        public Criteria andEffectiveWayNotIn(List<Integer> values) {
            addCriterion("effective_way not in", values, "effectiveWay");
            return (Criteria) this;
        }

        public Criteria andEffectiveWayBetween(Integer value1, Integer value2) {
            addCriterion("effective_way between", value1, value2, "effectiveWay");
            return (Criteria) this;
        }

        public Criteria andEffectiveWayNotBetween(Integer value1, Integer value2) {
            addCriterion("effective_way not between", value1, value2, "effectiveWay");
            return (Criteria) this;
        }

        public Criteria andEffectiveStartDateIsNull() {
            addCriterion("effective_start_date is null");
            return (Criteria) this;
        }

        public Criteria andEffectiveStartDateIsNotNull() {
            addCriterion("effective_start_date is not null");
            return (Criteria) this;
        }

        public Criteria andEffectiveStartDateEqualTo(Date value) {
            addCriterionForJDBCDate("effective_start_date =", value, "effectiveStartDate");
            return (Criteria) this;
        }

        public Criteria andEffectiveStartDateNotEqualTo(Date value) {
            addCriterionForJDBCDate("effective_start_date <>", value, "effectiveStartDate");
            return (Criteria) this;
        }

        public Criteria andEffectiveStartDateGreaterThan(Date value) {
            addCriterionForJDBCDate("effective_start_date >", value, "effectiveStartDate");
            return (Criteria) this;
        }

        public Criteria andEffectiveStartDateGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("effective_start_date >=", value, "effectiveStartDate");
            return (Criteria) this;
        }

        public Criteria andEffectiveStartDateLessThan(Date value) {
            addCriterionForJDBCDate("effective_start_date <", value, "effectiveStartDate");
            return (Criteria) this;
        }

        public Criteria andEffectiveStartDateLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("effective_start_date <=", value, "effectiveStartDate");
            return (Criteria) this;
        }

        public Criteria andEffectiveStartDateIn(List<Date> values) {
            addCriterionForJDBCDate("effective_start_date in", values, "effectiveStartDate");
            return (Criteria) this;
        }

        public Criteria andEffectiveStartDateNotIn(List<Date> values) {
            addCriterionForJDBCDate("effective_start_date not in", values, "effectiveStartDate");
            return (Criteria) this;
        }

        public Criteria andEffectiveStartDateBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("effective_start_date between", value1, value2, "effectiveStartDate");
            return (Criteria) this;
        }

        public Criteria andEffectiveStartDateNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("effective_start_date not between", value1, value2, "effectiveStartDate");
            return (Criteria) this;
        }

        public Criteria andEffectiveDaysIsNull() {
            addCriterion("effective_days is null");
            return (Criteria) this;
        }

        public Criteria andEffectiveDaysIsNotNull() {
            addCriterion("effective_days is not null");
            return (Criteria) this;
        }

        public Criteria andEffectiveDaysEqualTo(Integer value) {
            addCriterion("effective_days =", value, "effectiveDays");
            return (Criteria) this;
        }

        public Criteria andEffectiveDaysNotEqualTo(Integer value) {
            addCriterion("effective_days <>", value, "effectiveDays");
            return (Criteria) this;
        }

        public Criteria andEffectiveDaysGreaterThan(Integer value) {
            addCriterion("effective_days >", value, "effectiveDays");
            return (Criteria) this;
        }

        public Criteria andEffectiveDaysGreaterThanOrEqualTo(Integer value) {
            addCriterion("effective_days >=", value, "effectiveDays");
            return (Criteria) this;
        }

        public Criteria andEffectiveDaysLessThan(Integer value) {
            addCriterion("effective_days <", value, "effectiveDays");
            return (Criteria) this;
        }

        public Criteria andEffectiveDaysLessThanOrEqualTo(Integer value) {
            addCriterion("effective_days <=", value, "effectiveDays");
            return (Criteria) this;
        }

        public Criteria andEffectiveDaysIn(List<Integer> values) {
            addCriterion("effective_days in", values, "effectiveDays");
            return (Criteria) this;
        }

        public Criteria andEffectiveDaysNotIn(List<Integer> values) {
            addCriterion("effective_days not in", values, "effectiveDays");
            return (Criteria) this;
        }

        public Criteria andEffectiveDaysBetween(Integer value1, Integer value2) {
            addCriterion("effective_days between", value1, value2, "effectiveDays");
            return (Criteria) this;
        }

        public Criteria andEffectiveDaysNotBetween(Integer value1, Integer value2) {
            addCriterion("effective_days not between", value1, value2, "effectiveDays");
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

        public Criteria andAreaCodeIsNull() {
            addCriterion("area_code is null");
            return (Criteria) this;
        }

        public Criteria andAreaCodeIsNotNull() {
            addCriterion("area_code is not null");
            return (Criteria) this;
        }

        public Criteria andAreaCodeEqualTo(String value) {
            addCriterion("area_code =", value, "areaCode");
            return (Criteria) this;
        }

        public Criteria andAreaCodeNotEqualTo(String value) {
            addCriterion("area_code <>", value, "areaCode");
            return (Criteria) this;
        }

        public Criteria andAreaCodeGreaterThan(String value) {
            addCriterion("area_code >", value, "areaCode");
            return (Criteria) this;
        }

        public Criteria andAreaCodeGreaterThanOrEqualTo(String value) {
            addCriterion("area_code >=", value, "areaCode");
            return (Criteria) this;
        }

        public Criteria andAreaCodeLessThan(String value) {
            addCriterion("area_code <", value, "areaCode");
            return (Criteria) this;
        }

        public Criteria andAreaCodeLessThanOrEqualTo(String value) {
            addCriterion("area_code <=", value, "areaCode");
            return (Criteria) this;
        }

        public Criteria andAreaCodeLike(String value) {
            addCriterion("area_code like", value, "areaCode");
            return (Criteria) this;
        }

        public Criteria andAreaCodeNotLike(String value) {
            addCriterion("area_code not like", value, "areaCode");
            return (Criteria) this;
        }

        public Criteria andAreaCodeIn(List<String> values) {
            addCriterion("area_code in", values, "areaCode");
            return (Criteria) this;
        }

        public Criteria andAreaCodeNotIn(List<String> values) {
            addCriterion("area_code not in", values, "areaCode");
            return (Criteria) this;
        }

        public Criteria andAreaCodeBetween(String value1, String value2) {
            addCriterion("area_code between", value1, value2, "areaCode");
            return (Criteria) this;
        }

        public Criteria andAreaCodeNotBetween(String value1, String value2) {
            addCriterion("area_code not between", value1, value2, "areaCode");
            return (Criteria) this;
        }

        public Criteria andScoredAbilityIsNull() {
            addCriterion("scored_ability is null");
            return (Criteria) this;
        }

        public Criteria andScoredAbilityIsNotNull() {
            addCriterion("scored_ability is not null");
            return (Criteria) this;
        }

        public Criteria andScoredAbilityEqualTo(Integer value) {
            addCriterion("scored_ability =", value, "scoredAbility");
            return (Criteria) this;
        }

        public Criteria andScoredAbilityNotEqualTo(Integer value) {
            addCriterion("scored_ability <>", value, "scoredAbility");
            return (Criteria) this;
        }

        public Criteria andScoredAbilityGreaterThan(Integer value) {
            addCriterion("scored_ability >", value, "scoredAbility");
            return (Criteria) this;
        }

        public Criteria andScoredAbilityGreaterThanOrEqualTo(Integer value) {
            addCriterion("scored_ability >=", value, "scoredAbility");
            return (Criteria) this;
        }

        public Criteria andScoredAbilityLessThan(Integer value) {
            addCriterion("scored_ability <", value, "scoredAbility");
            return (Criteria) this;
        }

        public Criteria andScoredAbilityLessThanOrEqualTo(Integer value) {
            addCriterion("scored_ability <=", value, "scoredAbility");
            return (Criteria) this;
        }

        public Criteria andScoredAbilityIn(List<Integer> values) {
            addCriterion("scored_ability in", values, "scoredAbility");
            return (Criteria) this;
        }

        public Criteria andScoredAbilityNotIn(List<Integer> values) {
            addCriterion("scored_ability not in", values, "scoredAbility");
            return (Criteria) this;
        }

        public Criteria andScoredAbilityBetween(Integer value1, Integer value2) {
            addCriterion("scored_ability between", value1, value2, "scoredAbility");
            return (Criteria) this;
        }

        public Criteria andScoredAbilityNotBetween(Integer value1, Integer value2) {
            addCriterion("scored_ability not between", value1, value2, "scoredAbility");
            return (Criteria) this;
        }

        public Criteria andFinanceAbilityIsNull() {
            addCriterion("finance_ability is null");
            return (Criteria) this;
        }

        public Criteria andFinanceAbilityIsNotNull() {
            addCriterion("finance_ability is not null");
            return (Criteria) this;
        }

        public Criteria andFinanceAbilityEqualTo(Integer value) {
            addCriterion("finance_ability =", value, "financeAbility");
            return (Criteria) this;
        }

        public Criteria andFinanceAbilityNotEqualTo(Integer value) {
            addCriterion("finance_ability <>", value, "financeAbility");
            return (Criteria) this;
        }

        public Criteria andFinanceAbilityGreaterThan(Integer value) {
            addCriterion("finance_ability >", value, "financeAbility");
            return (Criteria) this;
        }

        public Criteria andFinanceAbilityGreaterThanOrEqualTo(Integer value) {
            addCriterion("finance_ability >=", value, "financeAbility");
            return (Criteria) this;
        }

        public Criteria andFinanceAbilityLessThan(Integer value) {
            addCriterion("finance_ability <", value, "financeAbility");
            return (Criteria) this;
        }

        public Criteria andFinanceAbilityLessThanOrEqualTo(Integer value) {
            addCriterion("finance_ability <=", value, "financeAbility");
            return (Criteria) this;
        }

        public Criteria andFinanceAbilityIn(List<Integer> values) {
            addCriterion("finance_ability in", values, "financeAbility");
            return (Criteria) this;
        }

        public Criteria andFinanceAbilityNotIn(List<Integer> values) {
            addCriterion("finance_ability not in", values, "financeAbility");
            return (Criteria) this;
        }

        public Criteria andFinanceAbilityBetween(Integer value1, Integer value2) {
            addCriterion("finance_ability between", value1, value2, "financeAbility");
            return (Criteria) this;
        }

        public Criteria andFinanceAbilityNotBetween(Integer value1, Integer value2) {
            addCriterion("finance_ability not between", value1, value2, "financeAbility");
            return (Criteria) this;
        }

        public Criteria andFinanceItemAbilityIsNull() {
            addCriterion("finance_item_ability is null");
            return (Criteria) this;
        }

        public Criteria andFinanceItemAbilityIsNotNull() {
            addCriterion("finance_item_ability is not null");
            return (Criteria) this;
        }

        public Criteria andFinanceItemAbilityEqualTo(Integer value) {
            addCriterion("finance_item_ability =", value, "financeItemAbility");
            return (Criteria) this;
        }

        public Criteria andFinanceItemAbilityNotEqualTo(Integer value) {
            addCriterion("finance_item_ability <>", value, "financeItemAbility");
            return (Criteria) this;
        }

        public Criteria andFinanceItemAbilityGreaterThan(Integer value) {
            addCriterion("finance_item_ability >", value, "financeItemAbility");
            return (Criteria) this;
        }

        public Criteria andFinanceItemAbilityGreaterThanOrEqualTo(Integer value) {
            addCriterion("finance_item_ability >=", value, "financeItemAbility");
            return (Criteria) this;
        }

        public Criteria andFinanceItemAbilityLessThan(Integer value) {
            addCriterion("finance_item_ability <", value, "financeItemAbility");
            return (Criteria) this;
        }

        public Criteria andFinanceItemAbilityLessThanOrEqualTo(Integer value) {
            addCriterion("finance_item_ability <=", value, "financeItemAbility");
            return (Criteria) this;
        }

        public Criteria andFinanceItemAbilityIn(List<Integer> values) {
            addCriterion("finance_item_ability in", values, "financeItemAbility");
            return (Criteria) this;
        }

        public Criteria andFinanceItemAbilityNotIn(List<Integer> values) {
            addCriterion("finance_item_ability not in", values, "financeItemAbility");
            return (Criteria) this;
        }

        public Criteria andFinanceItemAbilityBetween(Integer value1, Integer value2) {
            addCriterion("finance_item_ability between", value1, value2, "financeItemAbility");
            return (Criteria) this;
        }

        public Criteria andFinanceItemAbilityNotBetween(Integer value1, Integer value2) {
            addCriterion("finance_item_ability not between", value1, value2, "financeItemAbility");
            return (Criteria) this;
        }

        public Criteria andDefaultFlagIsNull() {
            addCriterion("default_flag is null");
            return (Criteria) this;
        }

        public Criteria andDefaultFlagIsNotNull() {
            addCriterion("default_flag is not null");
            return (Criteria) this;
        }

        public Criteria andDefaultFlagEqualTo(Integer value) {
            addCriterion("default_flag =", value, "defaultFlag");
            return (Criteria) this;
        }

        public Criteria andDefaultFlagNotEqualTo(Integer value) {
            addCriterion("default_flag <>", value, "defaultFlag");
            return (Criteria) this;
        }

        public Criteria andDefaultFlagGreaterThan(Integer value) {
            addCriterion("default_flag >", value, "defaultFlag");
            return (Criteria) this;
        }

        public Criteria andDefaultFlagGreaterThanOrEqualTo(Integer value) {
            addCriterion("default_flag >=", value, "defaultFlag");
            return (Criteria) this;
        }

        public Criteria andDefaultFlagLessThan(Integer value) {
            addCriterion("default_flag <", value, "defaultFlag");
            return (Criteria) this;
        }

        public Criteria andDefaultFlagLessThanOrEqualTo(Integer value) {
            addCriterion("default_flag <=", value, "defaultFlag");
            return (Criteria) this;
        }

        public Criteria andDefaultFlagIn(List<Integer> values) {
            addCriterion("default_flag in", values, "defaultFlag");
            return (Criteria) this;
        }

        public Criteria andDefaultFlagNotIn(List<Integer> values) {
            addCriterion("default_flag not in", values, "defaultFlag");
            return (Criteria) this;
        }

        public Criteria andDefaultFlagBetween(Integer value1, Integer value2) {
            addCriterion("default_flag between", value1, value2, "defaultFlag");
            return (Criteria) this;
        }

        public Criteria andDefaultFlagNotBetween(Integer value1, Integer value2) {
            addCriterion("default_flag not between", value1, value2, "defaultFlag");
            return (Criteria) this;
        }

        public Criteria andStatusIsNull() {
            addCriterion("status is null");
            return (Criteria) this;
        }

        public Criteria andStatusIsNotNull() {
            addCriterion("status is not null");
            return (Criteria) this;
        }

        public Criteria andStatusEqualTo(Integer value) {
            addCriterion("status =", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotEqualTo(Integer value) {
            addCriterion("status <>", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusGreaterThan(Integer value) {
            addCriterion("status >", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusGreaterThanOrEqualTo(Integer value) {
            addCriterion("status >=", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusLessThan(Integer value) {
            addCriterion("status <", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusLessThanOrEqualTo(Integer value) {
            addCriterion("status <=", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusIn(List<Integer> values) {
            addCriterion("status in", values, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotIn(List<Integer> values) {
            addCriterion("status not in", values, "status");
            return (Criteria) this;
        }

        public Criteria andStatusBetween(Integer value1, Integer value2) {
            addCriterion("status between", value1, value2, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotBetween(Integer value1, Integer value2) {
            addCriterion("status not between", value1, value2, "status");
            return (Criteria) this;
        }

        public Criteria andDescriptionIsNull() {
            addCriterion("description is null");
            return (Criteria) this;
        }

        public Criteria andDescriptionIsNotNull() {
            addCriterion("description is not null");
            return (Criteria) this;
        }

        public Criteria andDescriptionEqualTo(String value) {
            addCriterion("description =", value, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionNotEqualTo(String value) {
            addCriterion("description <>", value, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionGreaterThan(String value) {
            addCriterion("description >", value, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionGreaterThanOrEqualTo(String value) {
            addCriterion("description >=", value, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionLessThan(String value) {
            addCriterion("description <", value, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionLessThanOrEqualTo(String value) {
            addCriterion("description <=", value, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionLike(String value) {
            addCriterion("description like", value, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionNotLike(String value) {
            addCriterion("description not like", value, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionIn(List<String> values) {
            addCriterion("description in", values, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionNotIn(List<String> values) {
            addCriterion("description not in", values, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionBetween(String value1, String value2) {
            addCriterion("description between", value1, value2, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionNotBetween(String value1, String value2) {
            addCriterion("description not between", value1, value2, "description");
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