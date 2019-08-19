package cn.com.siss.member.system.api.domain;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class RebateDetailExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    protected Integer limitStart;

    protected Integer limitEnd;

    public RebateDetailExample() {
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

        public Criteria andRebateRuleIdIsNull() {
            addCriterion("rebate_rule_id is null");
            return (Criteria) this;
        }

        public Criteria andRebateRuleIdIsNotNull() {
            addCriterion("rebate_rule_id is not null");
            return (Criteria) this;
        }

        public Criteria andRebateRuleIdEqualTo(Long value) {
            addCriterion("rebate_rule_id =", value, "rebateRuleId");
            return (Criteria) this;
        }

        public Criteria andRebateRuleIdNotEqualTo(Long value) {
            addCriterion("rebate_rule_id <>", value, "rebateRuleId");
            return (Criteria) this;
        }

        public Criteria andRebateRuleIdGreaterThan(Long value) {
            addCriterion("rebate_rule_id >", value, "rebateRuleId");
            return (Criteria) this;
        }

        public Criteria andRebateRuleIdGreaterThanOrEqualTo(Long value) {
            addCriterion("rebate_rule_id >=", value, "rebateRuleId");
            return (Criteria) this;
        }

        public Criteria andRebateRuleIdLessThan(Long value) {
            addCriterion("rebate_rule_id <", value, "rebateRuleId");
            return (Criteria) this;
        }

        public Criteria andRebateRuleIdLessThanOrEqualTo(Long value) {
            addCriterion("rebate_rule_id <=", value, "rebateRuleId");
            return (Criteria) this;
        }

        public Criteria andRebateRuleIdIn(List<Long> values) {
            addCriterion("rebate_rule_id in", values, "rebateRuleId");
            return (Criteria) this;
        }

        public Criteria andRebateRuleIdNotIn(List<Long> values) {
            addCriterion("rebate_rule_id not in", values, "rebateRuleId");
            return (Criteria) this;
        }

        public Criteria andRebateRuleIdBetween(Long value1, Long value2) {
            addCriterion("rebate_rule_id between", value1, value2, "rebateRuleId");
            return (Criteria) this;
        }

        public Criteria andRebateRuleIdNotBetween(Long value1, Long value2) {
            addCriterion("rebate_rule_id not between", value1, value2, "rebateRuleId");
            return (Criteria) this;
        }

        public Criteria andRebateWayIsNull() {
            addCriterion("rebate_way is null");
            return (Criteria) this;
        }

        public Criteria andRebateWayIsNotNull() {
            addCriterion("rebate_way is not null");
            return (Criteria) this;
        }

        public Criteria andRebateWayEqualTo(Integer value) {
            addCriterion("rebate_way =", value, "rebateWay");
            return (Criteria) this;
        }

        public Criteria andRebateWayNotEqualTo(Integer value) {
            addCriterion("rebate_way <>", value, "rebateWay");
            return (Criteria) this;
        }

        public Criteria andRebateWayGreaterThan(Integer value) {
            addCriterion("rebate_way >", value, "rebateWay");
            return (Criteria) this;
        }

        public Criteria andRebateWayGreaterThanOrEqualTo(Integer value) {
            addCriterion("rebate_way >=", value, "rebateWay");
            return (Criteria) this;
        }

        public Criteria andRebateWayLessThan(Integer value) {
            addCriterion("rebate_way <", value, "rebateWay");
            return (Criteria) this;
        }

        public Criteria andRebateWayLessThanOrEqualTo(Integer value) {
            addCriterion("rebate_way <=", value, "rebateWay");
            return (Criteria) this;
        }

        public Criteria andRebateWayIn(List<Integer> values) {
            addCriterion("rebate_way in", values, "rebateWay");
            return (Criteria) this;
        }

        public Criteria andRebateWayNotIn(List<Integer> values) {
            addCriterion("rebate_way not in", values, "rebateWay");
            return (Criteria) this;
        }

        public Criteria andRebateWayBetween(Integer value1, Integer value2) {
            addCriterion("rebate_way between", value1, value2, "rebateWay");
            return (Criteria) this;
        }

        public Criteria andRebateWayNotBetween(Integer value1, Integer value2) {
            addCriterion("rebate_way not between", value1, value2, "rebateWay");
            return (Criteria) this;
        }

        public Criteria andRebatePeriodIsNull() {
            addCriterion("rebate_period is null");
            return (Criteria) this;
        }

        public Criteria andRebatePeriodIsNotNull() {
            addCriterion("rebate_period is not null");
            return (Criteria) this;
        }

        public Criteria andRebatePeriodEqualTo(Integer value) {
            addCriterion("rebate_period =", value, "rebatePeriod");
            return (Criteria) this;
        }

        public Criteria andRebatePeriodNotEqualTo(Integer value) {
            addCriterion("rebate_period <>", value, "rebatePeriod");
            return (Criteria) this;
        }

        public Criteria andRebatePeriodGreaterThan(Integer value) {
            addCriterion("rebate_period >", value, "rebatePeriod");
            return (Criteria) this;
        }

        public Criteria andRebatePeriodGreaterThanOrEqualTo(Integer value) {
            addCriterion("rebate_period >=", value, "rebatePeriod");
            return (Criteria) this;
        }

        public Criteria andRebatePeriodLessThan(Integer value) {
            addCriterion("rebate_period <", value, "rebatePeriod");
            return (Criteria) this;
        }

        public Criteria andRebatePeriodLessThanOrEqualTo(Integer value) {
            addCriterion("rebate_period <=", value, "rebatePeriod");
            return (Criteria) this;
        }

        public Criteria andRebatePeriodIn(List<Integer> values) {
            addCriterion("rebate_period in", values, "rebatePeriod");
            return (Criteria) this;
        }

        public Criteria andRebatePeriodNotIn(List<Integer> values) {
            addCriterion("rebate_period not in", values, "rebatePeriod");
            return (Criteria) this;
        }

        public Criteria andRebatePeriodBetween(Integer value1, Integer value2) {
            addCriterion("rebate_period between", value1, value2, "rebatePeriod");
            return (Criteria) this;
        }

        public Criteria andRebatePeriodNotBetween(Integer value1, Integer value2) {
            addCriterion("rebate_period not between", value1, value2, "rebatePeriod");
            return (Criteria) this;
        }

        public Criteria andRebateValueIsNull() {
            addCriterion("rebate_value is null");
            return (Criteria) this;
        }

        public Criteria andRebateValueIsNotNull() {
            addCriterion("rebate_value is not null");
            return (Criteria) this;
        }

        public Criteria andRebateValueEqualTo(Integer value) {
            addCriterion("rebate_value =", value, "rebateValue");
            return (Criteria) this;
        }

        public Criteria andRebateValueNotEqualTo(Integer value) {
            addCriterion("rebate_value <>", value, "rebateValue");
            return (Criteria) this;
        }

        public Criteria andRebateValueGreaterThan(Integer value) {
            addCriterion("rebate_value >", value, "rebateValue");
            return (Criteria) this;
        }

        public Criteria andRebateValueGreaterThanOrEqualTo(Integer value) {
            addCriterion("rebate_value >=", value, "rebateValue");
            return (Criteria) this;
        }

        public Criteria andRebateValueLessThan(Integer value) {
            addCriterion("rebate_value <", value, "rebateValue");
            return (Criteria) this;
        }

        public Criteria andRebateValueLessThanOrEqualTo(Integer value) {
            addCriterion("rebate_value <=", value, "rebateValue");
            return (Criteria) this;
        }

        public Criteria andRebateValueIn(List<Integer> values) {
            addCriterion("rebate_value in", values, "rebateValue");
            return (Criteria) this;
        }

        public Criteria andRebateValueNotIn(List<Integer> values) {
            addCriterion("rebate_value not in", values, "rebateValue");
            return (Criteria) this;
        }

        public Criteria andRebateValueBetween(Integer value1, Integer value2) {
            addCriterion("rebate_value between", value1, value2, "rebateValue");
            return (Criteria) this;
        }

        public Criteria andRebateValueNotBetween(Integer value1, Integer value2) {
            addCriterion("rebate_value not between", value1, value2, "rebateValue");
            return (Criteria) this;
        }

        public Criteria andRebateValueTypeIsNull() {
            addCriterion("rebate_value_type is null");
            return (Criteria) this;
        }

        public Criteria andRebateValueTypeIsNotNull() {
            addCriterion("rebate_value_type is not null");
            return (Criteria) this;
        }

        public Criteria andRebateValueTypeEqualTo(Integer value) {
            addCriterion("rebate_value_type =", value, "rebateValueType");
            return (Criteria) this;
        }

        public Criteria andRebateValueTypeNotEqualTo(Integer value) {
            addCriterion("rebate_value_type <>", value, "rebateValueType");
            return (Criteria) this;
        }

        public Criteria andRebateValueTypeGreaterThan(Integer value) {
            addCriterion("rebate_value_type >", value, "rebateValueType");
            return (Criteria) this;
        }

        public Criteria andRebateValueTypeGreaterThanOrEqualTo(Integer value) {
            addCriterion("rebate_value_type >=", value, "rebateValueType");
            return (Criteria) this;
        }

        public Criteria andRebateValueTypeLessThan(Integer value) {
            addCriterion("rebate_value_type <", value, "rebateValueType");
            return (Criteria) this;
        }

        public Criteria andRebateValueTypeLessThanOrEqualTo(Integer value) {
            addCriterion("rebate_value_type <=", value, "rebateValueType");
            return (Criteria) this;
        }

        public Criteria andRebateValueTypeIn(List<Integer> values) {
            addCriterion("rebate_value_type in", values, "rebateValueType");
            return (Criteria) this;
        }

        public Criteria andRebateValueTypeNotIn(List<Integer> values) {
            addCriterion("rebate_value_type not in", values, "rebateValueType");
            return (Criteria) this;
        }

        public Criteria andRebateValueTypeBetween(Integer value1, Integer value2) {
            addCriterion("rebate_value_type between", value1, value2, "rebateValueType");
            return (Criteria) this;
        }

        public Criteria andRebateValueTypeNotBetween(Integer value1, Integer value2) {
            addCriterion("rebate_value_type not between", value1, value2, "rebateValueType");
            return (Criteria) this;
        }

        public Criteria andRebateItemIdIsNull() {
            addCriterion("rebate_item_id is null");
            return (Criteria) this;
        }

        public Criteria andRebateItemIdIsNotNull() {
            addCriterion("rebate_item_id is not null");
            return (Criteria) this;
        }

        public Criteria andRebateItemIdEqualTo(String value) {
            addCriterion("rebate_item_id =", value, "rebateItemId");
            return (Criteria) this;
        }

        public Criteria andRebateItemIdNotEqualTo(String value) {
            addCriterion("rebate_item_id <>", value, "rebateItemId");
            return (Criteria) this;
        }

        public Criteria andRebateItemIdGreaterThan(String value) {
            addCriterion("rebate_item_id >", value, "rebateItemId");
            return (Criteria) this;
        }

        public Criteria andRebateItemIdGreaterThanOrEqualTo(String value) {
            addCriterion("rebate_item_id >=", value, "rebateItemId");
            return (Criteria) this;
        }

        public Criteria andRebateItemIdLessThan(String value) {
            addCriterion("rebate_item_id <", value, "rebateItemId");
            return (Criteria) this;
        }

        public Criteria andRebateItemIdLessThanOrEqualTo(String value) {
            addCriterion("rebate_item_id <=", value, "rebateItemId");
            return (Criteria) this;
        }

        public Criteria andRebateItemIdLike(String value) {
            addCriterion("rebate_item_id like", value, "rebateItemId");
            return (Criteria) this;
        }

        public Criteria andRebateItemIdNotLike(String value) {
            addCriterion("rebate_item_id not like", value, "rebateItemId");
            return (Criteria) this;
        }

        public Criteria andRebateItemIdIn(List<String> values) {
            addCriterion("rebate_item_id in", values, "rebateItemId");
            return (Criteria) this;
        }

        public Criteria andRebateItemIdNotIn(List<String> values) {
            addCriterion("rebate_item_id not in", values, "rebateItemId");
            return (Criteria) this;
        }

        public Criteria andRebateItemIdBetween(String value1, String value2) {
            addCriterion("rebate_item_id between", value1, value2, "rebateItemId");
            return (Criteria) this;
        }

        public Criteria andRebateItemIdNotBetween(String value1, String value2) {
            addCriterion("rebate_item_id not between", value1, value2, "rebateItemId");
            return (Criteria) this;
        }

        public Criteria andRebateItemNoIsNull() {
            addCriterion("rebate_item_no is null");
            return (Criteria) this;
        }

        public Criteria andRebateItemNoIsNotNull() {
            addCriterion("rebate_item_no is not null");
            return (Criteria) this;
        }

        public Criteria andRebateItemNoEqualTo(String value) {
            addCriterion("rebate_item_no =", value, "rebateItemNo");
            return (Criteria) this;
        }

        public Criteria andRebateItemNoNotEqualTo(String value) {
            addCriterion("rebate_item_no <>", value, "rebateItemNo");
            return (Criteria) this;
        }

        public Criteria andRebateItemNoGreaterThan(String value) {
            addCriterion("rebate_item_no >", value, "rebateItemNo");
            return (Criteria) this;
        }

        public Criteria andRebateItemNoGreaterThanOrEqualTo(String value) {
            addCriterion("rebate_item_no >=", value, "rebateItemNo");
            return (Criteria) this;
        }

        public Criteria andRebateItemNoLessThan(String value) {
            addCriterion("rebate_item_no <", value, "rebateItemNo");
            return (Criteria) this;
        }

        public Criteria andRebateItemNoLessThanOrEqualTo(String value) {
            addCriterion("rebate_item_no <=", value, "rebateItemNo");
            return (Criteria) this;
        }

        public Criteria andRebateItemNoLike(String value) {
            addCriterion("rebate_item_no like", value, "rebateItemNo");
            return (Criteria) this;
        }

        public Criteria andRebateItemNoNotLike(String value) {
            addCriterion("rebate_item_no not like", value, "rebateItemNo");
            return (Criteria) this;
        }

        public Criteria andRebateItemNoIn(List<String> values) {
            addCriterion("rebate_item_no in", values, "rebateItemNo");
            return (Criteria) this;
        }

        public Criteria andRebateItemNoNotIn(List<String> values) {
            addCriterion("rebate_item_no not in", values, "rebateItemNo");
            return (Criteria) this;
        }

        public Criteria andRebateItemNoBetween(String value1, String value2) {
            addCriterion("rebate_item_no between", value1, value2, "rebateItemNo");
            return (Criteria) this;
        }

        public Criteria andRebateItemNoNotBetween(String value1, String value2) {
            addCriterion("rebate_item_no not between", value1, value2, "rebateItemNo");
            return (Criteria) this;
        }

        public Criteria andRebateItemNameIsNull() {
            addCriterion("rebate_item_name is null");
            return (Criteria) this;
        }

        public Criteria andRebateItemNameIsNotNull() {
            addCriterion("rebate_item_name is not null");
            return (Criteria) this;
        }

        public Criteria andRebateItemNameEqualTo(String value) {
            addCriterion("rebate_item_name =", value, "rebateItemName");
            return (Criteria) this;
        }

        public Criteria andRebateItemNameNotEqualTo(String value) {
            addCriterion("rebate_item_name <>", value, "rebateItemName");
            return (Criteria) this;
        }

        public Criteria andRebateItemNameGreaterThan(String value) {
            addCriterion("rebate_item_name >", value, "rebateItemName");
            return (Criteria) this;
        }

        public Criteria andRebateItemNameGreaterThanOrEqualTo(String value) {
            addCriterion("rebate_item_name >=", value, "rebateItemName");
            return (Criteria) this;
        }

        public Criteria andRebateItemNameLessThan(String value) {
            addCriterion("rebate_item_name <", value, "rebateItemName");
            return (Criteria) this;
        }

        public Criteria andRebateItemNameLessThanOrEqualTo(String value) {
            addCriterion("rebate_item_name <=", value, "rebateItemName");
            return (Criteria) this;
        }

        public Criteria andRebateItemNameLike(String value) {
            addCriterion("rebate_item_name like", value, "rebateItemName");
            return (Criteria) this;
        }

        public Criteria andRebateItemNameNotLike(String value) {
            addCriterion("rebate_item_name not like", value, "rebateItemName");
            return (Criteria) this;
        }

        public Criteria andRebateItemNameIn(List<String> values) {
            addCriterion("rebate_item_name in", values, "rebateItemName");
            return (Criteria) this;
        }

        public Criteria andRebateItemNameNotIn(List<String> values) {
            addCriterion("rebate_item_name not in", values, "rebateItemName");
            return (Criteria) this;
        }

        public Criteria andRebateItemNameBetween(String value1, String value2) {
            addCriterion("rebate_item_name between", value1, value2, "rebateItemName");
            return (Criteria) this;
        }

        public Criteria andRebateItemNameNotBetween(String value1, String value2) {
            addCriterion("rebate_item_name not between", value1, value2, "rebateItemName");
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
            addCriterion("effective_start_date =", value, "effectiveStartDate");
            return (Criteria) this;
        }

        public Criteria andEffectiveStartDateNotEqualTo(Date value) {
            addCriterion("effective_start_date <>", value, "effectiveStartDate");
            return (Criteria) this;
        }

        public Criteria andEffectiveStartDateGreaterThan(Date value) {
            addCriterion("effective_start_date >", value, "effectiveStartDate");
            return (Criteria) this;
        }

        public Criteria andEffectiveStartDateGreaterThanOrEqualTo(Date value) {
            addCriterion("effective_start_date >=", value, "effectiveStartDate");
            return (Criteria) this;
        }

        public Criteria andEffectiveStartDateLessThan(Date value) {
            addCriterion("effective_start_date <", value, "effectiveStartDate");
            return (Criteria) this;
        }

        public Criteria andEffectiveStartDateLessThanOrEqualTo(Date value) {
            addCriterion("effective_start_date <=", value, "effectiveStartDate");
            return (Criteria) this;
        }

        public Criteria andEffectiveStartDateIn(List<Date> values) {
            addCriterion("effective_start_date in", values, "effectiveStartDate");
            return (Criteria) this;
        }

        public Criteria andEffectiveStartDateNotIn(List<Date> values) {
            addCriterion("effective_start_date not in", values, "effectiveStartDate");
            return (Criteria) this;
        }

        public Criteria andEffectiveStartDateBetween(Date value1, Date value2) {
            addCriterion("effective_start_date between", value1, value2, "effectiveStartDate");
            return (Criteria) this;
        }

        public Criteria andEffectiveStartDateNotBetween(Date value1, Date value2) {
            addCriterion("effective_start_date not between", value1, value2, "effectiveStartDate");
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