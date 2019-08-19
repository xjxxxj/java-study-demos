package cn.com.siss.member.scored.api.domain;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class ScoredRuleSnapExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    protected Integer limitStart;

    protected Integer limitEnd;

    public ScoredRuleSnapExample() {
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

        public Criteria andRuleIdIsNull() {
            addCriterion("rule_id is null");
            return (Criteria) this;
        }

        public Criteria andRuleIdIsNotNull() {
            addCriterion("rule_id is not null");
            return (Criteria) this;
        }

        public Criteria andRuleIdEqualTo(Long value) {
            addCriterion("rule_id =", value, "ruleId");
            return (Criteria) this;
        }

        public Criteria andRuleIdNotEqualTo(Long value) {
            addCriterion("rule_id <>", value, "ruleId");
            return (Criteria) this;
        }

        public Criteria andRuleIdGreaterThan(Long value) {
            addCriterion("rule_id >", value, "ruleId");
            return (Criteria) this;
        }

        public Criteria andRuleIdGreaterThanOrEqualTo(Long value) {
            addCriterion("rule_id >=", value, "ruleId");
            return (Criteria) this;
        }

        public Criteria andRuleIdLessThan(Long value) {
            addCriterion("rule_id <", value, "ruleId");
            return (Criteria) this;
        }

        public Criteria andRuleIdLessThanOrEqualTo(Long value) {
            addCriterion("rule_id <=", value, "ruleId");
            return (Criteria) this;
        }

        public Criteria andRuleIdIn(List<Long> values) {
            addCriterion("rule_id in", values, "ruleId");
            return (Criteria) this;
        }

        public Criteria andRuleIdNotIn(List<Long> values) {
            addCriterion("rule_id not in", values, "ruleId");
            return (Criteria) this;
        }

        public Criteria andRuleIdBetween(Long value1, Long value2) {
            addCriterion("rule_id between", value1, value2, "ruleId");
            return (Criteria) this;
        }

        public Criteria andRuleIdNotBetween(Long value1, Long value2) {
            addCriterion("rule_id not between", value1, value2, "ruleId");
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

        public Criteria andRegisterScoredIsNull() {
            addCriterion("register_scored is null");
            return (Criteria) this;
        }

        public Criteria andRegisterScoredIsNotNull() {
            addCriterion("register_scored is not null");
            return (Criteria) this;
        }

        public Criteria andRegisterScoredEqualTo(BigDecimal value) {
            addCriterion("register_scored =", value, "registerScored");
            return (Criteria) this;
        }

        public Criteria andRegisterScoredNotEqualTo(BigDecimal value) {
            addCriterion("register_scored <>", value, "registerScored");
            return (Criteria) this;
        }

        public Criteria andRegisterScoredGreaterThan(BigDecimal value) {
            addCriterion("register_scored >", value, "registerScored");
            return (Criteria) this;
        }

        public Criteria andRegisterScoredGreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("register_scored >=", value, "registerScored");
            return (Criteria) this;
        }

        public Criteria andRegisterScoredLessThan(BigDecimal value) {
            addCriterion("register_scored <", value, "registerScored");
            return (Criteria) this;
        }

        public Criteria andRegisterScoredLessThanOrEqualTo(BigDecimal value) {
            addCriterion("register_scored <=", value, "registerScored");
            return (Criteria) this;
        }

        public Criteria andRegisterScoredIn(List<BigDecimal> values) {
            addCriterion("register_scored in", values, "registerScored");
            return (Criteria) this;
        }

        public Criteria andRegisterScoredNotIn(List<BigDecimal> values) {
            addCriterion("register_scored not in", values, "registerScored");
            return (Criteria) this;
        }

        public Criteria andRegisterScoredBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("register_scored between", value1, value2, "registerScored");
            return (Criteria) this;
        }

        public Criteria andRegisterScoredNotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("register_scored not between", value1, value2, "registerScored");
            return (Criteria) this;
        }

        public Criteria andScoredPlanIsNull() {
            addCriterion("scored_plan is null");
            return (Criteria) this;
        }

        public Criteria andScoredPlanIsNotNull() {
            addCriterion("scored_plan is not null");
            return (Criteria) this;
        }

        public Criteria andScoredPlanEqualTo(Integer value) {
            addCriterion("scored_plan =", value, "scoredPlan");
            return (Criteria) this;
        }

        public Criteria andScoredPlanNotEqualTo(Integer value) {
            addCriterion("scored_plan <>", value, "scoredPlan");
            return (Criteria) this;
        }

        public Criteria andScoredPlanGreaterThan(Integer value) {
            addCriterion("scored_plan >", value, "scoredPlan");
            return (Criteria) this;
        }

        public Criteria andScoredPlanGreaterThanOrEqualTo(Integer value) {
            addCriterion("scored_plan >=", value, "scoredPlan");
            return (Criteria) this;
        }

        public Criteria andScoredPlanLessThan(Integer value) {
            addCriterion("scored_plan <", value, "scoredPlan");
            return (Criteria) this;
        }

        public Criteria andScoredPlanLessThanOrEqualTo(Integer value) {
            addCriterion("scored_plan <=", value, "scoredPlan");
            return (Criteria) this;
        }

        public Criteria andScoredPlanIn(List<Integer> values) {
            addCriterion("scored_plan in", values, "scoredPlan");
            return (Criteria) this;
        }

        public Criteria andScoredPlanNotIn(List<Integer> values) {
            addCriterion("scored_plan not in", values, "scoredPlan");
            return (Criteria) this;
        }

        public Criteria andScoredPlanBetween(Integer value1, Integer value2) {
            addCriterion("scored_plan between", value1, value2, "scoredPlan");
            return (Criteria) this;
        }

        public Criteria andScoredPlanNotBetween(Integer value1, Integer value2) {
            addCriterion("scored_plan not between", value1, value2, "scoredPlan");
            return (Criteria) this;
        }

        public Criteria andScoredPlanAmountIsNull() {
            addCriterion("scored_plan_amount is null");
            return (Criteria) this;
        }

        public Criteria andScoredPlanAmountIsNotNull() {
            addCriterion("scored_plan_amount is not null");
            return (Criteria) this;
        }

        public Criteria andScoredPlanAmountEqualTo(Integer value) {
            addCriterion("scored_plan_amount =", value, "scoredPlanAmount");
            return (Criteria) this;
        }

        public Criteria andScoredPlanAmountNotEqualTo(Integer value) {
            addCriterion("scored_plan_amount <>", value, "scoredPlanAmount");
            return (Criteria) this;
        }

        public Criteria andScoredPlanAmountGreaterThan(Integer value) {
            addCriterion("scored_plan_amount >", value, "scoredPlanAmount");
            return (Criteria) this;
        }

        public Criteria andScoredPlanAmountGreaterThanOrEqualTo(Integer value) {
            addCriterion("scored_plan_amount >=", value, "scoredPlanAmount");
            return (Criteria) this;
        }

        public Criteria andScoredPlanAmountLessThan(Integer value) {
            addCriterion("scored_plan_amount <", value, "scoredPlanAmount");
            return (Criteria) this;
        }

        public Criteria andScoredPlanAmountLessThanOrEqualTo(Integer value) {
            addCriterion("scored_plan_amount <=", value, "scoredPlanAmount");
            return (Criteria) this;
        }

        public Criteria andScoredPlanAmountIn(List<Integer> values) {
            addCriterion("scored_plan_amount in", values, "scoredPlanAmount");
            return (Criteria) this;
        }

        public Criteria andScoredPlanAmountNotIn(List<Integer> values) {
            addCriterion("scored_plan_amount not in", values, "scoredPlanAmount");
            return (Criteria) this;
        }

        public Criteria andScoredPlanAmountBetween(Integer value1, Integer value2) {
            addCriterion("scored_plan_amount between", value1, value2, "scoredPlanAmount");
            return (Criteria) this;
        }

        public Criteria andScoredPlanAmountNotBetween(Integer value1, Integer value2) {
            addCriterion("scored_plan_amount not between", value1, value2, "scoredPlanAmount");
            return (Criteria) this;
        }

        public Criteria andScoredPlanValueIsNull() {
            addCriterion("scored_plan_value is null");
            return (Criteria) this;
        }

        public Criteria andScoredPlanValueIsNotNull() {
            addCriterion("scored_plan_value is not null");
            return (Criteria) this;
        }

        public Criteria andScoredPlanValueEqualTo(Integer value) {
            addCriterion("scored_plan_value =", value, "scoredPlanValue");
            return (Criteria) this;
        }

        public Criteria andScoredPlanValueNotEqualTo(Integer value) {
            addCriterion("scored_plan_value <>", value, "scoredPlanValue");
            return (Criteria) this;
        }

        public Criteria andScoredPlanValueGreaterThan(Integer value) {
            addCriterion("scored_plan_value >", value, "scoredPlanValue");
            return (Criteria) this;
        }

        public Criteria andScoredPlanValueGreaterThanOrEqualTo(Integer value) {
            addCriterion("scored_plan_value >=", value, "scoredPlanValue");
            return (Criteria) this;
        }

        public Criteria andScoredPlanValueLessThan(Integer value) {
            addCriterion("scored_plan_value <", value, "scoredPlanValue");
            return (Criteria) this;
        }

        public Criteria andScoredPlanValueLessThanOrEqualTo(Integer value) {
            addCriterion("scored_plan_value <=", value, "scoredPlanValue");
            return (Criteria) this;
        }

        public Criteria andScoredPlanValueIn(List<Integer> values) {
            addCriterion("scored_plan_value in", values, "scoredPlanValue");
            return (Criteria) this;
        }

        public Criteria andScoredPlanValueNotIn(List<Integer> values) {
            addCriterion("scored_plan_value not in", values, "scoredPlanValue");
            return (Criteria) this;
        }

        public Criteria andScoredPlanValueBetween(Integer value1, Integer value2) {
            addCriterion("scored_plan_value between", value1, value2, "scoredPlanValue");
            return (Criteria) this;
        }

        public Criteria andScoredPlanValueNotBetween(Integer value1, Integer value2) {
            addCriterion("scored_plan_value not between", value1, value2, "scoredPlanValue");
            return (Criteria) this;
        }

        public Criteria andScoredPlanCustomValueIsNull() {
            addCriterion("scored_plan_custom_value is null");
            return (Criteria) this;
        }

        public Criteria andScoredPlanCustomValueIsNotNull() {
            addCriterion("scored_plan_custom_value is not null");
            return (Criteria) this;
        }

        public Criteria andScoredPlanCustomValueEqualTo(String value) {
            addCriterion("scored_plan_custom_value =", value, "scoredPlanCustomValue");
            return (Criteria) this;
        }

        public Criteria andScoredPlanCustomValueNotEqualTo(String value) {
            addCriterion("scored_plan_custom_value <>", value, "scoredPlanCustomValue");
            return (Criteria) this;
        }

        public Criteria andScoredPlanCustomValueGreaterThan(String value) {
            addCriterion("scored_plan_custom_value >", value, "scoredPlanCustomValue");
            return (Criteria) this;
        }

        public Criteria andScoredPlanCustomValueGreaterThanOrEqualTo(String value) {
            addCriterion("scored_plan_custom_value >=", value, "scoredPlanCustomValue");
            return (Criteria) this;
        }

        public Criteria andScoredPlanCustomValueLessThan(String value) {
            addCriterion("scored_plan_custom_value <", value, "scoredPlanCustomValue");
            return (Criteria) this;
        }

        public Criteria andScoredPlanCustomValueLessThanOrEqualTo(String value) {
            addCriterion("scored_plan_custom_value <=", value, "scoredPlanCustomValue");
            return (Criteria) this;
        }

        public Criteria andScoredPlanCustomValueLike(String value) {
            addCriterion("scored_plan_custom_value like", value, "scoredPlanCustomValue");
            return (Criteria) this;
        }

        public Criteria andScoredPlanCustomValueNotLike(String value) {
            addCriterion("scored_plan_custom_value not like", value, "scoredPlanCustomValue");
            return (Criteria) this;
        }

        public Criteria andScoredPlanCustomValueIn(List<String> values) {
            addCriterion("scored_plan_custom_value in", values, "scoredPlanCustomValue");
            return (Criteria) this;
        }

        public Criteria andScoredPlanCustomValueNotIn(List<String> values) {
            addCriterion("scored_plan_custom_value not in", values, "scoredPlanCustomValue");
            return (Criteria) this;
        }

        public Criteria andScoredPlanCustomValueBetween(String value1, String value2) {
            addCriterion("scored_plan_custom_value between", value1, value2, "scoredPlanCustomValue");
            return (Criteria) this;
        }

        public Criteria andScoredPlanCustomValueNotBetween(String value1, String value2) {
            addCriterion("scored_plan_custom_value not between", value1, value2, "scoredPlanCustomValue");
            return (Criteria) this;
        }

        public Criteria andScoredAbsoluteFlagIsNull() {
            addCriterion("scored_absolute_flag is null");
            return (Criteria) this;
        }

        public Criteria andScoredAbsoluteFlagIsNotNull() {
            addCriterion("scored_absolute_flag is not null");
            return (Criteria) this;
        }

        public Criteria andScoredAbsoluteFlagEqualTo(Integer value) {
            addCriterion("scored_absolute_flag =", value, "scoredAbsoluteFlag");
            return (Criteria) this;
        }

        public Criteria andScoredAbsoluteFlagNotEqualTo(Integer value) {
            addCriterion("scored_absolute_flag <>", value, "scoredAbsoluteFlag");
            return (Criteria) this;
        }

        public Criteria andScoredAbsoluteFlagGreaterThan(Integer value) {
            addCriterion("scored_absolute_flag >", value, "scoredAbsoluteFlag");
            return (Criteria) this;
        }

        public Criteria andScoredAbsoluteFlagGreaterThanOrEqualTo(Integer value) {
            addCriterion("scored_absolute_flag >=", value, "scoredAbsoluteFlag");
            return (Criteria) this;
        }

        public Criteria andScoredAbsoluteFlagLessThan(Integer value) {
            addCriterion("scored_absolute_flag <", value, "scoredAbsoluteFlag");
            return (Criteria) this;
        }

        public Criteria andScoredAbsoluteFlagLessThanOrEqualTo(Integer value) {
            addCriterion("scored_absolute_flag <=", value, "scoredAbsoluteFlag");
            return (Criteria) this;
        }

        public Criteria andScoredAbsoluteFlagIn(List<Integer> values) {
            addCriterion("scored_absolute_flag in", values, "scoredAbsoluteFlag");
            return (Criteria) this;
        }

        public Criteria andScoredAbsoluteFlagNotIn(List<Integer> values) {
            addCriterion("scored_absolute_flag not in", values, "scoredAbsoluteFlag");
            return (Criteria) this;
        }

        public Criteria andScoredAbsoluteFlagBetween(Integer value1, Integer value2) {
            addCriterion("scored_absolute_flag between", value1, value2, "scoredAbsoluteFlag");
            return (Criteria) this;
        }

        public Criteria andScoredAbsoluteFlagNotBetween(Integer value1, Integer value2) {
            addCriterion("scored_absolute_flag not between", value1, value2, "scoredAbsoluteFlag");
            return (Criteria) this;
        }

        public Criteria andScoredSpecialFlagIsNull() {
            addCriterion("scored_special_flag is null");
            return (Criteria) this;
        }

        public Criteria andScoredSpecialFlagIsNotNull() {
            addCriterion("scored_special_flag is not null");
            return (Criteria) this;
        }

        public Criteria andScoredSpecialFlagEqualTo(Integer value) {
            addCriterion("scored_special_flag =", value, "scoredSpecialFlag");
            return (Criteria) this;
        }

        public Criteria andScoredSpecialFlagNotEqualTo(Integer value) {
            addCriterion("scored_special_flag <>", value, "scoredSpecialFlag");
            return (Criteria) this;
        }

        public Criteria andScoredSpecialFlagGreaterThan(Integer value) {
            addCriterion("scored_special_flag >", value, "scoredSpecialFlag");
            return (Criteria) this;
        }

        public Criteria andScoredSpecialFlagGreaterThanOrEqualTo(Integer value) {
            addCriterion("scored_special_flag >=", value, "scoredSpecialFlag");
            return (Criteria) this;
        }

        public Criteria andScoredSpecialFlagLessThan(Integer value) {
            addCriterion("scored_special_flag <", value, "scoredSpecialFlag");
            return (Criteria) this;
        }

        public Criteria andScoredSpecialFlagLessThanOrEqualTo(Integer value) {
            addCriterion("scored_special_flag <=", value, "scoredSpecialFlag");
            return (Criteria) this;
        }

        public Criteria andScoredSpecialFlagIn(List<Integer> values) {
            addCriterion("scored_special_flag in", values, "scoredSpecialFlag");
            return (Criteria) this;
        }

        public Criteria andScoredSpecialFlagNotIn(List<Integer> values) {
            addCriterion("scored_special_flag not in", values, "scoredSpecialFlag");
            return (Criteria) this;
        }

        public Criteria andScoredSpecialFlagBetween(Integer value1, Integer value2) {
            addCriterion("scored_special_flag between", value1, value2, "scoredSpecialFlag");
            return (Criteria) this;
        }

        public Criteria andScoredSpecialFlagNotBetween(Integer value1, Integer value2) {
            addCriterion("scored_special_flag not between", value1, value2, "scoredSpecialFlag");
            return (Criteria) this;
        }

        public Criteria andScoredBargainFlagIsNull() {
            addCriterion("scored_bargain_flag is null");
            return (Criteria) this;
        }

        public Criteria andScoredBargainFlagIsNotNull() {
            addCriterion("scored_bargain_flag is not null");
            return (Criteria) this;
        }

        public Criteria andScoredBargainFlagEqualTo(Integer value) {
            addCriterion("scored_bargain_flag =", value, "scoredBargainFlag");
            return (Criteria) this;
        }

        public Criteria andScoredBargainFlagNotEqualTo(Integer value) {
            addCriterion("scored_bargain_flag <>", value, "scoredBargainFlag");
            return (Criteria) this;
        }

        public Criteria andScoredBargainFlagGreaterThan(Integer value) {
            addCriterion("scored_bargain_flag >", value, "scoredBargainFlag");
            return (Criteria) this;
        }

        public Criteria andScoredBargainFlagGreaterThanOrEqualTo(Integer value) {
            addCriterion("scored_bargain_flag >=", value, "scoredBargainFlag");
            return (Criteria) this;
        }

        public Criteria andScoredBargainFlagLessThan(Integer value) {
            addCriterion("scored_bargain_flag <", value, "scoredBargainFlag");
            return (Criteria) this;
        }

        public Criteria andScoredBargainFlagLessThanOrEqualTo(Integer value) {
            addCriterion("scored_bargain_flag <=", value, "scoredBargainFlag");
            return (Criteria) this;
        }

        public Criteria andScoredBargainFlagIn(List<Integer> values) {
            addCriterion("scored_bargain_flag in", values, "scoredBargainFlag");
            return (Criteria) this;
        }

        public Criteria andScoredBargainFlagNotIn(List<Integer> values) {
            addCriterion("scored_bargain_flag not in", values, "scoredBargainFlag");
            return (Criteria) this;
        }

        public Criteria andScoredBargainFlagBetween(Integer value1, Integer value2) {
            addCriterion("scored_bargain_flag between", value1, value2, "scoredBargainFlag");
            return (Criteria) this;
        }

        public Criteria andScoredBargainFlagNotBetween(Integer value1, Integer value2) {
            addCriterion("scored_bargain_flag not between", value1, value2, "scoredBargainFlag");
            return (Criteria) this;
        }

        public Criteria andScoredGiftFlagIsNull() {
            addCriterion("scored_gift_flag is null");
            return (Criteria) this;
        }

        public Criteria andScoredGiftFlagIsNotNull() {
            addCriterion("scored_gift_flag is not null");
            return (Criteria) this;
        }

        public Criteria andScoredGiftFlagEqualTo(Integer value) {
            addCriterion("scored_gift_flag =", value, "scoredGiftFlag");
            return (Criteria) this;
        }

        public Criteria andScoredGiftFlagNotEqualTo(Integer value) {
            addCriterion("scored_gift_flag <>", value, "scoredGiftFlag");
            return (Criteria) this;
        }

        public Criteria andScoredGiftFlagGreaterThan(Integer value) {
            addCriterion("scored_gift_flag >", value, "scoredGiftFlag");
            return (Criteria) this;
        }

        public Criteria andScoredGiftFlagGreaterThanOrEqualTo(Integer value) {
            addCriterion("scored_gift_flag >=", value, "scoredGiftFlag");
            return (Criteria) this;
        }

        public Criteria andScoredGiftFlagLessThan(Integer value) {
            addCriterion("scored_gift_flag <", value, "scoredGiftFlag");
            return (Criteria) this;
        }

        public Criteria andScoredGiftFlagLessThanOrEqualTo(Integer value) {
            addCriterion("scored_gift_flag <=", value, "scoredGiftFlag");
            return (Criteria) this;
        }

        public Criteria andScoredGiftFlagIn(List<Integer> values) {
            addCriterion("scored_gift_flag in", values, "scoredGiftFlag");
            return (Criteria) this;
        }

        public Criteria andScoredGiftFlagNotIn(List<Integer> values) {
            addCriterion("scored_gift_flag not in", values, "scoredGiftFlag");
            return (Criteria) this;
        }

        public Criteria andScoredGiftFlagBetween(Integer value1, Integer value2) {
            addCriterion("scored_gift_flag between", value1, value2, "scoredGiftFlag");
            return (Criteria) this;
        }

        public Criteria andScoredGiftFlagNotBetween(Integer value1, Integer value2) {
            addCriterion("scored_gift_flag not between", value1, value2, "scoredGiftFlag");
            return (Criteria) this;
        }

        public Criteria andScoredDiscountFlagIsNull() {
            addCriterion("scored_discount_flag is null");
            return (Criteria) this;
        }

        public Criteria andScoredDiscountFlagIsNotNull() {
            addCriterion("scored_discount_flag is not null");
            return (Criteria) this;
        }

        public Criteria andScoredDiscountFlagEqualTo(Integer value) {
            addCriterion("scored_discount_flag =", value, "scoredDiscountFlag");
            return (Criteria) this;
        }

        public Criteria andScoredDiscountFlagNotEqualTo(Integer value) {
            addCriterion("scored_discount_flag <>", value, "scoredDiscountFlag");
            return (Criteria) this;
        }

        public Criteria andScoredDiscountFlagGreaterThan(Integer value) {
            addCriterion("scored_discount_flag >", value, "scoredDiscountFlag");
            return (Criteria) this;
        }

        public Criteria andScoredDiscountFlagGreaterThanOrEqualTo(Integer value) {
            addCriterion("scored_discount_flag >=", value, "scoredDiscountFlag");
            return (Criteria) this;
        }

        public Criteria andScoredDiscountFlagLessThan(Integer value) {
            addCriterion("scored_discount_flag <", value, "scoredDiscountFlag");
            return (Criteria) this;
        }

        public Criteria andScoredDiscountFlagLessThanOrEqualTo(Integer value) {
            addCriterion("scored_discount_flag <=", value, "scoredDiscountFlag");
            return (Criteria) this;
        }

        public Criteria andScoredDiscountFlagIn(List<Integer> values) {
            addCriterion("scored_discount_flag in", values, "scoredDiscountFlag");
            return (Criteria) this;
        }

        public Criteria andScoredDiscountFlagNotIn(List<Integer> values) {
            addCriterion("scored_discount_flag not in", values, "scoredDiscountFlag");
            return (Criteria) this;
        }

        public Criteria andScoredDiscountFlagBetween(Integer value1, Integer value2) {
            addCriterion("scored_discount_flag between", value1, value2, "scoredDiscountFlag");
            return (Criteria) this;
        }

        public Criteria andScoredDiscountFlagNotBetween(Integer value1, Integer value2) {
            addCriterion("scored_discount_flag not between", value1, value2, "scoredDiscountFlag");
            return (Criteria) this;
        }

        public Criteria andScoredDiscountWayIsNull() {
            addCriterion("scored_discount_way is null");
            return (Criteria) this;
        }

        public Criteria andScoredDiscountWayIsNotNull() {
            addCriterion("scored_discount_way is not null");
            return (Criteria) this;
        }

        public Criteria andScoredDiscountWayEqualTo(Integer value) {
            addCriterion("scored_discount_way =", value, "scoredDiscountWay");
            return (Criteria) this;
        }

        public Criteria andScoredDiscountWayNotEqualTo(Integer value) {
            addCriterion("scored_discount_way <>", value, "scoredDiscountWay");
            return (Criteria) this;
        }

        public Criteria andScoredDiscountWayGreaterThan(Integer value) {
            addCriterion("scored_discount_way >", value, "scoredDiscountWay");
            return (Criteria) this;
        }

        public Criteria andScoredDiscountWayGreaterThanOrEqualTo(Integer value) {
            addCriterion("scored_discount_way >=", value, "scoredDiscountWay");
            return (Criteria) this;
        }

        public Criteria andScoredDiscountWayLessThan(Integer value) {
            addCriterion("scored_discount_way <", value, "scoredDiscountWay");
            return (Criteria) this;
        }

        public Criteria andScoredDiscountWayLessThanOrEqualTo(Integer value) {
            addCriterion("scored_discount_way <=", value, "scoredDiscountWay");
            return (Criteria) this;
        }

        public Criteria andScoredDiscountWayIn(List<Integer> values) {
            addCriterion("scored_discount_way in", values, "scoredDiscountWay");
            return (Criteria) this;
        }

        public Criteria andScoredDiscountWayNotIn(List<Integer> values) {
            addCriterion("scored_discount_way not in", values, "scoredDiscountWay");
            return (Criteria) this;
        }

        public Criteria andScoredDiscountWayBetween(Integer value1, Integer value2) {
            addCriterion("scored_discount_way between", value1, value2, "scoredDiscountWay");
            return (Criteria) this;
        }

        public Criteria andScoredDiscountWayNotBetween(Integer value1, Integer value2) {
            addCriterion("scored_discount_way not between", value1, value2, "scoredDiscountWay");
            return (Criteria) this;
        }

        public Criteria andScoredDiscountValueIsNull() {
            addCriterion("scored_discount_value is null");
            return (Criteria) this;
        }

        public Criteria andScoredDiscountValueIsNotNull() {
            addCriterion("scored_discount_value is not null");
            return (Criteria) this;
        }

        public Criteria andScoredDiscountValueEqualTo(Integer value) {
            addCriterion("scored_discount_value =", value, "scoredDiscountValue");
            return (Criteria) this;
        }

        public Criteria andScoredDiscountValueNotEqualTo(Integer value) {
            addCriterion("scored_discount_value <>", value, "scoredDiscountValue");
            return (Criteria) this;
        }

        public Criteria andScoredDiscountValueGreaterThan(Integer value) {
            addCriterion("scored_discount_value >", value, "scoredDiscountValue");
            return (Criteria) this;
        }

        public Criteria andScoredDiscountValueGreaterThanOrEqualTo(Integer value) {
            addCriterion("scored_discount_value >=", value, "scoredDiscountValue");
            return (Criteria) this;
        }

        public Criteria andScoredDiscountValueLessThan(Integer value) {
            addCriterion("scored_discount_value <", value, "scoredDiscountValue");
            return (Criteria) this;
        }

        public Criteria andScoredDiscountValueLessThanOrEqualTo(Integer value) {
            addCriterion("scored_discount_value <=", value, "scoredDiscountValue");
            return (Criteria) this;
        }

        public Criteria andScoredDiscountValueIn(List<Integer> values) {
            addCriterion("scored_discount_value in", values, "scoredDiscountValue");
            return (Criteria) this;
        }

        public Criteria andScoredDiscountValueNotIn(List<Integer> values) {
            addCriterion("scored_discount_value not in", values, "scoredDiscountValue");
            return (Criteria) this;
        }

        public Criteria andScoredDiscountValueBetween(Integer value1, Integer value2) {
            addCriterion("scored_discount_value between", value1, value2, "scoredDiscountValue");
            return (Criteria) this;
        }

        public Criteria andScoredDiscountValueNotBetween(Integer value1, Integer value2) {
            addCriterion("scored_discount_value not between", value1, value2, "scoredDiscountValue");
            return (Criteria) this;
        }

        public Criteria andBirthdayMultipleIsNull() {
            addCriterion("birthday_multiple is null");
            return (Criteria) this;
        }

        public Criteria andBirthdayMultipleIsNotNull() {
            addCriterion("birthday_multiple is not null");
            return (Criteria) this;
        }

        public Criteria andBirthdayMultipleEqualTo(Integer value) {
            addCriterion("birthday_multiple =", value, "birthdayMultiple");
            return (Criteria) this;
        }

        public Criteria andBirthdayMultipleNotEqualTo(Integer value) {
            addCriterion("birthday_multiple <>", value, "birthdayMultiple");
            return (Criteria) this;
        }

        public Criteria andBirthdayMultipleGreaterThan(Integer value) {
            addCriterion("birthday_multiple >", value, "birthdayMultiple");
            return (Criteria) this;
        }

        public Criteria andBirthdayMultipleGreaterThanOrEqualTo(Integer value) {
            addCriterion("birthday_multiple >=", value, "birthdayMultiple");
            return (Criteria) this;
        }

        public Criteria andBirthdayMultipleLessThan(Integer value) {
            addCriterion("birthday_multiple <", value, "birthdayMultiple");
            return (Criteria) this;
        }

        public Criteria andBirthdayMultipleLessThanOrEqualTo(Integer value) {
            addCriterion("birthday_multiple <=", value, "birthdayMultiple");
            return (Criteria) this;
        }

        public Criteria andBirthdayMultipleIn(List<Integer> values) {
            addCriterion("birthday_multiple in", values, "birthdayMultiple");
            return (Criteria) this;
        }

        public Criteria andBirthdayMultipleNotIn(List<Integer> values) {
            addCriterion("birthday_multiple not in", values, "birthdayMultiple");
            return (Criteria) this;
        }

        public Criteria andBirthdayMultipleBetween(Integer value1, Integer value2) {
            addCriterion("birthday_multiple between", value1, value2, "birthdayMultiple");
            return (Criteria) this;
        }

        public Criteria andBirthdayMultipleNotBetween(Integer value1, Integer value2) {
            addCriterion("birthday_multiple not between", value1, value2, "birthdayMultiple");
            return (Criteria) this;
        }

        public Criteria andBirthMonthMultipleIsNull() {
            addCriterion("birth_month_multiple is null");
            return (Criteria) this;
        }

        public Criteria andBirthMonthMultipleIsNotNull() {
            addCriterion("birth_month_multiple is not null");
            return (Criteria) this;
        }

        public Criteria andBirthMonthMultipleEqualTo(Integer value) {
            addCriterion("birth_month_multiple =", value, "birthMonthMultiple");
            return (Criteria) this;
        }

        public Criteria andBirthMonthMultipleNotEqualTo(Integer value) {
            addCriterion("birth_month_multiple <>", value, "birthMonthMultiple");
            return (Criteria) this;
        }

        public Criteria andBirthMonthMultipleGreaterThan(Integer value) {
            addCriterion("birth_month_multiple >", value, "birthMonthMultiple");
            return (Criteria) this;
        }

        public Criteria andBirthMonthMultipleGreaterThanOrEqualTo(Integer value) {
            addCriterion("birth_month_multiple >=", value, "birthMonthMultiple");
            return (Criteria) this;
        }

        public Criteria andBirthMonthMultipleLessThan(Integer value) {
            addCriterion("birth_month_multiple <", value, "birthMonthMultiple");
            return (Criteria) this;
        }

        public Criteria andBirthMonthMultipleLessThanOrEqualTo(Integer value) {
            addCriterion("birth_month_multiple <=", value, "birthMonthMultiple");
            return (Criteria) this;
        }

        public Criteria andBirthMonthMultipleIn(List<Integer> values) {
            addCriterion("birth_month_multiple in", values, "birthMonthMultiple");
            return (Criteria) this;
        }

        public Criteria andBirthMonthMultipleNotIn(List<Integer> values) {
            addCriterion("birth_month_multiple not in", values, "birthMonthMultiple");
            return (Criteria) this;
        }

        public Criteria andBirthMonthMultipleBetween(Integer value1, Integer value2) {
            addCriterion("birth_month_multiple between", value1, value2, "birthMonthMultiple");
            return (Criteria) this;
        }

        public Criteria andBirthMonthMultipleNotBetween(Integer value1, Integer value2) {
            addCriterion("birth_month_multiple not between", value1, value2, "birthMonthMultiple");
            return (Criteria) this;
        }

        public Criteria andMonthlyDayIsNull() {
            addCriterion("monthly_day is null");
            return (Criteria) this;
        }

        public Criteria andMonthlyDayIsNotNull() {
            addCriterion("monthly_day is not null");
            return (Criteria) this;
        }

        public Criteria andMonthlyDayEqualTo(Integer value) {
            addCriterion("monthly_day =", value, "monthlyDay");
            return (Criteria) this;
        }

        public Criteria andMonthlyDayNotEqualTo(Integer value) {
            addCriterion("monthly_day <>", value, "monthlyDay");
            return (Criteria) this;
        }

        public Criteria andMonthlyDayGreaterThan(Integer value) {
            addCriterion("monthly_day >", value, "monthlyDay");
            return (Criteria) this;
        }

        public Criteria andMonthlyDayGreaterThanOrEqualTo(Integer value) {
            addCriterion("monthly_day >=", value, "monthlyDay");
            return (Criteria) this;
        }

        public Criteria andMonthlyDayLessThan(Integer value) {
            addCriterion("monthly_day <", value, "monthlyDay");
            return (Criteria) this;
        }

        public Criteria andMonthlyDayLessThanOrEqualTo(Integer value) {
            addCriterion("monthly_day <=", value, "monthlyDay");
            return (Criteria) this;
        }

        public Criteria andMonthlyDayIn(List<Integer> values) {
            addCriterion("monthly_day in", values, "monthlyDay");
            return (Criteria) this;
        }

        public Criteria andMonthlyDayNotIn(List<Integer> values) {
            addCriterion("monthly_day not in", values, "monthlyDay");
            return (Criteria) this;
        }

        public Criteria andMonthlyDayBetween(Integer value1, Integer value2) {
            addCriterion("monthly_day between", value1, value2, "monthlyDay");
            return (Criteria) this;
        }

        public Criteria andMonthlyDayNotBetween(Integer value1, Integer value2) {
            addCriterion("monthly_day not between", value1, value2, "monthlyDay");
            return (Criteria) this;
        }

        public Criteria andMonthlyDayMultipleIsNull() {
            addCriterion("monthly_day_multiple is null");
            return (Criteria) this;
        }

        public Criteria andMonthlyDayMultipleIsNotNull() {
            addCriterion("monthly_day_multiple is not null");
            return (Criteria) this;
        }

        public Criteria andMonthlyDayMultipleEqualTo(Integer value) {
            addCriterion("monthly_day_multiple =", value, "monthlyDayMultiple");
            return (Criteria) this;
        }

        public Criteria andMonthlyDayMultipleNotEqualTo(Integer value) {
            addCriterion("monthly_day_multiple <>", value, "monthlyDayMultiple");
            return (Criteria) this;
        }

        public Criteria andMonthlyDayMultipleGreaterThan(Integer value) {
            addCriterion("monthly_day_multiple >", value, "monthlyDayMultiple");
            return (Criteria) this;
        }

        public Criteria andMonthlyDayMultipleGreaterThanOrEqualTo(Integer value) {
            addCriterion("monthly_day_multiple >=", value, "monthlyDayMultiple");
            return (Criteria) this;
        }

        public Criteria andMonthlyDayMultipleLessThan(Integer value) {
            addCriterion("monthly_day_multiple <", value, "monthlyDayMultiple");
            return (Criteria) this;
        }

        public Criteria andMonthlyDayMultipleLessThanOrEqualTo(Integer value) {
            addCriterion("monthly_day_multiple <=", value, "monthlyDayMultiple");
            return (Criteria) this;
        }

        public Criteria andMonthlyDayMultipleIn(List<Integer> values) {
            addCriterion("monthly_day_multiple in", values, "monthlyDayMultiple");
            return (Criteria) this;
        }

        public Criteria andMonthlyDayMultipleNotIn(List<Integer> values) {
            addCriterion("monthly_day_multiple not in", values, "monthlyDayMultiple");
            return (Criteria) this;
        }

        public Criteria andMonthlyDayMultipleBetween(Integer value1, Integer value2) {
            addCriterion("monthly_day_multiple between", value1, value2, "monthlyDayMultiple");
            return (Criteria) this;
        }

        public Criteria andMonthlyDayMultipleNotBetween(Integer value1, Integer value2) {
            addCriterion("monthly_day_multiple not between", value1, value2, "monthlyDayMultiple");
            return (Criteria) this;
        }

        public Criteria andWeeklyDayIsNull() {
            addCriterion("weekly_day is null");
            return (Criteria) this;
        }

        public Criteria andWeeklyDayIsNotNull() {
            addCriterion("weekly_day is not null");
            return (Criteria) this;
        }

        public Criteria andWeeklyDayEqualTo(Integer value) {
            addCriterion("weekly_day =", value, "weeklyDay");
            return (Criteria) this;
        }

        public Criteria andWeeklyDayNotEqualTo(Integer value) {
            addCriterion("weekly_day <>", value, "weeklyDay");
            return (Criteria) this;
        }

        public Criteria andWeeklyDayGreaterThan(Integer value) {
            addCriterion("weekly_day >", value, "weeklyDay");
            return (Criteria) this;
        }

        public Criteria andWeeklyDayGreaterThanOrEqualTo(Integer value) {
            addCriterion("weekly_day >=", value, "weeklyDay");
            return (Criteria) this;
        }

        public Criteria andWeeklyDayLessThan(Integer value) {
            addCriterion("weekly_day <", value, "weeklyDay");
            return (Criteria) this;
        }

        public Criteria andWeeklyDayLessThanOrEqualTo(Integer value) {
            addCriterion("weekly_day <=", value, "weeklyDay");
            return (Criteria) this;
        }

        public Criteria andWeeklyDayIn(List<Integer> values) {
            addCriterion("weekly_day in", values, "weeklyDay");
            return (Criteria) this;
        }

        public Criteria andWeeklyDayNotIn(List<Integer> values) {
            addCriterion("weekly_day not in", values, "weeklyDay");
            return (Criteria) this;
        }

        public Criteria andWeeklyDayBetween(Integer value1, Integer value2) {
            addCriterion("weekly_day between", value1, value2, "weeklyDay");
            return (Criteria) this;
        }

        public Criteria andWeeklyDayNotBetween(Integer value1, Integer value2) {
            addCriterion("weekly_day not between", value1, value2, "weeklyDay");
            return (Criteria) this;
        }

        public Criteria andWeeklyDayMultipleIsNull() {
            addCriterion("weekly_day_multiple is null");
            return (Criteria) this;
        }

        public Criteria andWeeklyDayMultipleIsNotNull() {
            addCriterion("weekly_day_multiple is not null");
            return (Criteria) this;
        }

        public Criteria andWeeklyDayMultipleEqualTo(Integer value) {
            addCriterion("weekly_day_multiple =", value, "weeklyDayMultiple");
            return (Criteria) this;
        }

        public Criteria andWeeklyDayMultipleNotEqualTo(Integer value) {
            addCriterion("weekly_day_multiple <>", value, "weeklyDayMultiple");
            return (Criteria) this;
        }

        public Criteria andWeeklyDayMultipleGreaterThan(Integer value) {
            addCriterion("weekly_day_multiple >", value, "weeklyDayMultiple");
            return (Criteria) this;
        }

        public Criteria andWeeklyDayMultipleGreaterThanOrEqualTo(Integer value) {
            addCriterion("weekly_day_multiple >=", value, "weeklyDayMultiple");
            return (Criteria) this;
        }

        public Criteria andWeeklyDayMultipleLessThan(Integer value) {
            addCriterion("weekly_day_multiple <", value, "weeklyDayMultiple");
            return (Criteria) this;
        }

        public Criteria andWeeklyDayMultipleLessThanOrEqualTo(Integer value) {
            addCriterion("weekly_day_multiple <=", value, "weeklyDayMultiple");
            return (Criteria) this;
        }

        public Criteria andWeeklyDayMultipleIn(List<Integer> values) {
            addCriterion("weekly_day_multiple in", values, "weeklyDayMultiple");
            return (Criteria) this;
        }

        public Criteria andWeeklyDayMultipleNotIn(List<Integer> values) {
            addCriterion("weekly_day_multiple not in", values, "weeklyDayMultiple");
            return (Criteria) this;
        }

        public Criteria andWeeklyDayMultipleBetween(Integer value1, Integer value2) {
            addCriterion("weekly_day_multiple between", value1, value2, "weeklyDayMultiple");
            return (Criteria) this;
        }

        public Criteria andWeeklyDayMultipleNotBetween(Integer value1, Integer value2) {
            addCriterion("weekly_day_multiple not between", value1, value2, "weeklyDayMultiple");
            return (Criteria) this;
        }

        public Criteria andParentRewardMultipleIsNull() {
            addCriterion("parent_reward_multiple is null");
            return (Criteria) this;
        }

        public Criteria andParentRewardMultipleIsNotNull() {
            addCriterion("parent_reward_multiple is not null");
            return (Criteria) this;
        }

        public Criteria andParentRewardMultipleEqualTo(Integer value) {
            addCriterion("parent_reward_multiple =", value, "parentRewardMultiple");
            return (Criteria) this;
        }

        public Criteria andParentRewardMultipleNotEqualTo(Integer value) {
            addCriterion("parent_reward_multiple <>", value, "parentRewardMultiple");
            return (Criteria) this;
        }

        public Criteria andParentRewardMultipleGreaterThan(Integer value) {
            addCriterion("parent_reward_multiple >", value, "parentRewardMultiple");
            return (Criteria) this;
        }

        public Criteria andParentRewardMultipleGreaterThanOrEqualTo(Integer value) {
            addCriterion("parent_reward_multiple >=", value, "parentRewardMultiple");
            return (Criteria) this;
        }

        public Criteria andParentRewardMultipleLessThan(Integer value) {
            addCriterion("parent_reward_multiple <", value, "parentRewardMultiple");
            return (Criteria) this;
        }

        public Criteria andParentRewardMultipleLessThanOrEqualTo(Integer value) {
            addCriterion("parent_reward_multiple <=", value, "parentRewardMultiple");
            return (Criteria) this;
        }

        public Criteria andParentRewardMultipleIn(List<Integer> values) {
            addCriterion("parent_reward_multiple in", values, "parentRewardMultiple");
            return (Criteria) this;
        }

        public Criteria andParentRewardMultipleNotIn(List<Integer> values) {
            addCriterion("parent_reward_multiple not in", values, "parentRewardMultiple");
            return (Criteria) this;
        }

        public Criteria andParentRewardMultipleBetween(Integer value1, Integer value2) {
            addCriterion("parent_reward_multiple between", value1, value2, "parentRewardMultiple");
            return (Criteria) this;
        }

        public Criteria andParentRewardMultipleNotBetween(Integer value1, Integer value2) {
            addCriterion("parent_reward_multiple not between", value1, value2, "parentRewardMultiple");
            return (Criteria) this;
        }

        public Criteria andDeductionRateIsNull() {
            addCriterion("deduction_rate is null");
            return (Criteria) this;
        }

        public Criteria andDeductionRateIsNotNull() {
            addCriterion("deduction_rate is not null");
            return (Criteria) this;
        }

        public Criteria andDeductionRateEqualTo(Integer value) {
            addCriterion("deduction_rate =", value, "deductionRate");
            return (Criteria) this;
        }

        public Criteria andDeductionRateNotEqualTo(Integer value) {
            addCriterion("deduction_rate <>", value, "deductionRate");
            return (Criteria) this;
        }

        public Criteria andDeductionRateGreaterThan(Integer value) {
            addCriterion("deduction_rate >", value, "deductionRate");
            return (Criteria) this;
        }

        public Criteria andDeductionRateGreaterThanOrEqualTo(Integer value) {
            addCriterion("deduction_rate >=", value, "deductionRate");
            return (Criteria) this;
        }

        public Criteria andDeductionRateLessThan(Integer value) {
            addCriterion("deduction_rate <", value, "deductionRate");
            return (Criteria) this;
        }

        public Criteria andDeductionRateLessThanOrEqualTo(Integer value) {
            addCriterion("deduction_rate <=", value, "deductionRate");
            return (Criteria) this;
        }

        public Criteria andDeductionRateIn(List<Integer> values) {
            addCriterion("deduction_rate in", values, "deductionRate");
            return (Criteria) this;
        }

        public Criteria andDeductionRateNotIn(List<Integer> values) {
            addCriterion("deduction_rate not in", values, "deductionRate");
            return (Criteria) this;
        }

        public Criteria andDeductionRateBetween(Integer value1, Integer value2) {
            addCriterion("deduction_rate between", value1, value2, "deductionRate");
            return (Criteria) this;
        }

        public Criteria andDeductionRateNotBetween(Integer value1, Integer value2) {
            addCriterion("deduction_rate not between", value1, value2, "deductionRate");
            return (Criteria) this;
        }

        public Criteria andScoredDeductionRuleIsNull() {
            addCriterion("scored_deduction_rule is null");
            return (Criteria) this;
        }

        public Criteria andScoredDeductionRuleIsNotNull() {
            addCriterion("scored_deduction_rule is not null");
            return (Criteria) this;
        }

        public Criteria andScoredDeductionRuleEqualTo(String value) {
            addCriterion("scored_deduction_rule =", value, "scoredDeductionRule");
            return (Criteria) this;
        }

        public Criteria andScoredDeductionRuleNotEqualTo(String value) {
            addCriterion("scored_deduction_rule <>", value, "scoredDeductionRule");
            return (Criteria) this;
        }

        public Criteria andScoredDeductionRuleGreaterThan(String value) {
            addCriterion("scored_deduction_rule >", value, "scoredDeductionRule");
            return (Criteria) this;
        }

        public Criteria andScoredDeductionRuleGreaterThanOrEqualTo(String value) {
            addCriterion("scored_deduction_rule >=", value, "scoredDeductionRule");
            return (Criteria) this;
        }

        public Criteria andScoredDeductionRuleLessThan(String value) {
            addCriterion("scored_deduction_rule <", value, "scoredDeductionRule");
            return (Criteria) this;
        }

        public Criteria andScoredDeductionRuleLessThanOrEqualTo(String value) {
            addCriterion("scored_deduction_rule <=", value, "scoredDeductionRule");
            return (Criteria) this;
        }

        public Criteria andScoredDeductionRuleLike(String value) {
            addCriterion("scored_deduction_rule like", value, "scoredDeductionRule");
            return (Criteria) this;
        }

        public Criteria andScoredDeductionRuleNotLike(String value) {
            addCriterion("scored_deduction_rule not like", value, "scoredDeductionRule");
            return (Criteria) this;
        }

        public Criteria andScoredDeductionRuleIn(List<String> values) {
            addCriterion("scored_deduction_rule in", values, "scoredDeductionRule");
            return (Criteria) this;
        }

        public Criteria andScoredDeductionRuleNotIn(List<String> values) {
            addCriterion("scored_deduction_rule not in", values, "scoredDeductionRule");
            return (Criteria) this;
        }

        public Criteria andScoredDeductionRuleBetween(String value1, String value2) {
            addCriterion("scored_deduction_rule between", value1, value2, "scoredDeductionRule");
            return (Criteria) this;
        }

        public Criteria andScoredDeductionRuleNotBetween(String value1, String value2) {
            addCriterion("scored_deduction_rule not between", value1, value2, "scoredDeductionRule");
            return (Criteria) this;
        }

        public Criteria andDumpBottomValueIsNull() {
            addCriterion("dump_bottom_value is null");
            return (Criteria) this;
        }

        public Criteria andDumpBottomValueIsNotNull() {
            addCriterion("dump_bottom_value is not null");
            return (Criteria) this;
        }

        public Criteria andDumpBottomValueEqualTo(Integer value) {
            addCriterion("dump_bottom_value =", value, "dumpBottomValue");
            return (Criteria) this;
        }

        public Criteria andDumpBottomValueNotEqualTo(Integer value) {
            addCriterion("dump_bottom_value <>", value, "dumpBottomValue");
            return (Criteria) this;
        }

        public Criteria andDumpBottomValueGreaterThan(Integer value) {
            addCriterion("dump_bottom_value >", value, "dumpBottomValue");
            return (Criteria) this;
        }

        public Criteria andDumpBottomValueGreaterThanOrEqualTo(Integer value) {
            addCriterion("dump_bottom_value >=", value, "dumpBottomValue");
            return (Criteria) this;
        }

        public Criteria andDumpBottomValueLessThan(Integer value) {
            addCriterion("dump_bottom_value <", value, "dumpBottomValue");
            return (Criteria) this;
        }

        public Criteria andDumpBottomValueLessThanOrEqualTo(Integer value) {
            addCriterion("dump_bottom_value <=", value, "dumpBottomValue");
            return (Criteria) this;
        }

        public Criteria andDumpBottomValueIn(List<Integer> values) {
            addCriterion("dump_bottom_value in", values, "dumpBottomValue");
            return (Criteria) this;
        }

        public Criteria andDumpBottomValueNotIn(List<Integer> values) {
            addCriterion("dump_bottom_value not in", values, "dumpBottomValue");
            return (Criteria) this;
        }

        public Criteria andDumpBottomValueBetween(Integer value1, Integer value2) {
            addCriterion("dump_bottom_value between", value1, value2, "dumpBottomValue");
            return (Criteria) this;
        }

        public Criteria andDumpBottomValueNotBetween(Integer value1, Integer value2) {
            addCriterion("dump_bottom_value not between", value1, value2, "dumpBottomValue");
            return (Criteria) this;
        }

        public Criteria andPayLimitValueIsNull() {
            addCriterion("pay_limit_value is null");
            return (Criteria) this;
        }

        public Criteria andPayLimitValueIsNotNull() {
            addCriterion("pay_limit_value is not null");
            return (Criteria) this;
        }

        public Criteria andPayLimitValueEqualTo(Integer value) {
            addCriterion("pay_limit_value =", value, "payLimitValue");
            return (Criteria) this;
        }

        public Criteria andPayLimitValueNotEqualTo(Integer value) {
            addCriterion("pay_limit_value <>", value, "payLimitValue");
            return (Criteria) this;
        }

        public Criteria andPayLimitValueGreaterThan(Integer value) {
            addCriterion("pay_limit_value >", value, "payLimitValue");
            return (Criteria) this;
        }

        public Criteria andPayLimitValueGreaterThanOrEqualTo(Integer value) {
            addCriterion("pay_limit_value >=", value, "payLimitValue");
            return (Criteria) this;
        }

        public Criteria andPayLimitValueLessThan(Integer value) {
            addCriterion("pay_limit_value <", value, "payLimitValue");
            return (Criteria) this;
        }

        public Criteria andPayLimitValueLessThanOrEqualTo(Integer value) {
            addCriterion("pay_limit_value <=", value, "payLimitValue");
            return (Criteria) this;
        }

        public Criteria andPayLimitValueIn(List<Integer> values) {
            addCriterion("pay_limit_value in", values, "payLimitValue");
            return (Criteria) this;
        }

        public Criteria andPayLimitValueNotIn(List<Integer> values) {
            addCriterion("pay_limit_value not in", values, "payLimitValue");
            return (Criteria) this;
        }

        public Criteria andPayLimitValueBetween(Integer value1, Integer value2) {
            addCriterion("pay_limit_value between", value1, value2, "payLimitValue");
            return (Criteria) this;
        }

        public Criteria andPayLimitValueNotBetween(Integer value1, Integer value2) {
            addCriterion("pay_limit_value not between", value1, value2, "payLimitValue");
            return (Criteria) this;
        }

        public Criteria andLowPayAmountIsNull() {
            addCriterion("low_pay_amount is null");
            return (Criteria) this;
        }

        public Criteria andLowPayAmountIsNotNull() {
            addCriterion("low_pay_amount is not null");
            return (Criteria) this;
        }

        public Criteria andLowPayAmountEqualTo(Integer value) {
            addCriterion("low_pay_amount =", value, "lowPayAmount");
            return (Criteria) this;
        }

        public Criteria andLowPayAmountNotEqualTo(Integer value) {
            addCriterion("low_pay_amount <>", value, "lowPayAmount");
            return (Criteria) this;
        }

        public Criteria andLowPayAmountGreaterThan(Integer value) {
            addCriterion("low_pay_amount >", value, "lowPayAmount");
            return (Criteria) this;
        }

        public Criteria andLowPayAmountGreaterThanOrEqualTo(Integer value) {
            addCriterion("low_pay_amount >=", value, "lowPayAmount");
            return (Criteria) this;
        }

        public Criteria andLowPayAmountLessThan(Integer value) {
            addCriterion("low_pay_amount <", value, "lowPayAmount");
            return (Criteria) this;
        }

        public Criteria andLowPayAmountLessThanOrEqualTo(Integer value) {
            addCriterion("low_pay_amount <=", value, "lowPayAmount");
            return (Criteria) this;
        }

        public Criteria andLowPayAmountIn(List<Integer> values) {
            addCriterion("low_pay_amount in", values, "lowPayAmount");
            return (Criteria) this;
        }

        public Criteria andLowPayAmountNotIn(List<Integer> values) {
            addCriterion("low_pay_amount not in", values, "lowPayAmount");
            return (Criteria) this;
        }

        public Criteria andLowPayAmountBetween(Integer value1, Integer value2) {
            addCriterion("low_pay_amount between", value1, value2, "lowPayAmount");
            return (Criteria) this;
        }

        public Criteria andLowPayAmountNotBetween(Integer value1, Integer value2) {
            addCriterion("low_pay_amount not between", value1, value2, "lowPayAmount");
            return (Criteria) this;
        }

        public Criteria andMaxDeductionAmountIsNull() {
            addCriterion("max_deduction_amount is null");
            return (Criteria) this;
        }

        public Criteria andMaxDeductionAmountIsNotNull() {
            addCriterion("max_deduction_amount is not null");
            return (Criteria) this;
        }

        public Criteria andMaxDeductionAmountEqualTo(Integer value) {
            addCriterion("max_deduction_amount =", value, "maxDeductionAmount");
            return (Criteria) this;
        }

        public Criteria andMaxDeductionAmountNotEqualTo(Integer value) {
            addCriterion("max_deduction_amount <>", value, "maxDeductionAmount");
            return (Criteria) this;
        }

        public Criteria andMaxDeductionAmountGreaterThan(Integer value) {
            addCriterion("max_deduction_amount >", value, "maxDeductionAmount");
            return (Criteria) this;
        }

        public Criteria andMaxDeductionAmountGreaterThanOrEqualTo(Integer value) {
            addCriterion("max_deduction_amount >=", value, "maxDeductionAmount");
            return (Criteria) this;
        }

        public Criteria andMaxDeductionAmountLessThan(Integer value) {
            addCriterion("max_deduction_amount <", value, "maxDeductionAmount");
            return (Criteria) this;
        }

        public Criteria andMaxDeductionAmountLessThanOrEqualTo(Integer value) {
            addCriterion("max_deduction_amount <=", value, "maxDeductionAmount");
            return (Criteria) this;
        }

        public Criteria andMaxDeductionAmountIn(List<Integer> values) {
            addCriterion("max_deduction_amount in", values, "maxDeductionAmount");
            return (Criteria) this;
        }

        public Criteria andMaxDeductionAmountNotIn(List<Integer> values) {
            addCriterion("max_deduction_amount not in", values, "maxDeductionAmount");
            return (Criteria) this;
        }

        public Criteria andMaxDeductionAmountBetween(Integer value1, Integer value2) {
            addCriterion("max_deduction_amount between", value1, value2, "maxDeductionAmount");
            return (Criteria) this;
        }

        public Criteria andMaxDeductionAmountNotBetween(Integer value1, Integer value2) {
            addCriterion("max_deduction_amount not between", value1, value2, "maxDeductionAmount");
            return (Criteria) this;
        }

        public Criteria andMaxDeductionDayAmountIsNull() {
            addCriterion("max_deduction_day_amount is null");
            return (Criteria) this;
        }

        public Criteria andMaxDeductionDayAmountIsNotNull() {
            addCriterion("max_deduction_day_amount is not null");
            return (Criteria) this;
        }

        public Criteria andMaxDeductionDayAmountEqualTo(Integer value) {
            addCriterion("max_deduction_day_amount =", value, "maxDeductionDayAmount");
            return (Criteria) this;
        }

        public Criteria andMaxDeductionDayAmountNotEqualTo(Integer value) {
            addCriterion("max_deduction_day_amount <>", value, "maxDeductionDayAmount");
            return (Criteria) this;
        }

        public Criteria andMaxDeductionDayAmountGreaterThan(Integer value) {
            addCriterion("max_deduction_day_amount >", value, "maxDeductionDayAmount");
            return (Criteria) this;
        }

        public Criteria andMaxDeductionDayAmountGreaterThanOrEqualTo(Integer value) {
            addCriterion("max_deduction_day_amount >=", value, "maxDeductionDayAmount");
            return (Criteria) this;
        }

        public Criteria andMaxDeductionDayAmountLessThan(Integer value) {
            addCriterion("max_deduction_day_amount <", value, "maxDeductionDayAmount");
            return (Criteria) this;
        }

        public Criteria andMaxDeductionDayAmountLessThanOrEqualTo(Integer value) {
            addCriterion("max_deduction_day_amount <=", value, "maxDeductionDayAmount");
            return (Criteria) this;
        }

        public Criteria andMaxDeductionDayAmountIn(List<Integer> values) {
            addCriterion("max_deduction_day_amount in", values, "maxDeductionDayAmount");
            return (Criteria) this;
        }

        public Criteria andMaxDeductionDayAmountNotIn(List<Integer> values) {
            addCriterion("max_deduction_day_amount not in", values, "maxDeductionDayAmount");
            return (Criteria) this;
        }

        public Criteria andMaxDeductionDayAmountBetween(Integer value1, Integer value2) {
            addCriterion("max_deduction_day_amount between", value1, value2, "maxDeductionDayAmount");
            return (Criteria) this;
        }

        public Criteria andMaxDeductionDayAmountNotBetween(Integer value1, Integer value2) {
            addCriterion("max_deduction_day_amount not between", value1, value2, "maxDeductionDayAmount");
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