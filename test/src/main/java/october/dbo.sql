/*
 Navicat SQL Server Data Transfer

 Source Server         : 47.107.17.249
 Source Server Type    : SQL Server
 Source Server Version : 10501600
 Source Host           : 47.107.17.249:9168
 Source Catalog        : Test_ShopV2.5_Sharding_4
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 10501600
 File Encoding         : 65001

 Date: 11/10/2019 09:56:17
*/


-- ----------------------------
-- Table structure for BasicSet
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[BasicSet]') AND type IN ('U'))
	DROP TABLE [dbo].[BasicSet]
GO

CREATE TABLE [dbo].[BasicSet] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [smsurl] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [listshownum] int  NULL,
  [operdate] datetime  NULL,
  [smsuser] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [smspassword] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [smsnum] int DEFAULT ((50)) NULL,
  [pay_type] varchar(50) COLLATE Chinese_PRC_CI_AS DEFAULT ('2,1,0,') NULL,
  [deal_type] varchar(50) COLLATE Chinese_PRC_CI_AS DEFAULT ('1,0,') NULL,
  [theme] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [firstchargemoney] decimal(18,2) DEFAULT ((0)) NULL,
  [usesubtype] bit DEFAULT ((0)) NOT NULL,
  [offlinevipdiscount] bit DEFAULT ((0)) NOT NULL,
  [is_customservice] bit DEFAULT ((0)) NULL,
  [freight] int  NULL,
  [freefreight] int DEFAULT ((0)) NULL,
  [flagreg] bit DEFAULT ((1)) NOT NULL,
  [isnotverifyphone] bit DEFAULT ((0)) NOT NULL,
  [flagcheckofflinestock] bit DEFAULT ((0)) NOT NULL,
  [flagbind] bit DEFAULT ((1)) NOT NULL,
  [orderremind] varchar(150) COLLATE Chinese_PRC_CI_AS  NULL,
  [mutiget_for_spendingvoucher] char(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [full_money_for_spendingvoucher] decimal(18,2)  NULL,
  [freight1] int  NULL,
  [freight_distance1] decimal(18,2)  NULL,
  [freight2] int  NULL,
  [freight_distance2] decimal(18,2)  NULL,
  [freight3] int  NULL,
  [freight_type] char(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [market_default_theme] int  NULL,
  [isopensmsnotice] bit DEFAULT ((0)) NOT NULL,
  [isopensmsnotice_display] bit DEFAULT ((0)) NOT NULL,
  [smsnotice_phone] varchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [playprice] decimal(18,2)  NULL,
  [is_bind_multiple_wxusers] bit DEFAULT ((0)) NULL,
  [giftdeal_type] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [wx_loginId] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [wx_nickname] varchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [isopenbirthday] bit DEFAULT ((0)) NOT NULL,
  [chargefeeremind] varchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [can_user_change_pwd] bit DEFAULT ((0)) NOT NULL,
  [isneed_idcardforvip] bit DEFAULT ((0)) NOT NULL,
  [isneed_idcardforreceiver] bit DEFAULT ((0)) NOT NULL,
  [isneed_vipsex] bit DEFAULT ((0)) NOT NULL,
  [allow_nonmember_orders] bit DEFAULT ((0)) NOT NULL,
  [isopen_supp_bind] bit DEFAULT ((0)) NOT NULL,
  [refund_pwd] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [usecustomtheme] bit DEFAULT ((0)) NOT NULL,
  [customtheme] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [marketingcenterconfig] char(1) COLLATE Chinese_PRC_CI_AS DEFAULT ((1)) NULL,
  [isopen_customchargefee] bit DEFAULT ((0)) NOT NULL,
  [isneed_defaultbranch] bit DEFAULT ((0)) NOT NULL,
  [isopen_voucherregive] bit DEFAULT ((1)) NOT NULL,
  [isopen_voucherregive_repeated] bit DEFAULT ((1)) NOT NULL,
  [isopen_multiplepintuan] bit DEFAULT ((1)) NOT NULL,
  [isopen_offlinevoucher] bit DEFAULT ((0)) NOT NULL,
  [isclose_cancelorder] bit DEFAULT ((0)) NOT NULL,
  [voucherbag_pay_type] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [isrefund_voucher] bit DEFAULT ((0)) NOT NULL,
  [isneed_babysex] bit DEFAULT ((0)) NOT NULL,
  [pay_type_default] int DEFAULT ((-1)) NOT NULL,
  [voucherbag_pay_type_default] int DEFAULT ((-1)) NOT NULL,
  [isneed_areano] bit DEFAULT ((0)) NOT NULL,
  [isshow_myextension_vipdetail] bit DEFAULT ((0)) NOT NULL,
  [giftorderremind] varchar(250) COLLATE Chinese_PRC_CI_AS  NULL,
  [pintuanorderremind] varchar(250) COLLATE Chinese_PRC_CI_AS  NULL,
  [buyfullorderremind] varchar(250) COLLATE Chinese_PRC_CI_AS  NULL,
  [discountsaleorderremind] varchar(250) COLLATE Chinese_PRC_CI_AS  NULL,
  [isopen_pwdbind] bit DEFAULT ((0)) NOT NULL,
  [voucherorderremind] varchar(250) COLLATE Chinese_PRC_CI_AS  NULL,
  [isopen_ordermemo] bit DEFAULT ((0)) NOT NULL,
  [ordermemo_name] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [ordermemo_placeholder] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [isneed_babybirthday] bit DEFAULT ((0)) NOT NULL,
  [smssupplier] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [smsuserid] nvarchar(25) COLLATE Chinese_PRC_CI_AS  NULL,
  [voucheroutdays] nchar(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [isdefault_chat] bit DEFAULT ((0)) NOT NULL,
  [deal_type_default] int  NULL,
  [member_bindtype] varchar(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [member_binddefault] int  NULL,
  [usesubtypedefault] int  NULL,
  [scorepayopen] bit DEFAULT ((0)) NOT NULL,
  [scorerate] int DEFAULT ((0)) NOT NULL,
  [scorermb] int DEFAULT ((0)) NOT NULL,
  [isopenvipmulti] bit DEFAULT ((0)) NOT NULL,
  [isneed_babyname] bit DEFAULT ((0)) NOT NULL,
  [isneed_openbranch] bit DEFAULT ((0)) NOT NULL
)
GO

ALTER TABLE [dbo].[BasicSet] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'商户给用户提交订单前的自定义说明',
'SCHEMA', N'dbo',
'TABLE', N'BasicSet',
'COLUMN', N'orderremind'
GO

EXEC sp_addextendedproperty
'MS_Description', N'买满送券是否每次买满都送',
'SCHEMA', N'dbo',
'TABLE', N'BasicSet',
'COLUMN', N'mutiget_for_spendingvoucher'
GO

EXEC sp_addextendedproperty
'MS_Description', N'买满送券满XX元才送券',
'SCHEMA', N'dbo',
'TABLE', N'BasicSet',
'COLUMN', N'full_money_for_spendingvoucher'
GO

EXEC sp_addextendedproperty
'MS_Description', N'营销中心默认主题',
'SCHEMA', N'dbo',
'TABLE', N'BasicSet',
'COLUMN', N'market_default_theme'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否开启新订单短信提醒（预订/外卖）',
'SCHEMA', N'dbo',
'TABLE', N'BasicSet',
'COLUMN', N'isopensmsnotice'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否开启新订单短信提醒（预订/外卖）_是否显示这个功能',
'SCHEMA', N'dbo',
'TABLE', N'BasicSet',
'COLUMN', N'isopensmsnotice_display'
GO

EXEC sp_addextendedproperty
'MS_Description', N'接收通知的手机',
'SCHEMA', N'dbo',
'TABLE', N'BasicSet',
'COLUMN', N'smsnotice_phone'
GO

EXEC sp_addextendedproperty
'MS_Description', N'起送价',
'SCHEMA', N'dbo',
'TABLE', N'BasicSet',
'COLUMN', N'playprice'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否开启老板助手多用户绑定',
'SCHEMA', N'dbo',
'TABLE', N'BasicSet',
'COLUMN', N'is_bind_multiple_wxusers'
GO

EXEC sp_addextendedproperty
'MS_Description', N'微信绑定登陆ID',
'SCHEMA', N'dbo',
'TABLE', N'BasicSet',
'COLUMN', N'wx_loginId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'微信绑定登陆昵称',
'SCHEMA', N'dbo',
'TABLE', N'BasicSet',
'COLUMN', N'wx_nickname'
GO

EXEC sp_addextendedproperty
'MS_Description', N'会员注册是否开启生日',
'SCHEMA', N'dbo',
'TABLE', N'BasicSet',
'COLUMN', N'isopenbirthday'
GO

EXEC sp_addextendedproperty
'MS_Description', N'自定义充值说明',
'SCHEMA', N'dbo',
'TABLE', N'BasicSet',
'COLUMN', N'chargefeeremind'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否允许会员修改储值卡密码',
'SCHEMA', N'dbo',
'TABLE', N'BasicSet',
'COLUMN', N'can_user_change_pwd'
GO

EXEC sp_addextendedproperty
'MS_Description', N'开启会员注册填写身份证号',
'SCHEMA', N'dbo',
'TABLE', N'BasicSet',
'COLUMN', N'isneed_idcardforvip'
GO

EXEC sp_addextendedproperty
'MS_Description', N'开启收货人身份证号',
'SCHEMA', N'dbo',
'TABLE', N'BasicSet',
'COLUMN', N'isneed_idcardforreceiver'
GO

EXEC sp_addextendedproperty
'MS_Description', N'开启会员填写性别字段',
'SCHEMA', N'dbo',
'TABLE', N'BasicSet',
'COLUMN', N'isneed_vipsex'
GO

EXEC sp_addextendedproperty
'MS_Description', N'允许非会员下单（默认不予许）',
'SCHEMA', N'dbo',
'TABLE', N'BasicSet',
'COLUMN', N'allow_nonmember_orders'
GO

EXEC sp_addextendedproperty
'MS_Description', N'开启会员卡子卡关联',
'SCHEMA', N'dbo',
'TABLE', N'BasicSet',
'COLUMN', N'isopen_supp_bind'
GO

EXEC sp_addextendedproperty
'MS_Description', N'退款密码',
'SCHEMA', N'dbo',
'TABLE', N'BasicSet',
'COLUMN', N'refund_pwd'
GO

EXEC sp_addextendedproperty
'MS_Description', N'营销中心配置（1-传统模式；2-自适应模式）',
'SCHEMA', N'dbo',
'TABLE', N'BasicSet',
'COLUMN', N'marketingcenterconfig'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否关闭取消订单操作',
'SCHEMA', N'dbo',
'TABLE', N'BasicSet',
'COLUMN', N'isclose_cancelorder'
GO

EXEC sp_addextendedproperty
'MS_Description', N'推广员是否显示会员消费和储值详情',
'SCHEMA', N'dbo',
'TABLE', N'BasicSet',
'COLUMN', N'isshow_myextension_vipdetail'
GO

EXEC sp_addextendedproperty
'MS_Description', N'开启卡密绑定',
'SCHEMA', N'dbo',
'TABLE', N'BasicSet',
'COLUMN', N'isopen_pwdbind'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否默认客服',
'SCHEMA', N'dbo',
'TABLE', N'BasicSet',
'COLUMN', N'isdefault_chat'
GO

EXEC sp_addextendedproperty
'MS_Description', N'开启会员注册填写宝宝姓名',
'SCHEMA', N'dbo',
'TABLE', N'BasicSet',
'COLUMN', N'isneed_babyname'
GO


-- ----------------------------
-- Table structure for BossAssistantChartConfig
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[BossAssistantChartConfig]') AND type IN ('U'))
	DROP TABLE [dbo].[BossAssistantChartConfig]
GO

CREATE TABLE [dbo].[BossAssistantChartConfig] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [item_type] int  NOT NULL,
  [legend_config] varchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [adddate] datetime  NOT NULL
)
GO

ALTER TABLE [dbo].[BossAssistantChartConfig] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'ID',
'SCHEMA', N'dbo',
'TABLE', N'BossAssistantChartConfig',
'COLUMN', N'Id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'商户ID',
'SCHEMA', N'dbo',
'TABLE', N'BossAssistantChartConfig',
'COLUMN', N'shopid'
GO

EXEC sp_addextendedproperty
'MS_Description', N'统计类别',
'SCHEMA', N'dbo',
'TABLE', N'BossAssistantChartConfig',
'COLUMN', N'item_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'图例配置（json格式）',
'SCHEMA', N'dbo',
'TABLE', N'BossAssistantChartConfig',
'COLUMN', N'legend_config'
GO

EXEC sp_addextendedproperty
'MS_Description', N'新增时间',
'SCHEMA', N'dbo',
'TABLE', N'BossAssistantChartConfig',
'COLUMN', N'adddate'
GO

EXEC sp_addextendedproperty
'MS_Description', N'老板助手图表配置表',
'SCHEMA', N'dbo',
'TABLE', N'BossAssistantChartConfig'
GO


-- ----------------------------
-- Table structure for BossAssistantConfig
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[BossAssistantConfig]') AND type IN ('U'))
	DROP TABLE [dbo].[BossAssistantConfig]
GO

CREATE TABLE [dbo].[BossAssistantConfig] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [openid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [adddate] datetime  NOT NULL,
  [updatedate] datetime  NULL,
  [orderpush] varchar(1) COLLATE Chinese_PRC_CI_AS DEFAULT ('2') NULL,
  [product_salequery] varchar(1) COLLATE Chinese_PRC_CI_AS DEFAULT ('2') NULL,
  [store_salerankquery] varchar(1) COLLATE Chinese_PRC_CI_AS DEFAULT ('2') NULL,
  [helpererrorpush] varchar(1) COLLATE Chinese_PRC_CI_AS DEFAULT ((1)) NULL,
  [relatedstore] varchar(3000) COLLATE Chinese_PRC_CI_AS  NULL,
  [scoreexchangepush] varchar(1) COLLATE Chinese_PRC_CI_AS DEFAULT ((2)) NULL
)
GO

ALTER TABLE [dbo].[BossAssistantConfig] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'ID',
'SCHEMA', N'dbo',
'TABLE', N'BossAssistantConfig',
'COLUMN', N'Id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'商户ID',
'SCHEMA', N'dbo',
'TABLE', N'BossAssistantConfig',
'COLUMN', N'shopid'
GO

EXEC sp_addextendedproperty
'MS_Description', N'管理员openid',
'SCHEMA', N'dbo',
'TABLE', N'BossAssistantConfig',
'COLUMN', N'openid'
GO

EXEC sp_addextendedproperty
'MS_Description', N'添加时间',
'SCHEMA', N'dbo',
'TABLE', N'BossAssistantConfig',
'COLUMN', N'adddate'
GO

EXEC sp_addextendedproperty
'MS_Description', N'最近一次修改时间',
'SCHEMA', N'dbo',
'TABLE', N'BossAssistantConfig',
'COLUMN', N'updatedate'
GO

EXEC sp_addextendedproperty
'MS_Description', N'新订单是否推送（1:-推送；2不推送）',
'SCHEMA', N'dbo',
'TABLE', N'BossAssistantConfig',
'COLUMN', N'orderpush'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否开启畅销、滞销商品查询（1-开启；2不开启）',
'SCHEMA', N'dbo',
'TABLE', N'BossAssistantConfig',
'COLUMN', N'product_salequery'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否门店销售排行查询（1-开启；2不开启）',
'SCHEMA', N'dbo',
'TABLE', N'BossAssistantConfig',
'COLUMN', N'store_salerankquery'
GO

EXEC sp_addextendedproperty
'MS_Description', N'助手异常提示（1-提醒；2-不提醒）',
'SCHEMA', N'dbo',
'TABLE', N'BossAssistantConfig',
'COLUMN', N'helpererrorpush'
GO

EXEC sp_addextendedproperty
'MS_Description', N'关联门店 为空或者null表示不关联门店，反之关联',
'SCHEMA', N'dbo',
'TABLE', N'BossAssistantConfig',
'COLUMN', N'relatedstore'
GO

EXEC sp_addextendedproperty
'MS_Description', N'老板助手配置表',
'SCHEMA', N'dbo',
'TABLE', N'BossAssistantConfig'
GO


-- ----------------------------
-- Table structure for buyfullpromotion
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[buyfullpromotion]') AND type IN ('U'))
	DROP TABLE [dbo].[buyfullpromotion]
GO

CREATE TABLE [dbo].[buyfullpromotion] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [itemno] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [itemname] varchar(250) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [discountprice] decimal(18,2)  NULL,
  [discounttype] varchar(2) COLLATE Chinese_PRC_CI_AS  NULL,
  [discountnum] int DEFAULT ((0)) NOT NULL,
  [minbuynum] int  NOT NULL,
  [maxbuynum] int  NOT NULL,
  [startdate] datetime  NOT NULL,
  [enddate] datetime  NOT NULL,
  [available] bit  NOT NULL,
  [adddate] datetime  NOT NULL,
  [updatedate] datetime  NULL,
  [inorder] int DEFAULT ((0)) NOT NULL
)
GO

ALTER TABLE [dbo].[buyfullpromotion] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'ID',
'SCHEMA', N'dbo',
'TABLE', N'buyfullpromotion',
'COLUMN', N'Id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'商户ID',
'SCHEMA', N'dbo',
'TABLE', N'buyfullpromotion',
'COLUMN', N'shopid'
GO

EXEC sp_addextendedproperty
'MS_Description', N'商品编号',
'SCHEMA', N'dbo',
'TABLE', N'buyfullpromotion',
'COLUMN', N'itemno'
GO

EXEC sp_addextendedproperty
'MS_Description', N'商品名称',
'SCHEMA', N'dbo',
'TABLE', N'buyfullpromotion',
'COLUMN', N'itemname'
GO

EXEC sp_addextendedproperty
'MS_Description', N'优惠价格',
'SCHEMA', N'dbo',
'TABLE', N'buyfullpromotion',
'COLUMN', N'discountprice'
GO

EXEC sp_addextendedproperty
'MS_Description', N'优惠类别（1-满减数量；2-满减单价）',
'SCHEMA', N'dbo',
'TABLE', N'buyfullpromotion',
'COLUMN', N'discounttype'
GO

EXEC sp_addextendedproperty
'MS_Description', N'满减数量',
'SCHEMA', N'dbo',
'TABLE', N'buyfullpromotion',
'COLUMN', N'discountnum'
GO

EXEC sp_addextendedproperty
'MS_Description', N'起购数量',
'SCHEMA', N'dbo',
'TABLE', N'buyfullpromotion',
'COLUMN', N'minbuynum'
GO

EXEC sp_addextendedproperty
'MS_Description', N'限购数量',
'SCHEMA', N'dbo',
'TABLE', N'buyfullpromotion',
'COLUMN', N'maxbuynum'
GO

EXEC sp_addextendedproperty
'MS_Description', N'开始时间',
'SCHEMA', N'dbo',
'TABLE', N'buyfullpromotion',
'COLUMN', N'startdate'
GO

EXEC sp_addextendedproperty
'MS_Description', N'结束时间',
'SCHEMA', N'dbo',
'TABLE', N'buyfullpromotion',
'COLUMN', N'enddate'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否可用',
'SCHEMA', N'dbo',
'TABLE', N'buyfullpromotion',
'COLUMN', N'available'
GO

EXEC sp_addextendedproperty
'MS_Description', N'添加日期',
'SCHEMA', N'dbo',
'TABLE', N'buyfullpromotion',
'COLUMN', N'adddate'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新日期',
'SCHEMA', N'dbo',
'TABLE', N'buyfullpromotion',
'COLUMN', N'updatedate'
GO

EXEC sp_addextendedproperty
'MS_Description', N'排序',
'SCHEMA', N'dbo',
'TABLE', N'buyfullpromotion',
'COLUMN', N'inorder'
GO

EXEC sp_addextendedproperty
'MS_Description', N'买满促销商品',
'SCHEMA', N'dbo',
'TABLE', N'buyfullpromotion'
GO


-- ----------------------------
-- Table structure for buyfullpromotionorder
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[buyfullpromotionorder]') AND type IN ('U'))
	DROP TABLE [dbo].[buyfullpromotionorder]
GO

CREATE TABLE [dbo].[buyfullpromotionorder] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [buyfullid] bigint  NOT NULL,
  [itemno] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [openid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [itemname] varchar(250) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [orderno] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [itemnum] int  NOT NULL,
  [itemprice] decimal(18,2)  NOT NULL,
  [itemsamount] decimal(18,2)  NOT NULL,
  [discountamount] decimal(18,2)  NOT NULL,
  [postage] decimal(18,2)  NOT NULL,
  [itemstotalamount] decimal(18,2)  NOT NULL,
  [totalamount] decimal(18,2)  NOT NULL,
  [adddate] datetime  NOT NULL,
  [paystatus] varchar(2) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [branchno] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [orderman] varchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [ordertel] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [address] varchar(1000) COLLATE Chinese_PRC_CI_AS  NULL,
  [orderstatus] varchar(2) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [remarks] varchar(1000) COLLATE Chinese_PRC_CI_AS  NULL,
  [dealway] varchar(2) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [payway] varchar(2) COLLATE Chinese_PRC_CI_AS  NULL,
  [paydate] datetime  NULL,
  [dealtime] datetime  NULL,
  [deliverstatus] varchar(2) COLLATE Chinese_PRC_CI_AS DEFAULT ((0)) NULL,
  [deliverdate] datetime  NULL,
  [updatedate] datetime  NULL
)
GO

ALTER TABLE [dbo].[buyfullpromotionorder] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'ID',
'SCHEMA', N'dbo',
'TABLE', N'buyfullpromotionorder',
'COLUMN', N'Id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'满减优惠活动ID',
'SCHEMA', N'dbo',
'TABLE', N'buyfullpromotionorder',
'COLUMN', N'buyfullid'
GO

EXEC sp_addextendedproperty
'MS_Description', N'商品编号',
'SCHEMA', N'dbo',
'TABLE', N'buyfullpromotionorder',
'COLUMN', N'itemno'
GO

EXEC sp_addextendedproperty
'MS_Description', N'商户ID',
'SCHEMA', N'dbo',
'TABLE', N'buyfullpromotionorder',
'COLUMN', N'shopid'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户openid',
'SCHEMA', N'dbo',
'TABLE', N'buyfullpromotionorder',
'COLUMN', N'openid'
GO

EXEC sp_addextendedproperty
'MS_Description', N'商品名称',
'SCHEMA', N'dbo',
'TABLE', N'buyfullpromotionorder',
'COLUMN', N'itemname'
GO

EXEC sp_addextendedproperty
'MS_Description', N'订单编号',
'SCHEMA', N'dbo',
'TABLE', N'buyfullpromotionorder',
'COLUMN', N'orderno'
GO

EXEC sp_addextendedproperty
'MS_Description', N'购买商品数量',
'SCHEMA', N'dbo',
'TABLE', N'buyfullpromotionorder',
'COLUMN', N'itemnum'
GO

EXEC sp_addextendedproperty
'MS_Description', N'商品价格',
'SCHEMA', N'dbo',
'TABLE', N'buyfullpromotionorder',
'COLUMN', N'itemprice'
GO

EXEC sp_addextendedproperty
'MS_Description', N'商品总金额',
'SCHEMA', N'dbo',
'TABLE', N'buyfullpromotionorder',
'COLUMN', N'itemsamount'
GO

EXEC sp_addextendedproperty
'MS_Description', N'优惠金额',
'SCHEMA', N'dbo',
'TABLE', N'buyfullpromotionorder',
'COLUMN', N'discountamount'
GO

EXEC sp_addextendedproperty
'MS_Description', N'邮费',
'SCHEMA', N'dbo',
'TABLE', N'buyfullpromotionorder',
'COLUMN', N'postage'
GO

EXEC sp_addextendedproperty
'MS_Description', N'商品实付总金额',
'SCHEMA', N'dbo',
'TABLE', N'buyfullpromotionorder',
'COLUMN', N'itemstotalamount'
GO

EXEC sp_addextendedproperty
'MS_Description', N'订单总金额',
'SCHEMA', N'dbo',
'TABLE', N'buyfullpromotionorder',
'COLUMN', N'totalamount'
GO

EXEC sp_addextendedproperty
'MS_Description', N'下单时间',
'SCHEMA', N'dbo',
'TABLE', N'buyfullpromotionorder',
'COLUMN', N'adddate'
GO

EXEC sp_addextendedproperty
'MS_Description', N'订单支付状态【1-未支付 2-已支付】',
'SCHEMA', N'dbo',
'TABLE', N'buyfullpromotionorder',
'COLUMN', N'paystatus'
GO

EXEC sp_addextendedproperty
'MS_Description', N'门店',
'SCHEMA', N'dbo',
'TABLE', N'buyfullpromotionorder',
'COLUMN', N'branchno'
GO

EXEC sp_addextendedproperty
'MS_Description', N'姓名',
'SCHEMA', N'dbo',
'TABLE', N'buyfullpromotionorder',
'COLUMN', N'orderman'
GO

EXEC sp_addextendedproperty
'MS_Description', N'订单联系人手机号',
'SCHEMA', N'dbo',
'TABLE', N'buyfullpromotionorder',
'COLUMN', N'ordertel'
GO

EXEC sp_addextendedproperty
'MS_Description', N'地址',
'SCHEMA', N'dbo',
'TABLE', N'buyfullpromotionorder',
'COLUMN', N'address'
GO

EXEC sp_addextendedproperty
'MS_Description', N'订单状态[0-已取消；1-未完成；2-已完成；]',
'SCHEMA', N'dbo',
'TABLE', N'buyfullpromotionorder',
'COLUMN', N'orderstatus'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注',
'SCHEMA', N'dbo',
'TABLE', N'buyfullpromotionorder',
'COLUMN', N'remarks'
GO

EXEC sp_addextendedproperty
'MS_Description', N'配送方式',
'SCHEMA', N'dbo',
'TABLE', N'buyfullpromotionorder',
'COLUMN', N'dealway'
GO

EXEC sp_addextendedproperty
'MS_Description', N'支付方式 0、线下支付,1、储值卡支付，2、微信支付',
'SCHEMA', N'dbo',
'TABLE', N'buyfullpromotionorder',
'COLUMN', N'payway'
GO

EXEC sp_addextendedproperty
'MS_Description', N'支付时间',
'SCHEMA', N'dbo',
'TABLE', N'buyfullpromotionorder',
'COLUMN', N'paydate'
GO

EXEC sp_addextendedproperty
'MS_Description', N'预约时间',
'SCHEMA', N'dbo',
'TABLE', N'buyfullpromotionorder',
'COLUMN', N'dealtime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'发货状态[0-未发货；1-已发货]',
'SCHEMA', N'dbo',
'TABLE', N'buyfullpromotionorder',
'COLUMN', N'deliverstatus'
GO

EXEC sp_addextendedproperty
'MS_Description', N'发货时间',
'SCHEMA', N'dbo',
'TABLE', N'buyfullpromotionorder',
'COLUMN', N'deliverdate'
GO

EXEC sp_addextendedproperty
'MS_Description', N'订单状态修改时间',
'SCHEMA', N'dbo',
'TABLE', N'buyfullpromotionorder',
'COLUMN', N'updatedate'
GO

EXEC sp_addextendedproperty
'MS_Description', N'满减优惠订单表',
'SCHEMA', N'dbo',
'TABLE', N'buyfullpromotionorder'
GO


-- ----------------------------
-- Table structure for chatrecord
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[chatrecord]') AND type IN ('U'))
	DROP TABLE [dbo].[chatrecord]
GO

CREATE TABLE [dbo].[chatrecord] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [send_openid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [receive_openid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [operdate] datetime  NULL,
  [timestamp] bigint  NULL,
  [content] nvarchar(1000) COLLATE Chinese_PRC_CI_AS  NULL,
  [isread] bit  NULL,
  [sendtype] varchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [memberid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [issendsms] bit  NULL
)
GO

ALTER TABLE [dbo].[chatrecord] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否发送模板消息',
'SCHEMA', N'dbo',
'TABLE', N'chatrecord',
'COLUMN', N'issendsms'
GO


-- ----------------------------
-- Table structure for childaccount
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[childaccount]') AND type IN ('U'))
	DROP TABLE [dbo].[childaccount]
GO

CREATE TABLE [dbo].[childaccount] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [mobile] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [pwd] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [isactive] bit  NULL,
  [activedate] datetime  NULL,
  [name] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [isshow_product] bit  NOT NULL,
  [isshow_branch] bit  NOT NULL,
  [openid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [phoneno] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[childaccount] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for ClientVersions
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ClientVersions]') AND type IN ('U'))
	DROP TABLE [dbo].[ClientVersions]
GO

CREATE TABLE [dbo].[ClientVersions] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [Code] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [Name] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [Version] nvarchar(32) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [URL] nvarchar(800) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [Message] nvarchar(512) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[ClientVersions] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'ID',
'SCHEMA', N'dbo',
'TABLE', N'ClientVersions',
'COLUMN', N'Id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'文件项目',
'SCHEMA', N'dbo',
'TABLE', N'ClientVersions',
'COLUMN', N'Code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'名称',
'SCHEMA', N'dbo',
'TABLE', N'ClientVersions',
'COLUMN', N'Name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'版本',
'SCHEMA', N'dbo',
'TABLE', N'ClientVersions',
'COLUMN', N'Version'
GO

EXEC sp_addextendedproperty
'MS_Description', N'地址',
'SCHEMA', N'dbo',
'TABLE', N'ClientVersions',
'COLUMN', N'URL'
GO

EXEC sp_addextendedproperty
'MS_Description', N'信息',
'SCHEMA', N'dbo',
'TABLE', N'ClientVersions',
'COLUMN', N'Message'
GO

EXEC sp_addextendedproperty
'MS_Description', N'助手自动更新信息表',
'SCHEMA', N'dbo',
'TABLE', N'ClientVersions'
GO


-- ----------------------------
-- Table structure for customer_service
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[customer_service]') AND type IN ('U'))
	DROP TABLE [dbo].[customer_service]
GO

CREATE TABLE [dbo].[customer_service] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [name] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [openid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_time] datetime  NULL
)
GO

ALTER TABLE [dbo].[customer_service] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for delivery_staff
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[delivery_staff]') AND type IN ('U'))
	DROP TABLE [dbo].[delivery_staff]
GO

CREATE TABLE [dbo].[delivery_staff] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [staff_name] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [staff_tel] varchar(11) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [employ_state] int DEFAULT ((1)) NULL,
  [add_date] datetime  NOT NULL,
  [smsnotice] bit DEFAULT ((0)) NOT NULL
)
GO

ALTER TABLE [dbo].[delivery_staff] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'ID',
'SCHEMA', N'dbo',
'TABLE', N'delivery_staff',
'COLUMN', N'Id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'配送员姓名',
'SCHEMA', N'dbo',
'TABLE', N'delivery_staff',
'COLUMN', N'staff_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'门店ID',
'SCHEMA', N'dbo',
'TABLE', N'delivery_staff',
'COLUMN', N'shopid'
GO

EXEC sp_addextendedproperty
'MS_Description', N'配送员手机号码',
'SCHEMA', N'dbo',
'TABLE', N'delivery_staff',
'COLUMN', N'staff_tel'
GO

EXEC sp_addextendedproperty
'MS_Description', N'员工在职状态（1在职；2离职）',
'SCHEMA', N'dbo',
'TABLE', N'delivery_staff',
'COLUMN', N'employ_state'
GO

EXEC sp_addextendedproperty
'MS_Description', N'新增时间',
'SCHEMA', N'dbo',
'TABLE', N'delivery_staff',
'COLUMN', N'add_date'
GO

EXEC sp_addextendedproperty
'MS_Description', N'短信通知',
'SCHEMA', N'dbo',
'TABLE', N'delivery_staff',
'COLUMN', N'smsnotice'
GO

EXEC sp_addextendedproperty
'MS_Description', N'配送员信息表
',
'SCHEMA', N'dbo',
'TABLE', N'delivery_staff'
GO


-- ----------------------------
-- Table structure for discountsale
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[discountsale]') AND type IN ('U'))
	DROP TABLE [dbo].[discountsale]
GO

CREATE TABLE [dbo].[discountsale] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [name] varchar(200) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [salecategory] varchar(2) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [minnum] int  NOT NULL,
  [maxnum] int  NOT NULL,
  [rate] decimal(18,2)  NOT NULL,
  [useflag] bit  NOT NULL,
  [startdate] datetime  NOT NULL,
  [enddate] datetime  NOT NULL,
  [adddate] datetime  NOT NULL,
  [updatedate] datetime  NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [detail] varchar(250) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[discountsale] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'ID',
'SCHEMA', N'dbo',
'TABLE', N'discountsale',
'COLUMN', N'Id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'折扣促销活动名称',
'SCHEMA', N'dbo',
'TABLE', N'discountsale',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'促销类型1-全部商品 2-商品大类 3-商品小类 4-单个商品',
'SCHEMA', N'dbo',
'TABLE', N'discountsale',
'COLUMN', N'salecategory'
GO

EXEC sp_addextendedproperty
'MS_Description', N'起购数量',
'SCHEMA', N'dbo',
'TABLE', N'discountsale',
'COLUMN', N'minnum'
GO

EXEC sp_addextendedproperty
'MS_Description', N'限购数量',
'SCHEMA', N'dbo',
'TABLE', N'discountsale',
'COLUMN', N'maxnum'
GO

EXEC sp_addextendedproperty
'MS_Description', N'折扣率',
'SCHEMA', N'dbo',
'TABLE', N'discountsale',
'COLUMN', N'rate'
GO

EXEC sp_addextendedproperty
'MS_Description', N'上下架',
'SCHEMA', N'dbo',
'TABLE', N'discountsale',
'COLUMN', N'useflag'
GO

EXEC sp_addextendedproperty
'MS_Description', N'开始日期',
'SCHEMA', N'dbo',
'TABLE', N'discountsale',
'COLUMN', N'startdate'
GO

EXEC sp_addextendedproperty
'MS_Description', N'结束日期',
'SCHEMA', N'dbo',
'TABLE', N'discountsale',
'COLUMN', N'enddate'
GO

EXEC sp_addextendedproperty
'MS_Description', N'添加日期',
'SCHEMA', N'dbo',
'TABLE', N'discountsale',
'COLUMN', N'adddate'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改日期',
'SCHEMA', N'dbo',
'TABLE', N'discountsale',
'COLUMN', N'updatedate'
GO

EXEC sp_addextendedproperty
'MS_Description', N'商户ID',
'SCHEMA', N'dbo',
'TABLE', N'discountsale',
'COLUMN', N'shopid'
GO

EXEC sp_addextendedproperty
'MS_Description', N'折扣内容',
'SCHEMA', N'dbo',
'TABLE', N'discountsale',
'COLUMN', N'detail'
GO

EXEC sp_addextendedproperty
'MS_Description', N'折扣促销表',
'SCHEMA', N'dbo',
'TABLE', N'discountsale'
GO


-- ----------------------------
-- Table structure for discountsaleitemcart
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[discountsaleitemcart]') AND type IN ('U'))
	DROP TABLE [dbo].[discountsaleitemcart]
GO

CREATE TABLE [dbo].[discountsaleitemcart] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [openid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [detail] varchar(max) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [status] varchar(2) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [adddate] datetime  NOT NULL
)
GO

ALTER TABLE [dbo].[discountsaleitemcart] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'ID',
'SCHEMA', N'dbo',
'TABLE', N'discountsaleitemcart',
'COLUMN', N'Id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'商户ID',
'SCHEMA', N'dbo',
'TABLE', N'discountsaleitemcart',
'COLUMN', N'shopid'
GO

EXEC sp_addextendedproperty
'MS_Description', N'OpenID',
'SCHEMA', N'dbo',
'TABLE', N'discountsaleitemcart',
'COLUMN', N'openid'
GO

EXEC sp_addextendedproperty
'MS_Description', N'购物车详情',
'SCHEMA', N'dbo',
'TABLE', N'discountsaleitemcart',
'COLUMN', N'detail'
GO

EXEC sp_addextendedproperty
'MS_Description', N'0-未结算 1-已结算',
'SCHEMA', N'dbo',
'TABLE', N'discountsaleitemcart',
'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'添加时间',
'SCHEMA', N'dbo',
'TABLE', N'discountsaleitemcart',
'COLUMN', N'adddate'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户折扣商品购物车表',
'SCHEMA', N'dbo',
'TABLE', N'discountsaleitemcart'
GO


-- ----------------------------
-- Table structure for discountsaleiteminfo
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[discountsaleiteminfo]') AND type IN ('U'))
	DROP TABLE [dbo].[discountsaleiteminfo]
GO

CREATE TABLE [dbo].[discountsaleiteminfo] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [openid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [itemno] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [discountsaleid] bigint  NOT NULL,
  [adddate] datetime  NOT NULL,
  [itemnum] int  NOT NULL,
  [updatedate] datetime  NULL
)
GO

ALTER TABLE [dbo].[discountsaleiteminfo] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'ID',
'SCHEMA', N'dbo',
'TABLE', N'discountsaleiteminfo',
'COLUMN', N'Id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'商户ID',
'SCHEMA', N'dbo',
'TABLE', N'discountsaleiteminfo',
'COLUMN', N'shopid'
GO

EXEC sp_addextendedproperty
'MS_Description', N'OpenID',
'SCHEMA', N'dbo',
'TABLE', N'discountsaleiteminfo',
'COLUMN', N'openid'
GO

EXEC sp_addextendedproperty
'MS_Description', N'商品编号',
'SCHEMA', N'dbo',
'TABLE', N'discountsaleiteminfo',
'COLUMN', N'itemno'
GO

EXEC sp_addextendedproperty
'MS_Description', N'折扣促销ID',
'SCHEMA', N'dbo',
'TABLE', N'discountsaleiteminfo',
'COLUMN', N'discountsaleid'
GO

EXEC sp_addextendedproperty
'MS_Description', N'添加时间',
'SCHEMA', N'dbo',
'TABLE', N'discountsaleiteminfo',
'COLUMN', N'adddate'
GO

EXEC sp_addextendedproperty
'MS_Description', N'商品数量',
'SCHEMA', N'dbo',
'TABLE', N'discountsaleiteminfo',
'COLUMN', N'itemnum'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改时间',
'SCHEMA', N'dbo',
'TABLE', N'discountsaleiteminfo',
'COLUMN', N'updatedate'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户折扣商品表',
'SCHEMA', N'dbo',
'TABLE', N'discountsaleiteminfo'
GO


-- ----------------------------
-- Table structure for discountsaleorder
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[discountsaleorder]') AND type IN ('U'))
	DROP TABLE [dbo].[discountsaleorder]
GO

CREATE TABLE [dbo].[discountsaleorder] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [openid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [orderno] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [discountsaleid] bigint  NOT NULL,
  [orderdetail] varchar(max) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [adddate] datetime  NOT NULL
)
GO

ALTER TABLE [dbo].[discountsaleorder] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'ID',
'SCHEMA', N'dbo',
'TABLE', N'discountsaleorder',
'COLUMN', N'Id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'商户ID',
'SCHEMA', N'dbo',
'TABLE', N'discountsaleorder',
'COLUMN', N'shopid'
GO

EXEC sp_addextendedproperty
'MS_Description', N'OpenID',
'SCHEMA', N'dbo',
'TABLE', N'discountsaleorder',
'COLUMN', N'openid'
GO

EXEC sp_addextendedproperty
'MS_Description', N'订单编号',
'SCHEMA', N'dbo',
'TABLE', N'discountsaleorder',
'COLUMN', N'orderno'
GO

EXEC sp_addextendedproperty
'MS_Description', N'折扣ID',
'SCHEMA', N'dbo',
'TABLE', N'discountsaleorder',
'COLUMN', N'discountsaleid'
GO

EXEC sp_addextendedproperty
'MS_Description', N'orderdetail',
'SCHEMA', N'dbo',
'TABLE', N'discountsaleorder',
'COLUMN', N'orderdetail'
GO

EXEC sp_addextendedproperty
'MS_Description', N'订单时间',
'SCHEMA', N'dbo',
'TABLE', N'discountsaleorder',
'COLUMN', N'adddate'
GO

EXEC sp_addextendedproperty
'MS_Description', N'折扣促销订单表',
'SCHEMA', N'dbo',
'TABLE', N'discountsaleorder'
GO


-- ----------------------------
-- Table structure for discountvoucher
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[discountvoucher]') AND type IN ('U'))
	DROP TABLE [dbo].[discountvoucher]
GO

CREATE TABLE [dbo].[discountvoucher] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [branchno] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [fullmoney] decimal(18,2)  NOT NULL,
  [discountmoney] decimal(18,2)  NOT NULL,
  [useflag] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [starttime] datetime  NOT NULL,
  [endtime] datetime  NOT NULL,
  [memo] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [operdate] datetime  NULL,
  [name] nvarchar(50) COLLATE Chinese_PRC_CI_AS DEFAULT ('优惠券') NULL,
  [type] varchar(50) COLLATE Chinese_PRC_CI_AS DEFAULT ('普通券') NOT NULL,
  [voucherstarttime] datetime DEFAULT (getdate()) NOT NULL,
  [voucherendtime] datetime DEFAULT (getdate()) NOT NULL,
  [itemtypes] text COLLATE Chinese_PRC_CI_AS  NULL,
  [accnum] decimal(18,2)  NULL,
  [itemsingletypes] text COLLATE Chinese_PRC_CI_AS  NULL,
  [effectivedays] int DEFAULT ((0)) NULL,
  [effectiveway] varchar(2) COLLATE Chinese_PRC_CI_AS  NULL,
  [itemvoucherno] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [limitnum] int  NULL,
  [getnum] int  NULL,
  [islimit] bit DEFAULT ((0)) NOT NULL,
  [sms] bit DEFAULT ((0)) NOT NULL,
  [ishide] bit DEFAULT ((0)) NOT NULL,
  [isbind] bit DEFAULT ((1)) NOT NULL,
  [isregister] bit DEFAULT ((1)) NOT NULL,
  [branchtypes] text COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[discountvoucher] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'限定的类别编号，用半角逗号隔开',
'SCHEMA', N'dbo',
'TABLE', N'discountvoucher',
'COLUMN', N'itemtypes'
GO

EXEC sp_addextendedproperty
'MS_Description', N'积分换券',
'SCHEMA', N'dbo',
'TABLE', N'discountvoucher',
'COLUMN', N'accnum'
GO

EXEC sp_addextendedproperty
'MS_Description', N'优惠券按商品设置',
'SCHEMA', N'dbo',
'TABLE', N'discountvoucher',
'COLUMN', N'itemsingletypes'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否开启领券后使用有效天数（大于0）',
'SCHEMA', N'dbo',
'TABLE', N'discountvoucher',
'COLUMN', N'effectivedays'
GO


-- ----------------------------
-- Table structure for express_company
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[express_company]') AND type IN ('U'))
	DROP TABLE [dbo].[express_company]
GO

CREATE TABLE [dbo].[express_company] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [expressname] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [isshow] int  NOT NULL,
  [adddate] datetime  NOT NULL,
  [expresscode] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[express_company] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'商户id',
'SCHEMA', N'dbo',
'TABLE', N'express_company',
'COLUMN', N'shopid'
GO

EXEC sp_addextendedproperty
'MS_Description', N'快递公司名称',
'SCHEMA', N'dbo',
'TABLE', N'express_company',
'COLUMN', N'expressname'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否显示（1显示；2隐藏）',
'SCHEMA', N'dbo',
'TABLE', N'express_company',
'COLUMN', N'isshow'
GO

EXEC sp_addextendedproperty
'MS_Description', N'添加时间',
'SCHEMA', N'dbo',
'TABLE', N'express_company',
'COLUMN', N'adddate'
GO

EXEC sp_addextendedproperty
'MS_Description', N'快递公司编码',
'SCHEMA', N'dbo',
'TABLE', N'express_company',
'COLUMN', N'expresscode'
GO

EXEC sp_addextendedproperty
'MS_Description', N'快递公司表',
'SCHEMA', N'dbo',
'TABLE', N'express_company'
GO


-- ----------------------------
-- Table structure for expressinfo
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[expressinfo]') AND type IN ('U'))
	DROP TABLE [dbo].[expressinfo]
GO

CREATE TABLE [dbo].[expressinfo] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [orderid] bigint  NOT NULL,
  [delivery_type] int  NOT NULL,
  [express_company] int  NULL,
  [express_no] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [delivery_man] bigint  NULL,
  [add_date] datetime  NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [orderno] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[expressinfo] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'订单ID',
'SCHEMA', N'dbo',
'TABLE', N'expressinfo',
'COLUMN', N'orderid'
GO

EXEC sp_addextendedproperty
'MS_Description', N'配送类型（1快递配送-2配送员配送）',
'SCHEMA', N'dbo',
'TABLE', N'expressinfo',
'COLUMN', N'delivery_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'快递公司',
'SCHEMA', N'dbo',
'TABLE', N'expressinfo',
'COLUMN', N'express_company'
GO

EXEC sp_addextendedproperty
'MS_Description', N'快递单号',
'SCHEMA', N'dbo',
'TABLE', N'expressinfo',
'COLUMN', N'express_no'
GO

EXEC sp_addextendedproperty
'MS_Description', N'配送员ID',
'SCHEMA', N'dbo',
'TABLE', N'expressinfo',
'COLUMN', N'delivery_man'
GO

EXEC sp_addextendedproperty
'MS_Description', N'新增日期',
'SCHEMA', N'dbo',
'TABLE', N'expressinfo',
'COLUMN', N'add_date'
GO

EXEC sp_addextendedproperty
'MS_Description', N'订单快递信息',
'SCHEMA', N'dbo',
'TABLE', N'expressinfo'
GO


-- ----------------------------
-- Table structure for KeyReply
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[KeyReply]') AND type IN ('U'))
	DROP TABLE [dbo].[KeyReply]
GO

CREATE TABLE [dbo].[KeyReply] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [wx_gh] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [key] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [reply] nvarchar(800) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[KeyReply] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for Log
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Log]') AND type IN ('U'))
	DROP TABLE [dbo].[Log]
GO

CREATE TABLE [dbo].[Log] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [Date] datetime  NULL,
  [Thread] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Level] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [Logger] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Message] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [Exception] varchar(4000) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[Log] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for loginlog_info
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[loginlog_info]') AND type IN ('U'))
	DROP TABLE [dbo].[loginlog_info]
GO

CREATE TABLE [dbo].[loginlog_info] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [loginname] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [logintype] int  NULL,
  [logintime] datetime  NULL,
  [loginip] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[loginlog_info] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for LogWXApp
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[LogWXApp]') AND type IN ('U'))
	DROP TABLE [dbo].[LogWXApp]
GO

CREATE TABLE [dbo].[LogWXApp] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [Date] datetime  NULL,
  [Thread] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Level] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [Logger] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Message] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [Exception] varchar(4000) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[LogWXApp] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for member_card_set
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[member_card_set]') AND type IN ('U'))
	DROP TABLE [dbo].[member_card_set]
GO

CREATE TABLE [dbo].[member_card_set] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [font_position] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [font_style] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [font_color] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [font_size] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [user_headimg_isshow] int DEFAULT ((1)) NULL,
  [isshow] int DEFAULT ((2)) NULL,
  [homepic] varchar(150) COLLATE Chinese_PRC_CI_AS  NULL,
  [showshoplogo] bit DEFAULT ((1)) NOT NULL,
  [showshopname] bit DEFAULT ((1)) NOT NULL,
  [showcardid] bit DEFAULT ((1)) NOT NULL,
  [showqrcode] bit DEFAULT ((1)) NOT NULL,
  [usedefaultcard] bit DEFAULT ((1)) NOT NULL
)
GO

ALTER TABLE [dbo].[member_card_set] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'文字位置',
'SCHEMA', N'dbo',
'TABLE', N'member_card_set',
'COLUMN', N'font_position'
GO

EXEC sp_addextendedproperty
'MS_Description', N'文字字体',
'SCHEMA', N'dbo',
'TABLE', N'member_card_set',
'COLUMN', N'font_style'
GO

EXEC sp_addextendedproperty
'MS_Description', N'文字颜色',
'SCHEMA', N'dbo',
'TABLE', N'member_card_set',
'COLUMN', N'font_color'
GO

EXEC sp_addextendedproperty
'MS_Description', N'文字大小',
'SCHEMA', N'dbo',
'TABLE', N'member_card_set',
'COLUMN', N'font_size'
GO

EXEC sp_addextendedproperty
'MS_Description', N'商户id',
'SCHEMA', N'dbo',
'TABLE', N'member_card_set',
'COLUMN', N'shopid'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户头像是否显示',
'SCHEMA', N'dbo',
'TABLE', N'member_card_set',
'COLUMN', N'user_headimg_isshow'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否启用会员卡卡面设置（1-启用；2-不启用）',
'SCHEMA', N'dbo',
'TABLE', N'member_card_set',
'COLUMN', N'isshow'
GO

EXEC sp_addextendedproperty
'MS_Description', N'商户会员卡卡面图片',
'SCHEMA', N'dbo',
'TABLE', N'member_card_set',
'COLUMN', N'homepic'
GO

EXEC sp_addextendedproperty
'MS_Description', N'会员卡卡面样式设置',
'SCHEMA', N'dbo',
'TABLE', N'member_card_set'
GO


-- ----------------------------
-- Table structure for offlinesaleclerk
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[offlinesaleclerk]') AND type IN ('U'))
	DROP TABLE [dbo].[offlinesaleclerk]
GO

CREATE TABLE [dbo].[offlinesaleclerk] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [branchno] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [clerkno] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [clerkname] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [clerkstatus] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [adddate] datetime  NOT NULL,
  [updatedate] datetime  NULL,
  [branchname] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [openid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [qrcode] varchar(250) COLLATE Chinese_PRC_CI_AS  NULL,
  [isallow_sendvoucher] bit DEFAULT ((1)) NOT NULL,
  [sendvoucher_undersaleclerk] bit DEFAULT ((1)) NOT NULL,
  [sendvoucher_total] numeric(18,4)  NULL,
  [sendvoucher_totaltype] varchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [allow_checkbranchdata] bit DEFAULT ((0)) NOT NULL,
  [checkdata_ownbranch] bit DEFAULT ((0)) NOT NULL,
  [checkdata_otherbranch] varchar(1000) COLLATE Chinese_PRC_CI_AS  NULL,
  [allow_otherbranch] bit DEFAULT ((0)) NOT NULL,
  [isdefault_chat] bit DEFAULT ((0)) NOT NULL,
  [authority_roleId] int  NULL
)
GO

ALTER TABLE [dbo].[offlinesaleclerk] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'职工编号',
'SCHEMA', N'dbo',
'TABLE', N'offlinesaleclerk',
'COLUMN', N'clerkno'
GO

EXEC sp_addextendedproperty
'MS_Description', N'职员状态',
'SCHEMA', N'dbo',
'TABLE', N'offlinesaleclerk',
'COLUMN', N'clerkstatus'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否默认客服',
'SCHEMA', N'dbo',
'TABLE', N'offlinesaleclerk',
'COLUMN', N'isdefault_chat'
GO

EXEC sp_addextendedproperty
'MS_Description', N'线下营业员表',
'SCHEMA', N'dbo',
'TABLE', N'offlinesaleclerk'
GO


-- ----------------------------
-- Table structure for order_cancel
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[order_cancel]') AND type IN ('U'))
	DROP TABLE [dbo].[order_cancel]
GO

CREATE TABLE [dbo].[order_cancel] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [orderno] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [from_type] smallint  NOT NULL,
  [from_id] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [from_name] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [from_tel] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [apply_reason] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [create_time] datetime  NOT NULL,
  [update_time] datetime  NOT NULL,
  [oper_time] datetime  NULL,
  [oper_id] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [oper_reason] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [state] smallint  NOT NULL,
  [memo] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [amt] numeric(18,4)  NOT NULL,
  [refund_state] smallint  NULL,
  [need_refund] smallint  NOT NULL,
  [refund_way] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [voucherback_id] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [voucher_isback] bit  NULL
)
GO

ALTER TABLE [dbo].[order_cancel] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'商户ID',
'SCHEMA', N'dbo',
'TABLE', N'order_cancel',
'COLUMN', N'shopid'
GO

EXEC sp_addextendedproperty
'MS_Description', N'单号，使用原单号',
'SCHEMA', N'dbo',
'TABLE', N'order_cancel',
'COLUMN', N'orderno'
GO

EXEC sp_addextendedproperty
'MS_Description', N'申请方类型，0：微商店管理员，1：线下软件，2：顾客',
'SCHEMA', N'dbo',
'TABLE', N'order_cancel',
'COLUMN', N'from_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'申请方的Id，如果是顾客，保存其openid，其他身份的话，看情况保存相应的id',
'SCHEMA', N'dbo',
'TABLE', N'order_cancel',
'COLUMN', N'from_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'联系人姓名',
'SCHEMA', N'dbo',
'TABLE', N'order_cancel',
'COLUMN', N'from_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'联系人电话',
'SCHEMA', N'dbo',
'TABLE', N'order_cancel',
'COLUMN', N'from_tel'
GO

EXEC sp_addextendedproperty
'MS_Description', N'申请理由',
'SCHEMA', N'dbo',
'TABLE', N'order_cancel',
'COLUMN', N'apply_reason'
GO

EXEC sp_addextendedproperty
'MS_Description', N'记录创建时间',
'SCHEMA', N'dbo',
'TABLE', N'order_cancel',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'记录更新时间，每次update此记录，都要更新updatetime',
'SCHEMA', N'dbo',
'TABLE', N'order_cancel',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'管理员处理该申请的时间',
'SCHEMA', N'dbo',
'TABLE', N'order_cancel',
'COLUMN', N'oper_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'管理员id，后期可能会做运营账号登录，所以预留此字段，现在没有的话，可以不填写',
'SCHEMA', N'dbo',
'TABLE', N'order_cancel',
'COLUMN', N'oper_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'退款的原因，允许也可以写原因，不过没必要',
'SCHEMA', N'dbo',
'TABLE', N'order_cancel',
'COLUMN', N'oper_reason'
GO

EXEC sp_addextendedproperty
'MS_Description', N'退款单状态，0：待处理，1：已驳回，2：已同意',
'SCHEMA', N'dbo',
'TABLE', N'order_cancel',
'COLUMN', N'state'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注，暂时没用上',
'SCHEMA', N'dbo',
'TABLE', N'order_cancel',
'COLUMN', N'memo'
GO

EXEC sp_addextendedproperty
'MS_Description', N'订单金额',
'SCHEMA', N'dbo',
'TABLE', N'order_cancel',
'COLUMN', N'amt'
GO

EXEC sp_addextendedproperty
'MS_Description', N'0：未退款，1：已退款',
'SCHEMA', N'dbo',
'TABLE', N'order_cancel',
'COLUMN', N'refund_state'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否需要退款，0：不需要，1：需要',
'SCHEMA', N'dbo',
'TABLE', N'order_cancel',
'COLUMN', N'need_refund'
GO

EXEC sp_addextendedproperty
'MS_Description', N'退款路径，1：储值卡，2：微信支付，实际上就是订单的支付方式',
'SCHEMA', N'dbo',
'TABLE', N'order_cancel',
'COLUMN', N'refund_way'
GO


-- ----------------------------
-- Table structure for ordertrack
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ordertrack]') AND type IN ('U'))
	DROP TABLE [dbo].[ordertrack]
GO

CREATE TABLE [dbo].[ordertrack] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [OrderNo] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [ShipperCode] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [LogisticCode] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [Success] bit  NOT NULL,
  [Reason] varchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [State] char(2) COLLATE Chinese_PRC_CI_AS  NULL,
  [Traces] varchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [EstimatedDeliveryTime] varchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [PickerInfo] varchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [SenderInfo] varchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [AddDate] datetime  NOT NULL
)
GO

ALTER TABLE [dbo].[ordertrack] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'订单编号',
'SCHEMA', N'dbo',
'TABLE', N'ordertrack',
'COLUMN', N'OrderNo'
GO

EXEC sp_addextendedproperty
'MS_Description', N'快递公司编码',
'SCHEMA', N'dbo',
'TABLE', N'ordertrack',
'COLUMN', N'ShipperCode'
GO

EXEC sp_addextendedproperty
'MS_Description', N'快递单号',
'SCHEMA', N'dbo',
'TABLE', N'ordertrack',
'COLUMN', N'LogisticCode'
GO

EXEC sp_addextendedproperty
'MS_Description', N'成功与否：true,false',
'SCHEMA', N'dbo',
'TABLE', N'ordertrack',
'COLUMN', N'Success'
GO

EXEC sp_addextendedproperty
'MS_Description', N'失败原因',
'SCHEMA', N'dbo',
'TABLE', N'ordertrack',
'COLUMN', N'Reason'
GO

EXEC sp_addextendedproperty
'MS_Description', N' 物流状态: 0-无轨迹，1-已揽收，2-在途中 201-到达派件城市，3-签收,4-问题件',
'SCHEMA', N'dbo',
'TABLE', N'ordertrack',
'COLUMN', N'State'
GO

EXEC sp_addextendedproperty
'MS_Description', N'轨迹集合',
'SCHEMA', N'dbo',
'TABLE', N'ordertrack',
'COLUMN', N'Traces'
GO

EXEC sp_addextendedproperty
'MS_Description', N'预计到达时间yyyy-mm-dd',
'SCHEMA', N'dbo',
'TABLE', N'ordertrack',
'COLUMN', N'EstimatedDeliveryTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'揽件人信息',
'SCHEMA', N'dbo',
'TABLE', N'ordertrack',
'COLUMN', N'PickerInfo'
GO

EXEC sp_addextendedproperty
'MS_Description', N'派件人信息',
'SCHEMA', N'dbo',
'TABLE', N'ordertrack',
'COLUMN', N'SenderInfo'
GO

EXEC sp_addextendedproperty
'MS_Description', N'新增时间',
'SCHEMA', N'dbo',
'TABLE', N'ordertrack',
'COLUMN', N'AddDate'
GO

EXEC sp_addextendedproperty
'MS_Description', N'订单轨迹',
'SCHEMA', N'dbo',
'TABLE', N'ordertrack'
GO


-- ----------------------------
-- Table structure for passwordvoucher
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[passwordvoucher]') AND type IN ('U'))
	DROP TABLE [dbo].[passwordvoucher]
GO

CREATE TABLE [dbo].[passwordvoucher] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [name] varchar(200) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [type] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [voucher_num] int  NOT NULL,
  [use_num] int  NOT NULL,
  [price] decimal(18,2)  NOT NULL,
  [starttime] datetime  NOT NULL,
  [endtime] datetime  NOT NULL,
  [effectiveway] varchar(2) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [effectivedays] int  NOT NULL,
  [operdate] datetime  NOT NULL,
  [memo] varchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [checkflag] varchar(2) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [product_price] decimal(18,2)  NOT NULL,
  [score] int  NULL
)
GO

ALTER TABLE [dbo].[passwordvoucher] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for passwordvouchercard
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[passwordvouchercard]') AND type IN ('U'))
	DROP TABLE [dbo].[passwordvouchercard]
GO

CREATE TABLE [dbo].[passwordvouchercard] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [card_no] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [pwd] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [useflag] varchar(2) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [order_no] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [voucher_id] bigint  NOT NULL,
  [adddate] datetime  NOT NULL,
  [openid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[passwordvouchercard] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for passwordvoucheritem
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[passwordvoucheritem]') AND type IN ('U'))
	DROP TABLE [dbo].[passwordvoucheritem]
GO

CREATE TABLE [dbo].[passwordvoucheritem] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [voucher_id] bigint  NOT NULL,
  [item_no] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [item_num] int  NOT NULL
)
GO

ALTER TABLE [dbo].[passwordvoucheritem] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for passwordvoucherorder
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[passwordvoucherorder]') AND type IN ('U'))
	DROP TABLE [dbo].[passwordvoucherorder]
GO

CREATE TABLE [dbo].[passwordvoucherorder] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [order_no] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [order_man] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [mobile] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [address] varchar(500) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [send_type] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [send_status] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [operdate] datetime  NOT NULL,
  [sendtime] datetime  NULL,
  [orderprice] decimal(18,2)  NOT NULL,
  [totalprice] decimal(18,2)  NOT NULL,
  [memo] varchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [track_no] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [track_type] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [track_man] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [track_company] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [track_mobile] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [voucher_id] bigint  NOT NULL
)
GO

ALTER TABLE [dbo].[passwordvoucherorder] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for paycode
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[paycode]') AND type IN ('U'))
	DROP TABLE [dbo].[paycode]
GO

CREATE TABLE [dbo].[paycode] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [openid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [cardid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [branchno] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [useflag] char(1) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [operdate] datetime  NOT NULL,
  [randomcode] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[paycode] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for paycode_log
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[paycode_log]') AND type IN ('U'))
	DROP TABLE [dbo].[paycode_log]
GO

CREATE TABLE [dbo].[paycode_log] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [shopid] varchar(8) COLLATE Chinese_PRC_CI_AS  NULL,
  [randomcode] varchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [operdate] datetime  NULL
)
GO

ALTER TABLE [dbo].[paycode_log] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for pintuan
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[pintuan]') AND type IN ('U'))
	DROP TABLE [dbo].[pintuan]
GO

CREATE TABLE [dbo].[pintuan] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [name] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [start_time] datetime  NOT NULL,
  [end_time] datetime  NOT NULL,
  [item_no] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [item_name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [price] numeric(18,4)  NOT NULL,
  [limit_num] int  NULL,
  [people_num] int  NOT NULL,
  [maxhour] int  NOT NULL,
  [useflag] bit DEFAULT ((0)) NOT NULL,
  [create_time] datetime  NOT NULL,
  [update_time] datetime  NOT NULL,
  [category] varchar(2) COLLATE Chinese_PRC_CI_AS  NULL,
  [inorder] int DEFAULT ((0)) NOT NULL,
  [dealtype] varchar(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [payway] varchar(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [islimit_branchno] varchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [branch_no_list] nvarchar(1000) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[pintuan] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'商户ID',
'SCHEMA', N'dbo',
'TABLE', N'pintuan',
'COLUMN', N'shopid'
GO

EXEC sp_addextendedproperty
'MS_Description', N'活动名称',
'SCHEMA', N'dbo',
'TABLE', N'pintuan',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'开始时间',
'SCHEMA', N'dbo',
'TABLE', N'pintuan',
'COLUMN', N'start_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'结束时间',
'SCHEMA', N'dbo',
'TABLE', N'pintuan',
'COLUMN', N'end_time'
GO


-- ----------------------------
-- Table structure for pintuan_order
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[pintuan_order]') AND type IN ('U'))
	DROP TABLE [dbo].[pintuan_order]
GO

CREATE TABLE [dbo].[pintuan_order] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [orderno] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [pintuan_id] bigint  NOT NULL,
  [pintuan_name] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [tuanzhang_openid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [tuanzhang_nickname] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [item_no] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [item_name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [price] numeric(18,4)  NOT NULL,
  [limit_num] int  NULL,
  [people_num] int  NOT NULL,
  [status] smallint  NOT NULL,
  [end_time] datetime  NOT NULL,
  [create_time] datetime  NOT NULL,
  [update_time] datetime  NOT NULL,
  [canceltype] char(1) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[pintuan_order] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'商户ID',
'SCHEMA', N'dbo',
'TABLE', N'pintuan_order',
'COLUMN', N'shopid'
GO

EXEC sp_addextendedproperty
'MS_Description', N'活动名称',
'SCHEMA', N'dbo',
'TABLE', N'pintuan_order',
'COLUMN', N'pintuan_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'会员名称',
'SCHEMA', N'dbo',
'TABLE', N'pintuan_order',
'COLUMN', N'tuanzhang_nickname'
GO

EXEC sp_addextendedproperty
'MS_Description', N'0：已开团，1：已取消，2：已成团',
'SCHEMA', N'dbo',
'TABLE', N'pintuan_order',
'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'结束时间',
'SCHEMA', N'dbo',
'TABLE', N'pintuan_order',
'COLUMN', N'end_time'
GO


-- ----------------------------
-- Table structure for pintuan_order_detail
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[pintuan_order_detail]') AND type IN ('U'))
	DROP TABLE [dbo].[pintuan_order_detail]
GO

CREATE TABLE [dbo].[pintuan_order_detail] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [parentno] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [orderno] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [openid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [status] smallint  NOT NULL,
  [pay_status] smallint  NOT NULL,
  [create_time] datetime  NOT NULL,
  [update_time] datetime  NOT NULL,
  [dealway] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [payway] char(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [branchno] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [orderman] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [ordertel] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [addressall] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [memo] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [dealtime] datetime  NULL,
  [num] int  NOT NULL,
  [nickname] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [canceltype] char(1) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[pintuan_order_detail] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'商户ID',
'SCHEMA', N'dbo',
'TABLE', N'pintuan_order_detail',
'COLUMN', N'shopid'
GO

EXEC sp_addextendedproperty
'MS_Description', N'拼团订单号，属于哪一个拼团订单',
'SCHEMA', N'dbo',
'TABLE', N'pintuan_order_detail',
'COLUMN', N'parentno'
GO

EXEC sp_addextendedproperty
'MS_Description', N'当前订单号，用于支付',
'SCHEMA', N'dbo',
'TABLE', N'pintuan_order_detail',
'COLUMN', N'orderno'
GO

EXEC sp_addextendedproperty
'MS_Description', N'0：已参团，1：已取消',
'SCHEMA', N'dbo',
'TABLE', N'pintuan_order_detail',
'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'0：未支付，1：已支付',
'SCHEMA', N'dbo',
'TABLE', N'pintuan_order_detail',
'COLUMN', N'pay_status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'送货方式，0：到店自提，1：送货上门',
'SCHEMA', N'dbo',
'TABLE', N'pintuan_order_detail',
'COLUMN', N'dealway'
GO

EXEC sp_addextendedproperty
'MS_Description', N'0：线下支付，1：储值卡支付，2：微信支付',
'SCHEMA', N'dbo',
'TABLE', N'pintuan_order_detail',
'COLUMN', N'payway'
GO

EXEC sp_addextendedproperty
'MS_Description', N'门店编码',
'SCHEMA', N'dbo',
'TABLE', N'pintuan_order_detail',
'COLUMN', N'branchno'
GO

EXEC sp_addextendedproperty
'MS_Description', N'姓名',
'SCHEMA', N'dbo',
'TABLE', N'pintuan_order_detail',
'COLUMN', N'orderman'
GO

EXEC sp_addextendedproperty
'MS_Description', N'手机',
'SCHEMA', N'dbo',
'TABLE', N'pintuan_order_detail',
'COLUMN', N'ordertel'
GO

EXEC sp_addextendedproperty
'MS_Description', N'地址',
'SCHEMA', N'dbo',
'TABLE', N'pintuan_order_detail',
'COLUMN', N'addressall'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注',
'SCHEMA', N'dbo',
'TABLE', N'pintuan_order_detail',
'COLUMN', N'memo'
GO

EXEC sp_addextendedproperty
'MS_Description', N'自提/送货时间',
'SCHEMA', N'dbo',
'TABLE', N'pintuan_order_detail',
'COLUMN', N'dealtime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'会员名称',
'SCHEMA', N'dbo',
'TABLE', N'pintuan_order_detail',
'COLUMN', N'nickname'
GO


-- ----------------------------
-- Table structure for pointgetvoucher_log
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[pointgetvoucher_log]') AND type IN ('U'))
	DROP TABLE [dbo].[pointgetvoucher_log]
GO

CREATE TABLE [dbo].[pointgetvoucher_log] (
  [id] bigint  IDENTITY(1,1) NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [flow_no] varchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [openid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [cardid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [discountvoucherid] bigint  NULL,
  [operdate] datetime  NULL,
  [accnum] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[pointgetvoucher_log] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for pre_order
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[pre_order]') AND type IN ('U'))
	DROP TABLE [dbo].[pre_order]
GO

CREATE TABLE [dbo].[pre_order] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [operdate] datetime  NOT NULL,
  [item_name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [desc] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [price] numeric(18,4) DEFAULT ((0)) NOT NULL,
  [pic] varchar(1000) COLLATE Chinese_PRC_CI_AS  NULL,
  [starttime] datetime DEFAULT (getdate()) NULL,
  [endtime] datetime DEFAULT (getdate()) NULL,
  [stock] int DEFAULT ((-1)) NOT NULL,
  [isstock] bit DEFAULT ((0)) NOT NULL,
  [salenum] int DEFAULT ((0)) NOT NULL,
  [limit_num] int  NOT NULL,
  [limit_type] int  NOT NULL,
  [usestarttime] datetime DEFAULT (getdate()) NULL,
  [useendtime] datetime DEFAULT (getdate()) NULL,
  [branch_no_list] nvarchar(1000) COLLATE Chinese_PRC_CI_AS  NULL,
  [pay_type] varchar(50) COLLATE Chinese_PRC_CI_AS DEFAULT ('2,1,0,') NULL,
  [deal_type] varchar(50) COLLATE Chinese_PRC_CI_AS DEFAULT ('1,0,') NULL,
  [useflag] bit  NOT NULL,
  [exchange_needbranchno] varchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [relate_num] int  NULL
)
GO

ALTER TABLE [dbo].[pre_order] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'0不限，1每个用户限量，2总限量',
'SCHEMA', N'dbo',
'TABLE', N'pre_order',
'COLUMN', N'limit_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'上架',
'SCHEMA', N'dbo',
'TABLE', N'pre_order',
'COLUMN', N'useflag'
GO


-- ----------------------------
-- Table structure for pre_order_num
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[pre_order_num]') AND type IN ('U'))
	DROP TABLE [dbo].[pre_order_num]
GO

CREATE TABLE [dbo].[pre_order_num] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [openid] varchar(150) COLLATE Chinese_PRC_CI_AS  NULL,
  [pre_order_id] bigint  NULL,
  [num] int  NULL
)
GO

ALTER TABLE [dbo].[pre_order_num] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for pre_order_product
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[pre_order_product]') AND type IN ('U'))
	DROP TABLE [dbo].[pre_order_product]
GO

CREATE TABLE [dbo].[pre_order_product] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [operdate] datetime  NOT NULL,
  [item_no] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [item_name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [item_spec] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [item_desc] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [pic] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [pre_order_id] bigint  NULL,
  [productid] bigint  NULL,
  [item_price] numeric(18,4)  NULL
)
GO

ALTER TABLE [dbo].[pre_order_product] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for preorder_ticket
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[preorder_ticket]') AND type IN ('U'))
	DROP TABLE [dbo].[preorder_ticket]
GO

CREATE TABLE [dbo].[preorder_ticket] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [operdate] datetime  NOT NULL,
  [openid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [preorder_info_id] bigint  NOT NULL,
  [ticket_order_id] bigint  NOT NULL,
  [ticketno] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [starttime] datetime DEFAULT (getdate()) NULL,
  [endtime] datetime DEFAULT (getdate()) NULL,
  [state] int  NOT NULL,
  [preorder_name] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[preorder_ticket] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for preorder_ticket_order
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[preorder_ticket_order]') AND type IN ('U'))
	DROP TABLE [dbo].[preorder_ticket_order]
GO

CREATE TABLE [dbo].[preorder_ticket_order] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [operdate] datetime  NOT NULL,
  [openid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [preorder_info_id] bigint  NOT NULL,
  [orderno] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [total_cost] numeric(18,4)  NOT NULL,
  [total_amt] int  NULL,
  [memo] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [payflag] int  NULL,
  [paymode] int  NOT NULL,
  [state] int  NOT NULL,
  [card_remain] numeric(18,4)  NULL,
  [card_id] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [orderman] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [ordertel] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [preorder_name] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[preorder_ticket_order] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for preorder_ticket_use
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[preorder_ticket_use]') AND type IN ('U'))
	DROP TABLE [dbo].[preorder_ticket_use]
GO

CREATE TABLE [dbo].[preorder_ticket_use] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [operdate] datetime  NOT NULL,
  [openid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [preorder_info_id] bigint  NOT NULL,
  [ticket_id] bigint  NOT NULL,
  [orderno] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[preorder_ticket_use] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for prevouchercode
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[prevouchercode]') AND type IN ('U'))
	DROP TABLE [dbo].[prevouchercode]
GO

CREATE TABLE [dbo].[prevouchercode] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [openid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [cardid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [prevoucherid] bigint  NOT NULL,
  [branchno] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [useflag] char(1) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [operdate] datetime  NOT NULL,
  [randomcode] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[prevouchercode] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for rechargediscount
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[rechargediscount]') AND type IN ('U'))
	DROP TABLE [dbo].[rechargediscount]
GO

CREATE TABLE [dbo].[rechargediscount] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [branchno] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [money] decimal(18,2)  NOT NULL,
  [sendmoney] decimal(18,2)  NOT NULL,
  [useflag] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [starttime] datetime  NOT NULL,
  [endtime] datetime  NOT NULL,
  [memo] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [operdate] datetime  NULL,
  [name] nvarchar(50) COLLATE Chinese_PRC_CI_AS DEFAULT (N'充值优惠') NULL,
  [rechargevoucherid] varchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [isrepeatedly] bit DEFAULT ((0)) NOT NULL
)
GO

ALTER TABLE [dbo].[rechargediscount] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'充值送券ID',
'SCHEMA', N'dbo',
'TABLE', N'rechargediscount',
'COLUMN', N'rechargevoucherid'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否多次赠送',
'SCHEMA', N'dbo',
'TABLE', N'rechargediscount',
'COLUMN', N'isrepeatedly'
GO


-- ----------------------------
-- Table structure for saomacode
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[saomacode]') AND type IN ('U'))
	DROP TABLE [dbo].[saomacode]
GO

CREATE TABLE [dbo].[saomacode] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [openid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [operdate] datetime  NULL,
  [randomcode] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[saomacode] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for shop_activity_set
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[shop_activity_set]') AND type IN ('U'))
	DROP TABLE [dbo].[shop_activity_set]
GO

CREATE TABLE [dbo].[shop_activity_set] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [activity_type] int  NOT NULL,
  [is_show] int  NOT NULL,
  [show_order] int DEFAULT ((1)) NULL,
  [img_url] varchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [add_date] datetime  NOT NULL,
  [title] varchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [position] int  NULL,
  [linktype] int  NULL,
  [linkvalue] varchar(300) COLLATE Chinese_PRC_CI_AS  NULL,
  [is_title_show] int  NULL,
  [is_default_set] int DEFAULT ((1)) NULL,
  [itemtype] char(1) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[shop_activity_set] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'商户ID',
'SCHEMA', N'dbo',
'TABLE', N'shop_activity_set',
'COLUMN', N'shopid'
GO

EXEC sp_addextendedproperty
'MS_Description', N'活动类别（会员领券=1，会员充值=2，幸运转盘=3，签到有礼=4）',
'SCHEMA', N'dbo',
'TABLE', N'shop_activity_set',
'COLUMN', N'activity_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否显示',
'SCHEMA', N'dbo',
'TABLE', N'shop_activity_set',
'COLUMN', N'is_show'
GO

EXEC sp_addextendedproperty
'MS_Description', N'显示排序（越小越靠前）',
'SCHEMA', N'dbo',
'TABLE', N'shop_activity_set',
'COLUMN', N'show_order'
GO

EXEC sp_addextendedproperty
'MS_Description', N'活动图片地址',
'SCHEMA', N'dbo',
'TABLE', N'shop_activity_set',
'COLUMN', N'img_url'
GO

EXEC sp_addextendedproperty
'MS_Description', N'添加时间',
'SCHEMA', N'dbo',
'TABLE', N'shop_activity_set',
'COLUMN', N'add_date'
GO

EXEC sp_addextendedproperty
'MS_Description', N'模块名称',
'SCHEMA', N'dbo',
'TABLE', N'shop_activity_set',
'COLUMN', N'title'
GO

EXEC sp_addextendedproperty
'MS_Description', N'方位',
'SCHEMA', N'dbo',
'TABLE', N'shop_activity_set',
'COLUMN', N'position'
GO

EXEC sp_addextendedproperty
'MS_Description', N'链接类别（1-自定义；2-商品；3-类别）',
'SCHEMA', N'dbo',
'TABLE', N'shop_activity_set',
'COLUMN', N'linktype'
GO

EXEC sp_addextendedproperty
'MS_Description', N'链接内容',
'SCHEMA', N'dbo',
'TABLE', N'shop_activity_set',
'COLUMN', N'linkvalue'
GO

EXEC sp_addextendedproperty
'MS_Description', N'标题是否显示(1-显示；2-隐藏)',
'SCHEMA', N'dbo',
'TABLE', N'shop_activity_set',
'COLUMN', N'is_title_show'
GO

EXEC sp_addextendedproperty
'MS_Description', N'商品类别类型(1-大类；2-小类)',
'SCHEMA', N'dbo',
'TABLE', N'shop_activity_set',
'COLUMN', N'itemtype'
GO

EXEC sp_addextendedproperty
'MS_Description', N'商户营销中心活动设置',
'SCHEMA', N'dbo',
'TABLE', N'shop_activity_set'
GO


-- ----------------------------
-- Table structure for shop_case_info
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[shop_case_info]') AND type IN ('U'))
	DROP TABLE [dbo].[shop_case_info]
GO

CREATE TABLE [dbo].[shop_case_info] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [casename] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [is_show] int  NOT NULL,
  [show_order] int DEFAULT ((0)) NULL,
  [add_date] datetime  NOT NULL,
  [show_type] int DEFAULT ((1)) NULL,
  [item_default_num] int  NULL
)
GO

ALTER TABLE [dbo].[shop_case_info] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'门店ID',
'SCHEMA', N'dbo',
'TABLE', N'shop_case_info',
'COLUMN', N'shopid'
GO

EXEC sp_addextendedproperty
'MS_Description', N'橱窗位名称',
'SCHEMA', N'dbo',
'TABLE', N'shop_case_info',
'COLUMN', N'casename'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否显示（1显示；2隐藏）',
'SCHEMA', N'dbo',
'TABLE', N'shop_case_info',
'COLUMN', N'is_show'
GO

EXEC sp_addextendedproperty
'MS_Description', N'橱窗排序（越小越靠前显示）',
'SCHEMA', N'dbo',
'TABLE', N'shop_case_info',
'COLUMN', N'show_order'
GO

EXEC sp_addextendedproperty
'MS_Description', N'添加日期',
'SCHEMA', N'dbo',
'TABLE', N'shop_case_info',
'COLUMN', N'add_date'
GO

EXEC sp_addextendedproperty
'MS_Description', N'商铺商品显示方式（1=小图，2=大图，3=一大两小,4=列表）',
'SCHEMA', N'dbo',
'TABLE', N'shop_case_info',
'COLUMN', N'show_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'橱窗位默认显示商品数量',
'SCHEMA', N'dbo',
'TABLE', N'shop_case_info',
'COLUMN', N'item_default_num'
GO

EXEC sp_addextendedproperty
'MS_Description', N'商户橱窗位设置',
'SCHEMA', N'dbo',
'TABLE', N'shop_case_info'
GO


-- ----------------------------
-- Table structure for shop_case_product
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[shop_case_product]') AND type IN ('U'))
	DROP TABLE [dbo].[shop_case_product]
GO

CREATE TABLE [dbo].[shop_case_product] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [productct_id] bigint  NOT NULL,
  [shop_case_id] bigint  NOT NULL,
  [is_show] int DEFAULT ((2)) NOT NULL,
  [add_date] datetime  NOT NULL,
  [show_order] int DEFAULT ((0)) NULL,
  [itemname] varchar(1000) COLLATE Chinese_PRC_CI_AS  NULL,
  [itemno] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[shop_case_product] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'商户ID',
'SCHEMA', N'dbo',
'TABLE', N'shop_case_product',
'COLUMN', N'shopid'
GO

EXEC sp_addextendedproperty
'MS_Description', N'产品ID',
'SCHEMA', N'dbo',
'TABLE', N'shop_case_product',
'COLUMN', N'productct_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'橱窗位ID',
'SCHEMA', N'dbo',
'TABLE', N'shop_case_product',
'COLUMN', N'shop_case_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否显示（1显示；2隐藏）',
'SCHEMA', N'dbo',
'TABLE', N'shop_case_product',
'COLUMN', N'is_show'
GO

EXEC sp_addextendedproperty
'MS_Description', N'显示排序(排序越小越靠前)',
'SCHEMA', N'dbo',
'TABLE', N'shop_case_product',
'COLUMN', N'show_order'
GO

EXEC sp_addextendedproperty
'MS_Description', N'橱窗位产品信息表',
'SCHEMA', N'dbo',
'TABLE', N'shop_case_product'
GO


-- ----------------------------
-- Table structure for SissMember
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SissMember]') AND type IN ('U'))
	DROP TABLE [dbo].[SissMember]
GO

CREATE TABLE [dbo].[SissMember] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [UserName] varchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [PassWord] varchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [PhoneNo] varchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [Email] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [Shopid] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [operdate] datetime  NULL,
  [TianDianId] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[SissMember] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for sisspaynotifybody
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sisspaynotifybody]') AND type IN ('U'))
	DROP TABLE [dbo].[sisspaynotifybody]
GO

CREATE TABLE [dbo].[sisspaynotifybody] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [openid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [cardid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [out_trade_no] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [trade_no] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [third_trade_no] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [total_amount] decimal(18,2)  NOT NULL,
  [trade_time] datetime  NOT NULL,
  [pay_result] varchar(250) COLLATE Chinese_PRC_CI_AS  NULL,
  [receive_time] datetime  NOT NULL,
  [remark] varchar(500) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[sisspaynotifybody] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for sisspayresult
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sisspayresult]') AND type IN ('U'))
	DROP TABLE [dbo].[sisspayresult]
GO

CREATE TABLE [dbo].[sisspayresult] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [version] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [charset] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [sign_type] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [status] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [message] varchar(250) COLLATE Chinese_PRC_CI_AS  NULL,
  [result_code] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [mch_id] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [device_info] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [nonce_str] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [err_code] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [err_msg] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [sign] varchar(250) COLLATE Chinese_PRC_CI_AS  NULL,
  [openid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [trade_type] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [is_subscribe] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [pay_result] int  NOT NULL,
  [pay_info] varchar(250) COLLATE Chinese_PRC_CI_AS  NULL,
  [transaction_id] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [out_transaction_id] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [sub_is_subscribe] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [sub_appid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [sub_openid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [out_trade_no] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [total_fee] int  NOT NULL,
  [coupon_fee] int  NOT NULL,
  [fee_type] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [attach] varchar(250) COLLATE Chinese_PRC_CI_AS  NULL,
  [bank_type] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [bank_billno] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [time_end] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[sisspayresult] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for sql20180902
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sql20180902]') AND type IN ('U'))
	DROP TABLE [dbo].[sql20180902]
GO

CREATE TABLE [dbo].[sql20180902] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [Text] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [createdate] datetime DEFAULT (getdate()) NULL
)
GO

ALTER TABLE [dbo].[sql20180902] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for suggestions
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[suggestions]') AND type IN ('U'))
	DROP TABLE [dbo].[suggestions]
GO

CREATE TABLE [dbo].[suggestions] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [openid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [operdate] datetime  NULL,
  [content] nvarchar(1000) COLLATE Chinese_PRC_CI_AS  NULL,
  [type] int  NULL,
  [isreply] int  NULL,
  [isread] int  NULL,
  [replyId] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [customername] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[suggestions] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'类型',
'SCHEMA', N'dbo',
'TABLE', N'suggestions',
'COLUMN', N'type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否已回复',
'SCHEMA', N'dbo',
'TABLE', N'suggestions',
'COLUMN', N'isreply'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否已读',
'SCHEMA', N'dbo',
'TABLE', N'suggestions',
'COLUMN', N'isread'
GO

EXEC sp_addextendedproperty
'MS_Description', N'回复之前的ID',
'SCHEMA', N'dbo',
'TABLE', N'suggestions',
'COLUMN', N'replyId'
GO


-- ----------------------------
-- Table structure for sys_news_article
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_news_article]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_news_article]
GO

CREATE TABLE [dbo].[sys_news_article] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [channelId] bigint  NOT NULL,
  [isOtherLink] bit  NOT NULL,
  [otherLink] nvarchar(600) COLLATE Chinese_PRC_CI_AS  NULL,
  [isAttachmentLink] bit  NOT NULL,
  [attachments] nvarchar(2000) COLLATE Chinese_PRC_CI_AS  NULL,
  [title] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [body] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [usefulCount] int  NOT NULL,
  [viewCount] int  NOT NULL,
  [keyword] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [isTop] bit  NOT NULL,
  [isPub] bit  NOT NULL,
  [pubAt] datetime  NULL,
  [remark] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [createAt] datetime  NOT NULL,
  [updateAt] datetime  NOT NULL
)
GO

ALTER TABLE [dbo].[sys_news_article] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'sys_news_article',
'COLUMN', N'Id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'栏目ID',
'SCHEMA', N'dbo',
'TABLE', N'sys_news_article',
'COLUMN', N'channelId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'栏目显示是否使用跳转到其他链接',
'SCHEMA', N'dbo',
'TABLE', N'sys_news_article',
'COLUMN', N'isOtherLink'
GO

EXEC sp_addextendedproperty
'MS_Description', N'栏目跳转链接',
'SCHEMA', N'dbo',
'TABLE', N'sys_news_article',
'COLUMN', N'otherLink'
GO

EXEC sp_addextendedproperty
'MS_Description', N'栏目显示是否使用跳转到附件下载',
'SCHEMA', N'dbo',
'TABLE', N'sys_news_article',
'COLUMN', N'isAttachmentLink'
GO

EXEC sp_addextendedproperty
'MS_Description', N'附件',
'SCHEMA', N'dbo',
'TABLE', N'sys_news_article',
'COLUMN', N'attachments'
GO

EXEC sp_addextendedproperty
'MS_Description', N'标题',
'SCHEMA', N'dbo',
'TABLE', N'sys_news_article',
'COLUMN', N'title'
GO

EXEC sp_addextendedproperty
'MS_Description', N'内容',
'SCHEMA', N'dbo',
'TABLE', N'sys_news_article',
'COLUMN', N'body'
GO

EXEC sp_addextendedproperty
'MS_Description', N'有用计数',
'SCHEMA', N'dbo',
'TABLE', N'sys_news_article',
'COLUMN', N'usefulCount'
GO

EXEC sp_addextendedproperty
'MS_Description', N'关键词',
'SCHEMA', N'dbo',
'TABLE', N'sys_news_article',
'COLUMN', N'keyword'
GO

EXEC sp_addextendedproperty
'MS_Description', N'置顶',
'SCHEMA', N'dbo',
'TABLE', N'sys_news_article',
'COLUMN', N'isTop'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否发布',
'SCHEMA', N'dbo',
'TABLE', N'sys_news_article',
'COLUMN', N'isPub'
GO

EXEC sp_addextendedproperty
'MS_Description', N'发布时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_news_article',
'COLUMN', N'pubAt'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注',
'SCHEMA', N'dbo',
'TABLE', N'sys_news_article',
'COLUMN', N'remark'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_news_article',
'COLUMN', N'createAt'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_news_article',
'COLUMN', N'updateAt'
GO


-- ----------------------------
-- Table structure for sys_news_attachment
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_news_attachment]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_news_attachment]
GO

CREATE TABLE [dbo].[sys_news_attachment] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [fileName] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [filePath] nvarchar(1000) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [fileExt] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [fileType] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [fileSize] int  NULL,
  [fileLastModifiedDate] datetime  NULL,
  [createAt] datetime  NOT NULL
)
GO

ALTER TABLE [dbo].[sys_news_attachment] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'sys_news_attachment',
'COLUMN', N'Id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'文件名',
'SCHEMA', N'dbo',
'TABLE', N'sys_news_attachment',
'COLUMN', N'fileName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'文件路径',
'SCHEMA', N'dbo',
'TABLE', N'sys_news_attachment',
'COLUMN', N'filePath'
GO

EXEC sp_addextendedproperty
'MS_Description', N'文件扩展名',
'SCHEMA', N'dbo',
'TABLE', N'sys_news_attachment',
'COLUMN', N'fileExt'
GO

EXEC sp_addextendedproperty
'MS_Description', N'流类型',
'SCHEMA', N'dbo',
'TABLE', N'sys_news_attachment',
'COLUMN', N'fileType'
GO

EXEC sp_addextendedproperty
'MS_Description', N'文件大小',
'SCHEMA', N'dbo',
'TABLE', N'sys_news_attachment',
'COLUMN', N'fileSize'
GO

EXEC sp_addextendedproperty
'MS_Description', N'文件最后修改时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_news_attachment',
'COLUMN', N'fileLastModifiedDate'
GO

EXEC sp_addextendedproperty
'MS_Description', N'记录创建时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_news_attachment',
'COLUMN', N'createAt'
GO


-- ----------------------------
-- Table structure for sys_news_channel
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_news_channel]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_news_channel]
GO

CREATE TABLE [dbo].[sys_news_channel] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [parentId] bigint  NULL,
  [name] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [intorder] int  NOT NULL,
  [isHide] bit  NOT NULL,
  [remark] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [createAt] datetime  NOT NULL,
  [updateAt] datetime  NOT NULL
)
GO

ALTER TABLE [dbo].[sys_news_channel] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'sys_news_channel',
'COLUMN', N'Id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'父级栏目',
'SCHEMA', N'dbo',
'TABLE', N'sys_news_channel',
'COLUMN', N'parentId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'栏目名称',
'SCHEMA', N'dbo',
'TABLE', N'sys_news_channel',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'排序',
'SCHEMA', N'dbo',
'TABLE', N'sys_news_channel',
'COLUMN', N'intorder'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否隐藏',
'SCHEMA', N'dbo',
'TABLE', N'sys_news_channel',
'COLUMN', N'isHide'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注',
'SCHEMA', N'dbo',
'TABLE', N'sys_news_channel',
'COLUMN', N'remark'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_news_channel',
'COLUMN', N'createAt'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_news_channel',
'COLUMN', N'updateAt'
GO


-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_notice]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_notice]
GO

CREATE TABLE [dbo].[sys_notice] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [name] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [content] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [operdate] datetime  NULL,
  [update_time] datetime  NULL,
  [state] bit  NULL,
  [titlepic] varchar(155) COLLATE Chinese_PRC_CI_AS  NULL,
  [summary] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[sys_notice] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for SystemConfig
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SystemConfig]') AND type IN ('U'))
	DROP TABLE [dbo].[SystemConfig]
GO

CREATE TABLE [dbo].[SystemConfig] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [domain] varchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [port] int  NULL,
  [security] varchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [active] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [db] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [operdate] datetime  NULL
)
GO

ALTER TABLE [dbo].[SystemConfig] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for SystemVersion
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SystemVersion]') AND type IN ('U'))
	DROP TABLE [dbo].[SystemVersion]
GO

CREATE TABLE [dbo].[SystemVersion] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [Version] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[SystemVersion] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for t_accbuy
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_accbuy]') AND type IN ('U'))
	DROP TABLE [dbo].[t_accbuy]
GO

CREATE TABLE [dbo].[t_accbuy] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [branch_no] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [name] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [start_time] datetime  NULL,
  [end_time] datetime  NULL,
  [show_type] char(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_time] datetime  NULL,
  [is_limit] bit  NULL,
  [limit_num] int  NULL,
  [enabled] bit  NULL
)
GO

ALTER TABLE [dbo].[t_accbuy] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for t_accbuy_log
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_accbuy_log]') AND type IN ('U'))
	DROP TABLE [dbo].[t_accbuy_log]
GO

CREATE TABLE [dbo].[t_accbuy_log] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [cardid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [accbuyid] bigint  NULL,
  [productid] bigint  NULL,
  [num] int  NULL,
  [accnum] numeric(9)  NULL,
  [payamount] numeric(9,4)  NULL
)
GO

ALTER TABLE [dbo].[t_accbuy_log] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for t_accbuy_num
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_accbuy_num]') AND type IN ('U'))
	DROP TABLE [dbo].[t_accbuy_num]
GO

CREATE TABLE [dbo].[t_accbuy_num] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [openid] varchar(150) COLLATE Chinese_PRC_CI_AS  NULL,
  [accbuyid] bigint  NULL,
  [productid] bigint  NULL,
  [num] int  NULL
)
GO

ALTER TABLE [dbo].[t_accbuy_num] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for t_accbuy_product
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_accbuy_product]') AND type IN ('U'))
	DROP TABLE [dbo].[t_accbuy_product]
GO

CREATE TABLE [dbo].[t_accbuy_product] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [branchno] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [accbuyid] bigint  NULL,
  [productid] bigint  NULL,
  [accnum] numeric(9)  NULL,
  [payamount] numeric(9,4)  NULL
)
GO

ALTER TABLE [dbo].[t_accbuy_product] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for t_accesstoken
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_accesstoken]') AND type IN ('U'))
	DROP TABLE [dbo].[t_accesstoken]
GO

CREATE TABLE [dbo].[t_accesstoken] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [appid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [accesstoken] varchar(512) COLLATE Chinese_PRC_CI_AS  NULL,
  [expiresin] int  NULL,
  [updatetime] datetime  NULL,
  [validity] smallint DEFAULT ((1)) NULL
)
GO

ALTER TABLE [dbo].[t_accesstoken] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for t_ad
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_ad]') AND type IN ('U'))
	DROP TABLE [dbo].[t_ad]
GO

CREATE TABLE [dbo].[t_ad] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [ad_no] nchar(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [ad_name] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [ad_level] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [ad_plevel] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[t_ad] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for t_adults
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_adults]') AND type IN ('U'))
	DROP TABLE [dbo].[t_adults]
GO

CREATE TABLE [dbo].[t_adults] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [openid] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [adultscontent] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [orderno] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [operdate] datetime  NULL,
  [operman] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [doflag] char(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [opertel] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [itemno] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [score] smallint  NULL,
  [isreply] char(1) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[t_adults] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'商品id，如果不为空，表示该评价针对于商品',
'SCHEMA', N'dbo',
'TABLE', N't_adults',
'COLUMN', N'itemno'
GO


-- ----------------------------
-- Table structure for t_adults_reply
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_adults_reply]') AND type IN ('U'))
	DROP TABLE [dbo].[t_adults_reply]
GO

CREATE TABLE [dbo].[t_adults_reply] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [openid] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [replycontent] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [operdate] datetime  NULL,
  [adults_id] bigint  NULL,
  [isread] char(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [itemno] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[t_adults_reply] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for t_alarm
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_alarm]') AND type IN ('U'))
	DROP TABLE [dbo].[t_alarm]
GO

CREATE TABLE [dbo].[t_alarm] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [appid] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [openid] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [orderno] bigint  NULL,
  [ErrorType] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [Description] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [AlarmContent] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [operdate] datetime  NULL
)
GO

ALTER TABLE [dbo].[t_alarm] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for t_alipay_code_version
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_alipay_code_version]') AND type IN ('U'))
	DROP TABLE [dbo].[t_alipay_code_version]
GO

CREATE TABLE [dbo].[t_alipay_code_version] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [auth_app_id] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [template_version] varchar(20) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [ext] varchar(1000) COLLATE Chinese_PRC_CI_AS  NULL,
  [template_id] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [app_version] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [submit_date] datetime  NOT NULL,
  [submit_sussess] bit  NOT NULL,
  [last_submit_date] datetime  NULL,
  [submit_message] varchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [BuildStatus] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [CreateStatus] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [NeedRotation] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [VersionCreated] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [experience_version] bit  NULL,
  [experience_message] varchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [experience_qrcode] varchar(300) COLLATE Chinese_PRC_CI_AS  NULL,
  [experience_status] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [experience_qrcode_message] varchar(300) COLLATE Chinese_PRC_CI_AS  NULL,
  [code_review] bit  NULL,
  [code_review_message] varchar(300) COLLATE Chinese_PRC_CI_AS  NULL,
  [code_review_date] datetime  NULL,
  [code_review_parameter] varchar(1000) COLLATE Chinese_PRC_CI_AS  NULL,
  [online] bit  NULL,
  [online_message] varchar(1000) COLLATE Chinese_PRC_CI_AS  NULL,
  [online_date] datetime  NULL
)
GO

ALTER TABLE [dbo].[t_alipay_code_version] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'模板版本号，版本号必须满足 x.y.z, 且均为数字',
'SCHEMA', N'dbo',
'TABLE', N't_alipay_code_version',
'COLUMN', N'template_version'
GO

EXEC sp_addextendedproperty
'MS_Description', N'小程序版本号，版本号必须满足 x.y.z, 且均为数字	',
'SCHEMA', N'dbo',
'TABLE', N't_alipay_code_version',
'COLUMN', N'template_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'小程序版本号，版本号必须满足 x.y.z, 且均为数字	',
'SCHEMA', N'dbo',
'TABLE', N't_alipay_code_version',
'COLUMN', N'app_version'
GO

EXEC sp_addextendedproperty
'MS_Description', N'构建的状态，0-构建排队中；1-正在构建；2-构建成功；3-构建失败；5-构建超时',
'SCHEMA', N'dbo',
'TABLE', N't_alipay_code_version',
'COLUMN', N'BuildStatus'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建版本的状态，0-构建排队中；1-正在构建；2-构建成功；3-构建失败；5-构建超时；6-版本创建成功',
'SCHEMA', N'dbo',
'TABLE', N't_alipay_code_version',
'COLUMN', N'CreateStatus'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否需要轮询',
'SCHEMA', N'dbo',
'TABLE', N't_alipay_code_version',
'COLUMN', N'NeedRotation'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否创建了版本',
'SCHEMA', N'dbo',
'TABLE', N't_alipay_code_version',
'COLUMN', N'VersionCreated'
GO

EXEC sp_addextendedproperty
'MS_Description', N'支付宝小程序版本记录',
'SCHEMA', N'dbo',
'TABLE', N't_alipay_code_version'
GO


-- ----------------------------
-- Table structure for t_alipay_flow
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_alipay_flow]') AND type IN ('U'))
	DROP TABLE [dbo].[t_alipay_flow]
GO

CREATE TABLE [dbo].[t_alipay_flow] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [orderno] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [tradeno] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [userid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [create_tradeno_time] datetime  NULL,
  [paystatus] bit  NOT NULL,
  [update_paystatus_time] datetime  NULL,
  [buyer_logon_id] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [trade_status] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [buyer_user_id] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [total_amount] decimal(18)  NULL,
  [buyer_pay_amount] varchar(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [discount_amount] varchar(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [discount_goods_detail] varchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [mdiscount_amount] varchar(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [point_amount] varchar(10) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[t_alipay_flow] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'支付宝的交易号',
'SCHEMA', N'dbo',
'TABLE', N't_alipay_flow',
'COLUMN', N'tradeno'
GO

EXEC sp_addextendedproperty
'MS_Description', N'支付宝用户ID',
'SCHEMA', N'dbo',
'TABLE', N't_alipay_flow',
'COLUMN', N'userid'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建交易号的时间',
'SCHEMA', N'dbo',
'TABLE', N't_alipay_flow',
'COLUMN', N'create_tradeno_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'支付状态',
'SCHEMA', N'dbo',
'TABLE', N't_alipay_flow',
'COLUMN', N'paystatus'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新支付状态的时间',
'SCHEMA', N'dbo',
'TABLE', N't_alipay_flow',
'COLUMN', N'update_paystatus_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用于记录支付宝支付流水',
'SCHEMA', N'dbo',
'TABLE', N't_alipay_flow'
GO


-- ----------------------------
-- Table structure for t_alipay_set
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_alipay_set]') AND type IN ('U'))
	DROP TABLE [dbo].[t_alipay_set]
GO

CREATE TABLE [dbo].[t_alipay_set] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [auth_app_id] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [app_auth_code] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [app_auth_token] varchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [app_refresh_token] varchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [firstdate] datetime  NULL,
  [lastdate] datetime  NULL,
  [expires_in] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [re_expires_in] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [userid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [expires_in_date] datetime  NULL,
  [re_expires_in_date] datetime  NULL,
  [appid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [app_name] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [app_english_name] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [app_category_ids] varchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [app_slogan] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [service_phone] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [service_email] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [app_logo] varchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [app_desc] varchar(250) COLLATE Chinese_PRC_CI_AS  NULL,
  [app_create_date] datetime  NULL,
  [app_update_date] datetime  NULL,
  [batch_no] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [app_create_status] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [account] varchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [contact_name] varchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [contact_mobile] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [contact_email] varchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [order_ticket] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [batch_status] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[t_alipay_set] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'授权方应用ID',
'SCHEMA', N'dbo',
'TABLE', N't_alipay_set',
'COLUMN', N'auth_app_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'令牌信息',
'SCHEMA', N'dbo',
'TABLE', N't_alipay_set',
'COLUMN', N'app_auth_token'
GO

EXEC sp_addextendedproperty
'MS_Description', N'刷新令牌',
'SCHEMA', N'dbo',
'TABLE', N't_alipay_set',
'COLUMN', N'app_refresh_token'
GO

EXEC sp_addextendedproperty
'MS_Description', N'首次插入时间',
'SCHEMA', N'dbo',
'TABLE', N't_alipay_set',
'COLUMN', N'firstdate'
GO

EXEC sp_addextendedproperty
'MS_Description', N'最后一次更新时间',
'SCHEMA', N'dbo',
'TABLE', N't_alipay_set',
'COLUMN', N'lastdate'
GO

EXEC sp_addextendedproperty
'MS_Description', N'令牌有效期',
'SCHEMA', N'dbo',
'TABLE', N't_alipay_set',
'COLUMN', N'expires_in'
GO

EXEC sp_addextendedproperty
'MS_Description', N'令牌过期时间',
'SCHEMA', N'dbo',
'TABLE', N't_alipay_set',
'COLUMN', N'expires_in_date'
GO

EXEC sp_addextendedproperty
'MS_Description', N'刷新令牌过期时间',
'SCHEMA', N'dbo',
'TABLE', N't_alipay_set',
'COLUMN', N're_expires_in_date'
GO

EXEC sp_addextendedproperty
'MS_Description', N'代商家创建的小程序应用名称',
'SCHEMA', N'dbo',
'TABLE', N't_alipay_set',
'COLUMN', N'app_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'小程序英文名称',
'SCHEMA', N'dbo',
'TABLE', N't_alipay_set',
'COLUMN', N'app_english_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'小程序应用类目',
'SCHEMA', N'dbo',
'TABLE', N't_alipay_set',
'COLUMN', N'app_category_ids'
GO

EXEC sp_addextendedproperty
'MS_Description', N'小程序的简介',
'SCHEMA', N'dbo',
'TABLE', N't_alipay_set',
'COLUMN', N'app_slogan'
GO

EXEC sp_addextendedproperty
'MS_Description', N'商家小程序的客服电话',
'SCHEMA', N'dbo',
'TABLE', N't_alipay_set',
'COLUMN', N'service_phone'
GO

EXEC sp_addextendedproperty
'MS_Description', N'商家小程序客服邮箱',
'SCHEMA', N'dbo',
'TABLE', N't_alipay_set',
'COLUMN', N'service_email'
GO

EXEC sp_addextendedproperty
'MS_Description', N'商家小程序描述信息',
'SCHEMA', N'dbo',
'TABLE', N't_alipay_set',
'COLUMN', N'app_desc'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建小程序时间',
'SCHEMA', N'dbo',
'TABLE', N't_alipay_set',
'COLUMN', N'app_create_date'
GO

EXEC sp_addextendedproperty
'MS_Description', N'小程序更新时间',
'SCHEMA', N'dbo',
'TABLE', N't_alipay_set',
'COLUMN', N'app_update_date'
GO

EXEC sp_addextendedproperty
'MS_Description', N'ISV 代商家操作事务编号',
'SCHEMA', N'dbo',
'TABLE', N't_alipay_set',
'COLUMN', N'batch_no'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建小程序状态  0未提交  1提交成功  2提交失败',
'SCHEMA', N'dbo',
'TABLE', N't_alipay_set',
'COLUMN', N'app_create_status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'商户账号',
'SCHEMA', N'dbo',
'TABLE', N't_alipay_set',
'COLUMN', N'account'
GO

EXEC sp_addextendedproperty
'MS_Description', N'联系人名称',
'SCHEMA', N'dbo',
'TABLE', N't_alipay_set',
'COLUMN', N'contact_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'联系人手机号码',
'SCHEMA', N'dbo',
'TABLE', N't_alipay_set',
'COLUMN', N'contact_mobile'
GO

EXEC sp_addextendedproperty
'MS_Description', N'订单授权凭证，填写都则对应事务提交进入预授权模式',
'SCHEMA', N'dbo',
'TABLE', N't_alipay_set',
'COLUMN', N'order_ticket'
GO

EXEC sp_addextendedproperty
'MS_Description', N'ISV 代商户操作事务状态，事务状态包括： 
init=初始状态，本接口alipay.open.agent.create返回 init 状态，只有init状态允许进行各种业务接口调用； 
submit=提交状态，事务已经到达终态，调用alipay.open.agent.confirm接口可以提交init状态的事务 
cancel=取消状态，事务已经到达终态，调用alipay.open.agent.cancel接口可以取消init状态的事务 
timeout=超时状态，事务已经到达终态，init状态的事务，在【1个小时】后会自动超时 
注意：只有 init 状态才允许进行接口调用，其它状态都是终态，不允许继续进行接口调用。',
'SCHEMA', N'dbo',
'TABLE', N't_alipay_set',
'COLUMN', N'batch_status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'支付宝授权信息',
'SCHEMA', N'dbo',
'TABLE', N't_alipay_set'
GO


-- ----------------------------
-- Table structure for t_alipay_user
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_alipay_user]') AND type IN ('U'))
	DROP TABLE [dbo].[t_alipay_user]
GO

CREATE TABLE [dbo].[t_alipay_user] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [shopid] varchar(25) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [user_id] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [access_token] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [expires_in] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [refresh_token] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [re_expires_in] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [firstdate] datetime  NULL,
  [lastdate] datetime  NULL,
  [expires_in_date] datetime  NULL,
  [re_expires_in_date] datetime  NULL,
  [auth_appid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [appid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [cardid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [continuescan] bit DEFAULT ((0)) NULL,
  [phone] varchar(25) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[t_alipay_user] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'支付宝用户的唯一userId',
'SCHEMA', N'dbo',
'TABLE', N't_alipay_user',
'COLUMN', N'user_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'访问令牌。通过该令牌调用需要授权类接口',
'SCHEMA', N'dbo',
'TABLE', N't_alipay_user',
'COLUMN', N'access_token'
GO

EXEC sp_addextendedproperty
'MS_Description', N'访问令牌的有效时间，单位是秒。',
'SCHEMA', N'dbo',
'TABLE', N't_alipay_user',
'COLUMN', N'expires_in'
GO

EXEC sp_addextendedproperty
'MS_Description', N'刷新令牌。通过该令牌可以刷新access_token',
'SCHEMA', N'dbo',
'TABLE', N't_alipay_user',
'COLUMN', N'refresh_token'
GO

EXEC sp_addextendedproperty
'MS_Description', N'刷新令牌的有效时间，单位是秒。',
'SCHEMA', N'dbo',
'TABLE', N't_alipay_user',
'COLUMN', N're_expires_in'
GO

EXEC sp_addextendedproperty
'MS_Description', N'第一次插入时间',
'SCHEMA', N'dbo',
'TABLE', N't_alipay_user',
'COLUMN', N'firstdate'
GO

EXEC sp_addextendedproperty
'MS_Description', N'最新更新时间',
'SCHEMA', N'dbo',
'TABLE', N't_alipay_user',
'COLUMN', N'lastdate'
GO

EXEC sp_addextendedproperty
'MS_Description', N'访问令牌过期时间',
'SCHEMA', N'dbo',
'TABLE', N't_alipay_user',
'COLUMN', N'expires_in_date'
GO

EXEC sp_addextendedproperty
'MS_Description', N'刷新令牌过期时间',
'SCHEMA', N'dbo',
'TABLE', N't_alipay_user',
'COLUMN', N're_expires_in_date'
GO

EXEC sp_addextendedproperty
'MS_Description', N'授权应用的APPID',
'SCHEMA', N'dbo',
'TABLE', N't_alipay_user',
'COLUMN', N'auth_appid'
GO

EXEC sp_addextendedproperty
'MS_Description', N'ISV的APPID',
'SCHEMA', N'dbo',
'TABLE', N't_alipay_user',
'COLUMN', N'appid'
GO

EXEC sp_addextendedproperty
'MS_Description', N'支付宝会员信息表',
'SCHEMA', N'dbo',
'TABLE', N't_alipay_user'
GO


-- ----------------------------
-- Table structure for t_award_batch
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_award_batch]') AND type IN ('U'))
	DROP TABLE [dbo].[t_award_batch]
GO

CREATE TABLE [dbo].[t_award_batch] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [awardinfoid] bigint  NULL,
  [award_name] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [prize_name] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [amount] int  NULL,
  [consume] int  NULL,
  [award_type] char(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [angle_value] int  NULL,
  [create_date] datetime  NULL,
  [intorder] int DEFAULT ((50)) NULL,
  [show_amount] int  NULL
)
GO

ALTER TABLE [dbo].[t_award_batch] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'抽奖活动关联ID',
'SCHEMA', N'dbo',
'TABLE', N't_award_batch',
'COLUMN', N'awardinfoid'
GO

EXEC sp_addextendedproperty
'MS_Description', N'奖项',
'SCHEMA', N'dbo',
'TABLE', N't_award_batch',
'COLUMN', N'award_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'奖品',
'SCHEMA', N'dbo',
'TABLE', N't_award_batch',
'COLUMN', N'prize_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数量',
'SCHEMA', N'dbo',
'TABLE', N't_award_batch',
'COLUMN', N'amount'
GO

EXEC sp_addextendedproperty
'MS_Description', N'角度值',
'SCHEMA', N'dbo',
'TABLE', N't_award_batch',
'COLUMN', N'angle_value'
GO


-- ----------------------------
-- Table structure for t_award_info
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_award_info]') AND type IN ('U'))
	DROP TABLE [dbo].[t_award_info]
GO

CREATE TABLE [dbo].[t_award_info] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [award_type] char(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [activity_name] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [description] nvarchar(250) COLLATE Chinese_PRC_CI_AS  NULL,
  [begin_date] datetime  NULL,
  [end_date] datetime  NULL,
  [person_num] int  NULL,
  [max_time] int DEFAULT ((1)) NULL,
  [time_type] int DEFAULT ((1)) NULL,
  [finished_person_num] int  NULL,
  [is_current] bit DEFAULT ((0)) NULL,
  [is_continue] bit  NULL,
  [is_open_score] bit  NULL,
  [score] numeric(18,2)  NULL,
  [is_open_scoreonly] bit  NULL,
  [batch_update_time] datetime  NULL,
  [typeflag] int  NULL,
  [isopendealtype] bit  NULL,
  [dealtype] varchar(10) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[t_award_info] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'抽奖类型：1-大转盘，2-刮刮乐',
'SCHEMA', N'dbo',
'TABLE', N't_award_info',
'COLUMN', N'award_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'抽奖活动名称',
'SCHEMA', N'dbo',
'TABLE', N't_award_info',
'COLUMN', N'activity_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'活动描述',
'SCHEMA', N'dbo',
'TABLE', N't_award_info',
'COLUMN', N'description'
GO

EXEC sp_addextendedproperty
'MS_Description', N'开始日期',
'SCHEMA', N'dbo',
'TABLE', N't_award_info',
'COLUMN', N'begin_date'
GO

EXEC sp_addextendedproperty
'MS_Description', N'结束日期',
'SCHEMA', N'dbo',
'TABLE', N't_award_info',
'COLUMN', N'end_date'
GO

EXEC sp_addextendedproperty
'MS_Description', N'预计参加最大人数',
'SCHEMA', N'dbo',
'TABLE', N't_award_info',
'COLUMN', N'person_num'
GO

EXEC sp_addextendedproperty
'MS_Description', N'1=每人，2=每天',
'SCHEMA', N'dbo',
'TABLE', N't_award_info',
'COLUMN', N'time_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'已经参加人数',
'SCHEMA', N'dbo',
'TABLE', N't_award_info',
'COLUMN', N'finished_person_num'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否当前',
'SCHEMA', N'dbo',
'TABLE', N't_award_info',
'COLUMN', N'is_current'
GO


-- ----------------------------
-- Table structure for t_award_log
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_award_log]') AND type IN ('U'))
	DROP TABLE [dbo].[t_award_log]
GO

CREATE TABLE [dbo].[t_award_log] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [awardinfoid] bigint  NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [openid] varchar(150) COLLATE Chinese_PRC_CI_AS  NULL,
  [username] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_date] datetime  NULL,
  [memo] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[t_award_log] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for t_award_product
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_award_product]') AND type IN ('U'))
	DROP TABLE [dbo].[t_award_product]
GO

CREATE TABLE [dbo].[t_award_product] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [item_no] varchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [awardorder_id] bigint  NOT NULL
)
GO

ALTER TABLE [dbo].[t_award_product] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for t_award_score
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_award_score]') AND type IN ('U'))
	DROP TABLE [dbo].[t_award_score]
GO

CREATE TABLE [dbo].[t_award_score] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [awardinfoid] bigint  NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [openid] varchar(150) COLLATE Chinese_PRC_CI_AS  NULL,
  [username] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_date] datetime  NULL,
  [score] numeric(18,2) DEFAULT ((0)) NULL,
  [is_used] bit DEFAULT ((0)) NULL,
  [used_date] datetime  NULL,
  [orderno] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[t_award_score] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'ID',
'SCHEMA', N'dbo',
'TABLE', N't_award_score',
'COLUMN', N'Id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'活动ID',
'SCHEMA', N'dbo',
'TABLE', N't_award_score',
'COLUMN', N'awardinfoid'
GO

EXEC sp_addextendedproperty
'MS_Description', N'商户ID',
'SCHEMA', N'dbo',
'TABLE', N't_award_score',
'COLUMN', N'shopid'
GO

EXEC sp_addextendedproperty
'MS_Description', N'微信OpenId',
'SCHEMA', N'dbo',
'TABLE', N't_award_score',
'COLUMN', N'openid'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户名',
'SCHEMA', N'dbo',
'TABLE', N't_award_score',
'COLUMN', N'username'
GO

EXEC sp_addextendedproperty
'MS_Description', N'积分扣除时间',
'SCHEMA', N'dbo',
'TABLE', N't_award_score',
'COLUMN', N'create_date'
GO

EXEC sp_addextendedproperty
'MS_Description', N'积分数量',
'SCHEMA', N'dbo',
'TABLE', N't_award_score',
'COLUMN', N'score'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否已经使用',
'SCHEMA', N'dbo',
'TABLE', N't_award_score',
'COLUMN', N'is_used'
GO

EXEC sp_addextendedproperty
'MS_Description', N'积分使用时间',
'SCHEMA', N'dbo',
'TABLE', N't_award_score',
'COLUMN', N'used_date'
GO

EXEC sp_addextendedproperty
'MS_Description', N'流水号',
'SCHEMA', N'dbo',
'TABLE', N't_award_score',
'COLUMN', N'orderno'
GO


-- ----------------------------
-- Table structure for t_award_vipnum
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_award_vipnum]') AND type IN ('U'))
	DROP TABLE [dbo].[t_award_vipnum]
GO

CREATE TABLE [dbo].[t_award_vipnum] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [openid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [awardid] bigint  NOT NULL,
  [award_num] int  NOT NULL,
  [awardorderid] bigint  NOT NULL,
  [oper_date] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[t_award_vipnum] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for t_award_winuser
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_award_winuser]') AND type IN ('U'))
	DROP TABLE [dbo].[t_award_winuser]
GO

CREATE TABLE [dbo].[t_award_winuser] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [awardinfoid] bigint  NULL,
  [awardbatchid] bigint  NULL,
  [orderno] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [openid] varchar(150) COLLATE Chinese_PRC_CI_AS  NULL,
  [win_award_type] char(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [win_award_name] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [win_award_prize] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [win_prize_detail] varchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [user_name] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [user_mobile] varchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [lucky_number] int  NULL,
  [is_expiry] bit DEFAULT ((0)) NULL,
  [expiry_date] datetime  NULL,
  [create_date] datetime  NULL,
  [user_name1] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [phone] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [name] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [branchno] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [address] varchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [dealtype] varchar(10) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[t_award_winuser] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'中几等奖',
'SCHEMA', N'dbo',
'TABLE', N't_award_winuser',
'COLUMN', N'win_award_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否兑奖',
'SCHEMA', N'dbo',
'TABLE', N't_award_winuser',
'COLUMN', N'is_expiry'
GO


-- ----------------------------
-- Table structure for t_awardbyorder
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_awardbyorder]') AND type IN ('U'))
	DROP TABLE [dbo].[t_awardbyorder]
GO

CREATE TABLE [dbo].[t_awardbyorder] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [award_name] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [typeflag] int  NOT NULL,
  [starttime] datetime  NOT NULL,
  [endtime] datetime  NOT NULL,
  [fullmoney] decimal(18,2)  NULL,
  [num] int DEFAULT ((0)) NOT NULL,
  [onlineoroffline] int  NOT NULL,
  [award_id] bigint  NULL,
  [useflag] bit  NULL,
  [fullmoney2] decimal(18,2)  NULL,
  [fullmoney3] decimal(18,2)  NULL,
  [fullmoney4] decimal(18,2)  NULL,
  [fullmoney5] decimal(18,2)  NULL,
  [fullmoney6] decimal(18,2)  NULL,
  [award_id2] bigint DEFAULT ((0)) NULL,
  [award_id3] bigint DEFAULT ((0)) NULL,
  [award_id4] bigint DEFAULT ((0)) NULL,
  [award_id5] bigint DEFAULT ((0)) NULL,
  [award_id6] bigint DEFAULT ((0)) NULL,
  [num2] int DEFAULT ((0)) NOT NULL,
  [num3] int DEFAULT ((0)) NOT NULL,
  [num4] int DEFAULT ((0)) NOT NULL,
  [num5] int DEFAULT ((0)) NOT NULL,
  [num6] int DEFAULT ((0)) NOT NULL
)
GO

ALTER TABLE [dbo].[t_awardbyorder] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for t_branch_info
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_branch_info]') AND type IN ('U'))
	DROP TABLE [dbo].[t_branch_info]
GO

CREATE TABLE [dbo].[t_branch_info] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [branch_no] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [branch_name] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [stop_flag] char(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [single_flag] char(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [branch_address] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [descinfo] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [tel] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [latitude] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [longitude] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [city] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [provice] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [branch_selltype] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [saletime] datetime  NULL,
  [opentime] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [closedtime] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [branchPic] varchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [range] int DEFAULT ((0)) NULL,
  [operatingstatus] bit DEFAULT ((1)) NOT NULL,
  [delivery_time] varchar(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [isorder_overtime] bit DEFAULT ((1)) NOT NULL,
  [area] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [isshow_distribution] bit DEFAULT ((1)) NOT NULL,
  [isshow_dealtime] bit DEFAULT ((1)) NOT NULL,
  [alipay_storeid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[t_branch_info] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'开业时间',
'SCHEMA', N'dbo',
'TABLE', N't_branch_info',
'COLUMN', N'opentime'
GO


-- ----------------------------
-- Table structure for t_branch_item
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_branch_item]') AND type IN ('U'))
	DROP TABLE [dbo].[t_branch_item]
GO

CREATE TABLE [dbo].[t_branch_item] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [productid] bigint  NOT NULL,
  [branch_no] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[t_branch_item] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for t_buylimit
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_buylimit]') AND type IN ('U'))
	DROP TABLE [dbo].[t_buylimit]
GO

CREATE TABLE [dbo].[t_buylimit] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [branch_no] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [name] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [start_time] datetime  NULL,
  [end_time] datetime  NULL,
  [show_type] char(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_time] datetime DEFAULT (getdate()) NULL,
  [is_limit] bit DEFAULT ((0)) NULL,
  [limit_num] int DEFAULT ((1)) NULL,
  [enabled] bit DEFAULT ((0)) NULL
)
GO

ALTER TABLE [dbo].[t_buylimit] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for t_buylimit_num
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_buylimit_num]') AND type IN ('U'))
	DROP TABLE [dbo].[t_buylimit_num]
GO

CREATE TABLE [dbo].[t_buylimit_num] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [openid] varchar(150) COLLATE Chinese_PRC_CI_AS  NULL,
  [buylimitid] bigint DEFAULT ((0)) NULL,
  [productid] bigint DEFAULT ((0)) NULL,
  [num] int DEFAULT ((1)) NULL
)
GO

ALTER TABLE [dbo].[t_buylimit_num] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for t_buylimit_product
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_buylimit_product]') AND type IN ('U'))
	DROP TABLE [dbo].[t_buylimit_product]
GO

CREATE TABLE [dbo].[t_buylimit_product] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [branchno] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [buylimitid] bigint DEFAULT ((0)) NULL,
  [productid] bigint DEFAULT ((0)) NULL,
  [price] decimal(18,2)  NULL,
  [limit_num] int DEFAULT ((1)) NOT NULL
)
GO

ALTER TABLE [dbo].[t_buylimit_product] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for t_card_pay
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_card_pay]') AND type IN ('U'))
	DROP TABLE [dbo].[t_card_pay]
GO

CREATE TABLE [dbo].[t_card_pay] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [openid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [card_id] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [orderno] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [total_amt] numeric(18,4)  NULL,
  [paysate] char(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [operdate] datetime  NULL,
  [status] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [type] smallint  NULL
)
GO

ALTER TABLE [dbo].[t_card_pay] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for t_chargefee
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_chargefee]') AND type IN ('U'))
	DROP TABLE [dbo].[t_chargefee]
GO

CREATE TABLE [dbo].[t_chargefee] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [openid] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [orderno] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [amt] numeric(18,4)  NOT NULL,
  [realamt] numeric(18,4)  NULL,
  [paystatus] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [operdate] datetime  NULL,
  [cardid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [discounttype] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [memo] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [rechargevoucherid] varchar(500) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[t_chargefee] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'充值送券ID',
'SCHEMA', N'dbo',
'TABLE', N't_chargefee',
'COLUMN', N'rechargevoucherid'
GO


-- ----------------------------
-- Table structure for t_chargefee_replicate
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_chargefee_replicate]') AND type IN ('U'))
	DROP TABLE [dbo].[t_chargefee_replicate]
GO

CREATE TABLE [dbo].[t_chargefee_replicate] (
  [province] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [cust_no] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [cust_name] nvarchar(150) COLLATE Chinese_PRC_CI_AS  NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [shopname] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [contacts] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [moble1] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [tel] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [orderno] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [total_amt] numeric(18,4)  NULL,
  [realamt] numeric(18,4)  NULL,
  [operdate] datetime  NULL,
  [cardid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [mobile] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [openid] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[t_chargefee_replicate] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for t_dada_shopinfo
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_dada_shopinfo]') AND type IN ('U'))
	DROP TABLE [dbo].[t_dada_shopinfo]
GO

CREATE TABLE [dbo].[t_dada_shopinfo] (
  [id] bigint  IDENTITY(1,1) NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [dada_shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [password] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [mobile] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [enterprise_name] varchar(110) COLLATE Chinese_PRC_CI_AS  NULL,
  [enterprise_address] varchar(110) COLLATE Chinese_PRC_CI_AS  NULL,
  [city_name] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [contact_name] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [contact_phone] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [email] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[t_dada_shopinfo] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for t_defer_record
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_defer_record]') AND type IN ('U'))
	DROP TABLE [dbo].[t_defer_record]
GO

CREATE TABLE [dbo].[t_defer_record] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [oper_date] datetime  NOT NULL,
  [defer_end_date] datetime  NOT NULL,
  [ispay] bit DEFAULT ((0)) NOT NULL,
  [pay_amt] numeric(18,4) DEFAULT ((0)) NOT NULL,
  [sale_no] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [oper_id] nvarchar(40) COLLATE Chinese_PRC_CI_AS  NULL,
  [defer_type] int DEFAULT ((2)) NOT NULL,
  [defer_oper_type] int DEFAULT ((1)) NOT NULL
)
GO

ALTER TABLE [dbo].[t_defer_record] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'试用延期=1、首次付费=2、续费=3',
'SCHEMA', N'dbo',
'TABLE', N't_defer_record',
'COLUMN', N'defer_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'延期类型  1-微商店 2-小程序',
'SCHEMA', N'dbo',
'TABLE', N't_defer_record',
'COLUMN', N'defer_oper_type'
GO


-- ----------------------------
-- Table structure for t_even_promote
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_even_promote]') AND type IN ('U'))
	DROP TABLE [dbo].[t_even_promote]
GO

CREATE TABLE [dbo].[t_even_promote] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [branch_no] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [item_no] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [every] int  NOT NULL,
  [discount] decimal(18,2)  NOT NULL,
  [useflag] char(1) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [operdate] datetime  NOT NULL
)
GO

ALTER TABLE [dbo].[t_even_promote] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for t_fans_spread
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_fans_spread]') AND type IN ('U'))
	DROP TABLE [dbo].[t_fans_spread]
GO

CREATE TABLE [dbo].[t_fans_spread] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [branch_no] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [spread_no] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [qrcodeurl] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [qrcodeimg] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [spread_name] varchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [openid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[t_fans_spread] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for t_favorites
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_favorites]') AND type IN ('U'))
	DROP TABLE [dbo].[t_favorites]
GO

CREATE TABLE [dbo].[t_favorites] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [openid] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [pid] bigint DEFAULT ((0)) NOT NULL,
  [addtime] datetime DEFAULT (getdate()) NOT NULL,
  [state] int DEFAULT ((1)) NOT NULL
)
GO

ALTER TABLE [dbo].[t_favorites] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for t_freshgoods
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_freshgoods]') AND type IN ('U'))
	DROP TABLE [dbo].[t_freshgoods]
GO

CREATE TABLE [dbo].[t_freshgoods] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [branch_no] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [item_no] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [item_name] varchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [source_price] decimal(18,4)  NOT NULL,
  [sale_price] decimal(18,4)  NOT NULL,
  [sale_qty] decimal(18,4)  NOT NULL,
  [sale_amt] decimal(18,4)  NULL,
  [unit_no] varchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [item_size] varchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [plan_no] varchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [spec_flag] varchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [operdate] datetime DEFAULT (getdate()) NULL,
  [barcode] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[t_freshgoods] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'机构  门店',
'SCHEMA', N'dbo',
'TABLE', N't_freshgoods',
'COLUMN', N'branch_no'
GO

EXEC sp_addextendedproperty
'MS_Description', N'货号',
'SCHEMA', N'dbo',
'TABLE', N't_freshgoods',
'COLUMN', N'item_no'
GO

EXEC sp_addextendedproperty
'MS_Description', N'原价(金额/重量)',
'SCHEMA', N'dbo',
'TABLE', N't_freshgoods',
'COLUMN', N'source_price'
GO

EXEC sp_addextendedproperty
'MS_Description', N' 特价（售价 单价）',
'SCHEMA', N'dbo',
'TABLE', N't_freshgoods',
'COLUMN', N'sale_price'
GO

EXEC sp_addextendedproperty
'MS_Description', N'重量(数量)',
'SCHEMA', N'dbo',
'TABLE', N't_freshgoods',
'COLUMN', N'sale_qty'
GO

EXEC sp_addextendedproperty
'MS_Description', N'金额',
'SCHEMA', N'dbo',
'TABLE', N't_freshgoods',
'COLUMN', N'sale_amt'
GO

EXEC sp_addextendedproperty
'MS_Description', N'促销单号',
'SCHEMA', N'dbo',
'TABLE', N't_freshgoods',
'COLUMN', N'plan_no'
GO

EXEC sp_addextendedproperty
'MS_Description', N'促销类型',
'SCHEMA', N'dbo',
'TABLE', N't_freshgoods',
'COLUMN', N'spec_flag'
GO

EXEC sp_addextendedproperty
'MS_Description', N'生鲜条码',
'SCHEMA', N'dbo',
'TABLE', N't_freshgoods'
GO


-- ----------------------------
-- Table structure for t_gift_goods
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_gift_goods]') AND type IN ('U'))
	DROP TABLE [dbo].[t_gift_goods]
GO

CREATE TABLE [dbo].[t_gift_goods] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [branchno] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [gift_no] varchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [gift_name] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [gift_pic] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [gift_info] varchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [gift_quantity] int DEFAULT ((0)) NULL,
  [gift_credit] decimal(20,4) DEFAULT ((0.0000)) NULL,
  [exchange_num] bigint DEFAULT ((0)) NULL,
  [on_time] datetime  NULL,
  [start_time] datetime  NULL,
  [end_time] datetime  NULL,
  [gift_sort] int DEFAULT ((50)) NULL,
  [deliver_fee] decimal(8,2) DEFAULT ((0.00)) NULL,
  [unit] varchar(50) COLLATE Chinese_PRC_CI_AS DEFAULT ('个') NULL,
  [limit_num] int DEFAULT ((0)) NULL,
  [gift_remark] varchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [is_exchange] int DEFAULT ((0)) NULL,
  [isstock] bit  NOT NULL
)
GO

ALTER TABLE [dbo].[t_gift_goods] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'ID',
'SCHEMA', N'dbo',
'TABLE', N't_gift_goods',
'COLUMN', N'Id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'商户ID',
'SCHEMA', N'dbo',
'TABLE', N't_gift_goods',
'COLUMN', N'shopid'
GO

EXEC sp_addextendedproperty
'MS_Description', N'门店编号',
'SCHEMA', N'dbo',
'TABLE', N't_gift_goods',
'COLUMN', N'branchno'
GO

EXEC sp_addextendedproperty
'MS_Description', N'礼品编号',
'SCHEMA', N'dbo',
'TABLE', N't_gift_goods',
'COLUMN', N'gift_no'
GO

EXEC sp_addextendedproperty
'MS_Description', N'礼品名称',
'SCHEMA', N'dbo',
'TABLE', N't_gift_goods',
'COLUMN', N'gift_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'礼品图片',
'SCHEMA', N'dbo',
'TABLE', N't_gift_goods',
'COLUMN', N'gift_pic'
GO

EXEC sp_addextendedproperty
'MS_Description', N'礼品描述',
'SCHEMA', N'dbo',
'TABLE', N't_gift_goods',
'COLUMN', N'gift_info'
GO

EXEC sp_addextendedproperty
'MS_Description', N'礼品库存数量',
'SCHEMA', N'dbo',
'TABLE', N't_gift_goods',
'COLUMN', N'gift_quantity'
GO

EXEC sp_addextendedproperty
'MS_Description', N'兑换所需要积分',
'SCHEMA', N'dbo',
'TABLE', N't_gift_goods',
'COLUMN', N'gift_credit'
GO

EXEC sp_addextendedproperty
'MS_Description', N'兑换次数',
'SCHEMA', N'dbo',
'TABLE', N't_gift_goods',
'COLUMN', N'exchange_num'
GO

EXEC sp_addextendedproperty
'MS_Description', N'上架时间',
'SCHEMA', N'dbo',
'TABLE', N't_gift_goods',
'COLUMN', N'on_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'开始时间',
'SCHEMA', N'dbo',
'TABLE', N't_gift_goods',
'COLUMN', N'start_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'结束时间',
'SCHEMA', N'dbo',
'TABLE', N't_gift_goods',
'COLUMN', N'end_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'排序',
'SCHEMA', N'dbo',
'TABLE', N't_gift_goods',
'COLUMN', N'gift_sort'
GO

EXEC sp_addextendedproperty
'MS_Description', N'邮费',
'SCHEMA', N'dbo',
'TABLE', N't_gift_goods',
'COLUMN', N'deliver_fee'
GO

EXEC sp_addextendedproperty
'MS_Description', N'单位',
'SCHEMA', N'dbo',
'TABLE', N't_gift_goods',
'COLUMN', N'unit'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注',
'SCHEMA', N'dbo',
'TABLE', N't_gift_goods',
'COLUMN', N'gift_remark'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否上架销售',
'SCHEMA', N'dbo',
'TABLE', N't_gift_goods',
'COLUMN', N'is_exchange'
GO


-- ----------------------------
-- Table structure for t_gift_orderdetail
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_gift_orderdetail]') AND type IN ('U'))
	DROP TABLE [dbo].[t_gift_orderdetail]
GO

CREATE TABLE [dbo].[t_gift_orderdetail] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [openid] varchar(150) COLLATE Chinese_PRC_CI_AS  NULL,
  [ordermaster_id] bigint  NULL,
  [order_no] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [gift_no] varchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [gift_name] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [order_quantity] int DEFAULT ((1)) NULL,
  [exchange_credit] decimal(20,4)  NULL,
  [exchange_time] datetime  NULL
)
GO

ALTER TABLE [dbo].[t_gift_orderdetail] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'商户ID',
'SCHEMA', N'dbo',
'TABLE', N't_gift_orderdetail',
'COLUMN', N'shopid'
GO

EXEC sp_addextendedproperty
'MS_Description', N'微信OPENID',
'SCHEMA', N'dbo',
'TABLE', N't_gift_orderdetail',
'COLUMN', N'openid'
GO

EXEC sp_addextendedproperty
'MS_Description', N'订单主表关联ID',
'SCHEMA', N'dbo',
'TABLE', N't_gift_orderdetail',
'COLUMN', N'ordermaster_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'订单号',
'SCHEMA', N'dbo',
'TABLE', N't_gift_orderdetail',
'COLUMN', N'order_no'
GO

EXEC sp_addextendedproperty
'MS_Description', N'礼品ID',
'SCHEMA', N'dbo',
'TABLE', N't_gift_orderdetail',
'COLUMN', N'gift_no'
GO

EXEC sp_addextendedproperty
'MS_Description', N'礼品名称',
'SCHEMA', N'dbo',
'TABLE', N't_gift_orderdetail',
'COLUMN', N'gift_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数量',
'SCHEMA', N'dbo',
'TABLE', N't_gift_orderdetail',
'COLUMN', N'order_quantity'
GO

EXEC sp_addextendedproperty
'MS_Description', N'兑换积分',
'SCHEMA', N'dbo',
'TABLE', N't_gift_orderdetail',
'COLUMN', N'exchange_credit'
GO

EXEC sp_addextendedproperty
'MS_Description', N'兑换时间',
'SCHEMA', N'dbo',
'TABLE', N't_gift_orderdetail',
'COLUMN', N'exchange_time'
GO


-- ----------------------------
-- Table structure for t_gift_ordermaster
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_gift_ordermaster]') AND type IN ('U'))
	DROP TABLE [dbo].[t_gift_ordermaster]
GO

CREATE TABLE [dbo].[t_gift_ordermaster] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [openid] varchar(150) COLLATE Chinese_PRC_CI_AS  NULL,
  [order_no] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [deliver_type] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [deliver_fee] decimal(8,2)  NULL,
  [deliver_status] int  NULL,
  [order_status] int DEFAULT ((0)) NULL,
  [order_remark] varchar(250) COLLATE Chinese_PRC_CI_AS  NULL,
  [total_credit] decimal(20,4)  NULL,
  [order_time] datetime  NULL,
  [deliver_time] datetime  NULL,
  [reply] varchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [orderman] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [ordertel] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [address] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [card_id] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [branch_name] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [branch_no] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [operdate] datetime  NULL
)
GO

ALTER TABLE [dbo].[t_gift_ordermaster] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'商户ID',
'SCHEMA', N'dbo',
'TABLE', N't_gift_ordermaster',
'COLUMN', N'shopid'
GO

EXEC sp_addextendedproperty
'MS_Description', N'微信OPENID',
'SCHEMA', N'dbo',
'TABLE', N't_gift_ordermaster',
'COLUMN', N'openid'
GO

EXEC sp_addextendedproperty
'MS_Description', N'订单号',
'SCHEMA', N'dbo',
'TABLE', N't_gift_ordermaster',
'COLUMN', N'order_no'
GO

EXEC sp_addextendedproperty
'MS_Description', N'送货方式',
'SCHEMA', N'dbo',
'TABLE', N't_gift_ordermaster',
'COLUMN', N'deliver_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'邮费',
'SCHEMA', N'dbo',
'TABLE', N't_gift_ordermaster',
'COLUMN', N'deliver_fee'
GO

EXEC sp_addextendedproperty
'MS_Description', N'送货状态',
'SCHEMA', N'dbo',
'TABLE', N't_gift_ordermaster',
'COLUMN', N'deliver_status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'订单状态',
'SCHEMA', N'dbo',
'TABLE', N't_gift_ordermaster',
'COLUMN', N'order_status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注',
'SCHEMA', N'dbo',
'TABLE', N't_gift_ordermaster',
'COLUMN', N'order_remark'
GO

EXEC sp_addextendedproperty
'MS_Description', N'总积分',
'SCHEMA', N'dbo',
'TABLE', N't_gift_ordermaster',
'COLUMN', N'total_credit'
GO

EXEC sp_addextendedproperty
'MS_Description', N'下单时间',
'SCHEMA', N'dbo',
'TABLE', N't_gift_ordermaster',
'COLUMN', N'order_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'发货时间',
'SCHEMA', N'dbo',
'TABLE', N't_gift_ordermaster',
'COLUMN', N'deliver_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'商家回复',
'SCHEMA', N'dbo',
'TABLE', N't_gift_ordermaster',
'COLUMN', N'reply'
GO

EXEC sp_addextendedproperty
'MS_Description', N'姓名',
'SCHEMA', N'dbo',
'TABLE', N't_gift_ordermaster',
'COLUMN', N'orderman'
GO

EXEC sp_addextendedproperty
'MS_Description', N'手机',
'SCHEMA', N'dbo',
'TABLE', N't_gift_ordermaster',
'COLUMN', N'ordertel'
GO

EXEC sp_addextendedproperty
'MS_Description', N'地址',
'SCHEMA', N'dbo',
'TABLE', N't_gift_ordermaster',
'COLUMN', N'address'
GO

EXEC sp_addextendedproperty
'MS_Description', N'会员卡号',
'SCHEMA', N'dbo',
'TABLE', N't_gift_ordermaster',
'COLUMN', N'card_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'门店名称',
'SCHEMA', N'dbo',
'TABLE', N't_gift_ordermaster',
'COLUMN', N'branch_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'门店编码',
'SCHEMA', N'dbo',
'TABLE', N't_gift_ordermaster',
'COLUMN', N'branch_no'
GO

EXEC sp_addextendedproperty
'MS_Description', N'操作时间',
'SCHEMA', N'dbo',
'TABLE', N't_gift_ordermaster',
'COLUMN', N'operdate'
GO


-- ----------------------------
-- Table structure for t_item_brand
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_item_brand]') AND type IN ('U'))
	DROP TABLE [dbo].[t_item_brand]
GO

CREATE TABLE [dbo].[t_item_brand] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [brand_no] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [brand_name] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [parentno] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [parentname] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [pictureurl] varchar(250) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[t_item_brand] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for t_item_info
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_item_info]') AND type IN ('U'))
	DROP TABLE [dbo].[t_item_info]
GO

CREATE TABLE [dbo].[t_item_info] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [branch_no] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [item_no] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [item_name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [type_no] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [type_name] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [item_unit] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [item_spec] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [item_price] numeric(18,4) DEFAULT ((0)) NULL,
  [item_mprice] numeric(18,4) DEFAULT ((0)) NULL,
  [item_spell] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [item_desc] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [useflag] char(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [branch_name] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [item_oldprice] numeric(18,4) DEFAULT ((0)) NULL,
  [pic] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [operdate] datetime  NULL,
  [uppic] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [stock] int  NULL,
  [salenum] int DEFAULT ((0)) NULL,
  [isstock] bit DEFAULT ((0)) NULL,
  [item_subno] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [intorder] int DEFAULT ((50)) NULL,
  [is_hot] char(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [is_best] char(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [item_promoteprice] numeric(18,4)  NULL,
  [item_qrcode] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [unit_id] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [purchase_num] int DEFAULT ((1)) NOT NULL,
  [brandno] varchar(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [is_delete] char(1) COLLATE Chinese_PRC_CI_AS DEFAULT ('0') NULL
)
GO

ALTER TABLE [dbo].[t_item_info] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'排序',
'SCHEMA', N'dbo',
'TABLE', N't_item_info',
'COLUMN', N'intorder'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否热销',
'SCHEMA', N'dbo',
'TABLE', N't_item_info',
'COLUMN', N'is_hot'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否推荐',
'SCHEMA', N'dbo',
'TABLE', N't_item_info',
'COLUMN', N'is_best'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否秒杀促销',
'SCHEMA', N'dbo',
'TABLE', N't_item_info',
'COLUMN', N'item_promoteprice'
GO

EXEC sp_addextendedproperty
'MS_Description', N'二维码地址',
'SCHEMA', N'dbo',
'TABLE', N't_item_info',
'COLUMN', N'item_qrcode'
GO

EXEC sp_addextendedproperty
'MS_Description', N'所属品牌编码',
'SCHEMA', N'dbo',
'TABLE', N't_item_info',
'COLUMN', N'brandno'
GO


-- ----------------------------
-- Table structure for t_item_picurl_info
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_item_picurl_info]') AND type IN ('U'))
	DROP TABLE [dbo].[t_item_picurl_info]
GO

CREATE TABLE [dbo].[t_item_picurl_info] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [item_no] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [branch_no] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [pic] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [description] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [is_show] char(1) COLLATE Chinese_PRC_CI_AS DEFAULT ((1)) NULL,
  [intorder] int DEFAULT ((50)) NULL
)
GO

ALTER TABLE [dbo].[t_item_picurl_info] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'店铺ID',
'SCHEMA', N'dbo',
'TABLE', N't_item_picurl_info',
'COLUMN', N'shopid'
GO

EXEC sp_addextendedproperty
'MS_Description', N'产品编号',
'SCHEMA', N'dbo',
'TABLE', N't_item_picurl_info',
'COLUMN', N'item_no'
GO

EXEC sp_addextendedproperty
'MS_Description', N'门店编号',
'SCHEMA', N'dbo',
'TABLE', N't_item_picurl_info',
'COLUMN', N'branch_no'
GO

EXEC sp_addextendedproperty
'MS_Description', N'图片url',
'SCHEMA', N'dbo',
'TABLE', N't_item_picurl_info',
'COLUMN', N'pic'
GO

EXEC sp_addextendedproperty
'MS_Description', N'图片说明',
'SCHEMA', N'dbo',
'TABLE', N't_item_picurl_info',
'COLUMN', N'description'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是显示',
'SCHEMA', N'dbo',
'TABLE', N't_item_picurl_info',
'COLUMN', N'is_show'
GO

EXEC sp_addextendedproperty
'MS_Description', N'排序',
'SCHEMA', N'dbo',
'TABLE', N't_item_picurl_info',
'COLUMN', N'intorder'
GO


-- ----------------------------
-- Table structure for t_item_stock
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_item_stock]') AND type IN ('U'))
	DROP TABLE [dbo].[t_item_stock]
GO

CREATE TABLE [dbo].[t_item_stock] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [branch_no] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [item_no] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [type_no] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [item_spec] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [operdate] datetime  NULL,
  [stock] int  NOT NULL,
  [salenum] int  NULL
)
GO

ALTER TABLE [dbo].[t_item_stock] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for t_item_type
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_item_type]') AND type IN ('U'))
	DROP TABLE [dbo].[t_item_type]
GO

CREATE TABLE [dbo].[t_item_type] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [branch_no] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [type_no] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [type_name] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [useflag] char(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [intorder] int DEFAULT ((50)) NULL,
  [parent] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [istoptype] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [pic] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [parentno] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [recommend] bit DEFAULT ((0)) NULL
)
GO

ALTER TABLE [dbo].[t_item_type] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for t_jicichargefee
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_jicichargefee]') AND type IN ('U'))
	DROP TABLE [dbo].[t_jicichargefee]
GO

CREATE TABLE [dbo].[t_jicichargefee] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [openid] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [orderno] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [serverid] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [codename] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [serverno] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [servername] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [validdate] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [amt] numeric(18,4)  NOT NULL,
  [realamt] numeric(18,4)  NULL,
  [paystatus] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [operdate] datetime  NULL,
  [cardid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [discounttype] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [memo] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [rechargevoucherid] varchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [consumcount] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[t_jicichargefee] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for t_jsapiticket
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_jsapiticket]') AND type IN ('U'))
	DROP TABLE [dbo].[t_jsapiticket]
GO

CREATE TABLE [dbo].[t_jsapiticket] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [appid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [ticket] varchar(512) COLLATE Chinese_PRC_CI_AS  NULL,
  [expiresin] int  NULL,
  [updatetime] datetime  NULL,
  [validity] smallint  NULL
)
GO

ALTER TABLE [dbo].[t_jsapiticket] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for t_navbar_link
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_navbar_link]') AND type IN ('U'))
	DROP TABLE [dbo].[t_navbar_link]
GO

CREATE TABLE [dbo].[t_navbar_link] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [name] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [sysCode] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [url] varchar(600) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [iconType] tinyint  NOT NULL,
  [iconCls] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [imgUrl] varchar(600) COLLATE Chinese_PRC_CI_AS  NULL,
  [intorder] int  NOT NULL,
  [isPublished] bit  NOT NULL,
  [publishAt] datetime  NULL,
  [createAt] datetime  NOT NULL,
  [updateAt] datetime  NOT NULL,
  [isnavbar] int DEFAULT ((1)) NOT NULL,
  [ismemberversion] char(1) COLLATE Chinese_PRC_CI_AS DEFAULT ((0)) NULL,
  [linkpath] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[t_navbar_link] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N't_navbar_link',
'COLUMN', N'Id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'店铺ID',
'SCHEMA', N'dbo',
'TABLE', N't_navbar_link',
'COLUMN', N'shopid'
GO

EXEC sp_addextendedproperty
'MS_Description', N'显示名称',
'SCHEMA', N'dbo',
'TABLE', N't_navbar_link',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'系统编码',
'SCHEMA', N'dbo',
'TABLE', N't_navbar_link',
'COLUMN', N'sysCode'
GO

EXEC sp_addextendedproperty
'MS_Description', N'菜单链接',
'SCHEMA', N'dbo',
'TABLE', N't_navbar_link',
'COLUMN', N'url'
GO

EXEC sp_addextendedproperty
'MS_Description', N'图标类型',
'SCHEMA', N'dbo',
'TABLE', N't_navbar_link',
'COLUMN', N'iconType'
GO

EXEC sp_addextendedproperty
'MS_Description', N'图标class',
'SCHEMA', N'dbo',
'TABLE', N't_navbar_link',
'COLUMN', N'iconCls'
GO

EXEC sp_addextendedproperty
'MS_Description', N'上传的图片URL',
'SCHEMA', N'dbo',
'TABLE', N't_navbar_link',
'COLUMN', N'imgUrl'
GO

EXEC sp_addextendedproperty
'MS_Description', N'排序',
'SCHEMA', N'dbo',
'TABLE', N't_navbar_link',
'COLUMN', N'intorder'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否已发布',
'SCHEMA', N'dbo',
'TABLE', N't_navbar_link',
'COLUMN', N'isPublished'
GO

EXEC sp_addextendedproperty
'MS_Description', N'发布时间',
'SCHEMA', N'dbo',
'TABLE', N't_navbar_link',
'COLUMN', N'publishAt'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N't_navbar_link',
'COLUMN', N'createAt'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N't_navbar_link',
'COLUMN', N'updateAt'
GO


-- ----------------------------
-- Table structure for t_net_request
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_net_request]') AND type IN ('U'))
	DROP TABLE [dbo].[t_net_request]
GO

CREATE TABLE [dbo].[t_net_request] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [type1] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [type2] smallint  NOT NULL,
  [operdate] datetime DEFAULT (getdate()) NULL,
  [total_time] bigint  NULL,
  [openid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[t_net_request] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'使用字符串描述即可',
'SCHEMA', N'dbo',
'TABLE', N't_net_request',
'COLUMN', N'type1'
GO

EXEC sp_addextendedproperty
'MS_Description', N'操作类型，0：请求（去单），1：响应（来单），2：超时',
'SCHEMA', N'dbo',
'TABLE', N't_net_request',
'COLUMN', N'type2'
GO


-- ----------------------------
-- Table structure for t_news_notice
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_news_notice]') AND type IN ('U'))
	DROP TABLE [dbo].[t_news_notice]
GO

CREATE TABLE [dbo].[t_news_notice] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [notice_title] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [url] varchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [intorder] int DEFAULT ((50)) NULL,
  [isPublished] bit DEFAULT ((0)) NOT NULL,
  [publishedtime] datetime  NULL,
  [operdate] datetime  NULL,
  [updatetime] datetime  NULL
)
GO

ALTER TABLE [dbo].[t_news_notice] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for t_order_detail
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_order_detail]') AND type IN ('U'))
	DROP TABLE [dbo].[t_order_detail]
GO

CREATE TABLE [dbo].[t_order_detail] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [openid] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [orderno] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [itemno] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [item_name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [ordernum] numeric(18,4)  NULL,
  [item_unit] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [item_spec] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [saleprice] numeric(18,4)  NULL,
  [oriprice] numeric(18,4)  NULL,
  [buylimitid] bigint  NULL,
  [accbuyid] bigint  NULL
)
GO

ALTER TABLE [dbo].[t_order_detail] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'20160315新增分摊前的价格，用于前端显示',
'SCHEMA', N'dbo',
'TABLE', N't_order_detail',
'COLUMN', N'oriprice'
GO


-- ----------------------------
-- Table structure for t_order_master
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_order_master]') AND type IN ('U'))
	DROP TABLE [dbo].[t_order_master]
GO

CREATE TABLE [dbo].[t_order_master] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [openid] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [orderno] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [orderman] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [branch_no] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [branch_name] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [ordertel] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [tot_amt] numeric(18,4)  NULL,
  [total_dav] numeric(18,4)  NULL,
  [total_express] numeric(18,4)  NULL,
  [total] numeric(18,4)  NULL,
  [orderfrom] char(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [pay_type] char(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [deal_type] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [operdate] datetime  NULL,
  [type_name] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [dogflag] char(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [address] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [status] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [description] varchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [TransmissionStatus] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [paystatus] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [dealstatus] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [card_id] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [memo] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [dealtime] datetime  NULL,
  [orderupdatetime] datetime  NULL,
  [discounttype] char(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [discount] numeric(18,4)  NULL,
  [identity_card] varchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [offlinevoucherid] varchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [canceltype] char(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [business_memo] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [jifen] numeric(18,4) DEFAULT ((0)) NOT NULL,
  [jifenscore] decimal(18,4) DEFAULT ((0)) NOT NULL
)
GO

ALTER TABLE [dbo].[t_order_master] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'0：线下支付，1：储值卡支付，2：微信支付',
'SCHEMA', N'dbo',
'TABLE', N't_order_master',
'COLUMN', N'pay_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'0：到店自提，1：送货上门',
'SCHEMA', N'dbo',
'TABLE', N't_order_master',
'COLUMN', N'deal_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'0：未完成，1,：已取消，2：已完成',
'SCHEMA', N'dbo',
'TABLE', N't_order_master',
'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'自提/送货时间',
'SCHEMA', N'dbo',
'TABLE', N't_order_master',
'COLUMN', N'dealtime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'优惠类型：0：线上优惠券，1：线下折扣，默认为0，以前的数据由于没有这个字段，所以为NULL时，也表示使用线上优惠券',
'SCHEMA', N'dbo',
'TABLE', N't_order_master',
'COLUMN', N'discounttype'
GO

EXEC sp_addextendedproperty
'MS_Description', N'当优惠类型为1：线下折扣时的折扣值，取值范围0~1，线下务必对下来的订单进行折扣验证，因为微商店后端从前端取到折扣值后是没有向线下进行验证的',
'SCHEMA', N'dbo',
'TABLE', N't_order_master',
'COLUMN', N'discount'
GO

EXEC sp_addextendedproperty
'MS_Description', N'订单收货人身份证号',
'SCHEMA', N'dbo',
'TABLE', N't_order_master',
'COLUMN', N'identity_card'
GO

EXEC sp_addextendedproperty
'MS_Description', N'积分抵扣',
'SCHEMA', N'dbo',
'TABLE', N't_order_master',
'COLUMN', N'jifen'
GO


-- ----------------------------
-- Table structure for t_order_paydetail
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_order_paydetail]') AND type IN ('U'))
	DROP TABLE [dbo].[t_order_paydetail]
GO

CREATE TABLE [dbo].[t_order_paydetail] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [orderno] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [paymodename] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [paymode] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [amount] numeric(18,4)  NULL,
  [remark] nvarchar(250) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[t_order_paydetail] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for t_orderman
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_orderman]') AND type IN ('U'))
	DROP TABLE [dbo].[t_orderman]
GO

CREATE TABLE [dbo].[t_orderman] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [openid] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [orderman] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [ordertel] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [isdefault] char(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [city] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [area] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [provice] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [country] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [address] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [addressall] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [latitude] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [longitude] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [idcard_receiver] varchar(20) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[t_orderman] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'开启收货人身份证号',
'SCHEMA', N'dbo',
'TABLE', N't_orderman',
'COLUMN', N'idcard_receiver'
GO


-- ----------------------------
-- Table structure for t_preferential
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_preferential]') AND type IN ('U'))
	DROP TABLE [dbo].[t_preferential]
GO

CREATE TABLE [dbo].[t_preferential] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [branch_no] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [starttime] datetime  NULL,
  [endtime] datetime  NULL,
  [descinfo] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [picurl1] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [picurl2] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [picurl3] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [useflag] char(1) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[t_preferential] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for t_queue_log
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_queue_log]') AND type IN ('U'))
	DROP TABLE [dbo].[t_queue_log]
GO

CREATE TABLE [dbo].[t_queue_log] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [orderno] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [operdate] datetime  NULL,
  [queuetype] int  NULL
)
GO

ALTER TABLE [dbo].[t_queue_log] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for t_redpack
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_redpack]') AND type IN ('U'))
	DROP TABLE [dbo].[t_redpack]
GO

CREATE TABLE [dbo].[t_redpack] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [activity_type] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [redpack_type] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [mch_billno] nvarchar(32) COLLATE Chinese_PRC_CI_AS  NULL,
  [re_openid] nvarchar(32) COLLATE Chinese_PRC_CI_AS  NULL,
  [card_id] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [total_amount] decimal(5,2)  NULL,
  [total_num] int  NULL,
  [amt_type] varchar(32) COLLATE Chinese_PRC_CI_AS  NULL,
  [wishing] nvarchar(128) COLLATE Chinese_PRC_CI_AS  NULL,
  [act_name] nvarchar(32) COLLATE Chinese_PRC_CI_AS  NULL,
  [remark] nvarchar(256) COLLATE Chinese_PRC_CI_AS  NULL,
  [scene_id] nvarchar(32) COLLATE Chinese_PRC_CI_AS  NULL,
  [risk_info] nvarchar(128) COLLATE Chinese_PRC_CI_AS  NULL,
  [status] nvarchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [send_status] nvarchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [send_listid] varchar(32) COLLATE Chinese_PRC_CI_AS  NULL,
  [operdate] datetime DEFAULT (getdate()) NULL
)
GO

ALTER TABLE [dbo].[t_redpack] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for t_redpack_log
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_redpack_log]') AND type IN ('U'))
	DROP TABLE [dbo].[t_redpack_log]
GO

CREATE TABLE [dbo].[t_redpack_log] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(8) COLLATE Chinese_PRC_CI_AS  NULL,
  [return_code] varchar(16) COLLATE Chinese_PRC_CI_AS  NULL,
  [ReturnCodeSuccess] bit  NULL,
  [return_msg] nvarchar(128) COLLATE Chinese_PRC_CI_AS  NULL,
  [result_code] varchar(16) COLLATE Chinese_PRC_CI_AS  NULL,
  [ResultCodeSuccess] bit  NULL,
  [err_code] varchar(32) COLLATE Chinese_PRC_CI_AS  NULL,
  [err_code_des] nvarchar(128) COLLATE Chinese_PRC_CI_AS  NULL,
  [mch_billno] varchar(28) COLLATE Chinese_PRC_CI_AS  NULL,
  [mch_id] varchar(32) COLLATE Chinese_PRC_CI_AS  NULL,
  [wxappid] varchar(32) COLLATE Chinese_PRC_CI_AS  NULL,
  [re_openid] varchar(32) COLLATE Chinese_PRC_CI_AS  NULL,
  [total_amount] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [send_time] varchar(32) COLLATE Chinese_PRC_CI_AS DEFAULT (getdate()) NULL,
  [send_listid] varchar(32) COLLATE Chinese_PRC_CI_AS  NULL,
  [oper_date] datetime DEFAULT (getdate()) NULL
)
GO

ALTER TABLE [dbo].[t_redpack_log] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for t_refund
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_refund]') AND type IN ('U'))
	DROP TABLE [dbo].[t_refund]
GO

CREATE TABLE [dbo].[t_refund] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [orderno] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [reason] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [applydate] datetime  NULL,
  [status] nvarchar(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [reply] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [replydate] datetime  NULL
)
GO

ALTER TABLE [dbo].[t_refund] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'退款理由',
'SCHEMA', N'dbo',
'TABLE', N't_refund',
'COLUMN', N'reason'
GO

EXEC sp_addextendedproperty
'MS_Description', N'申请退款日期',
'SCHEMA', N'dbo',
'TABLE', N't_refund',
'COLUMN', N'applydate'
GO

EXEC sp_addextendedproperty
'MS_Description', N'状态：申请中、处理中、退款成功、退款失败',
'SCHEMA', N'dbo',
'TABLE', N't_refund',
'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'处理回复',
'SCHEMA', N'dbo',
'TABLE', N't_refund',
'COLUMN', N'reply'
GO

EXEC sp_addextendedproperty
'MS_Description', N'处理日期',
'SCHEMA', N'dbo',
'TABLE', N't_refund',
'COLUMN', N'replydate'
GO


-- ----------------------------
-- Table structure for t_refund_log
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_refund_log]') AND type IN ('U'))
	DROP TABLE [dbo].[t_refund_log]
GO

CREATE TABLE [dbo].[t_refund_log] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [payway] varchar(2) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [orderno] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [openid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [card_id] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [money] decimal(18,2)  NOT NULL,
  [success] bit  NOT NULL,
  [message] varchar(1000) COLLATE Chinese_PRC_CI_AS  NULL,
  [addtime] datetime  NOT NULL,
  [remarks] varchar(1000) COLLATE Chinese_PRC_CI_AS  NULL,
  [isagain] bit  NULL
)
GO

ALTER TABLE [dbo].[t_refund_log] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for t_request
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_request]') AND type IN ('U'))
	DROP TABLE [dbo].[t_request]
GO

CREATE TABLE [dbo].[t_request] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [openid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [orderno] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [type1] smallint  NOT NULL,
  [type2] smallint  NOT NULL,
  [operdate] datetime  NULL
)
GO

ALTER TABLE [dbo].[t_request] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for t_sales_activity
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_sales_activity]') AND type IN ('U'))
	DROP TABLE [dbo].[t_sales_activity]
GO

CREATE TABLE [dbo].[t_sales_activity] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [branch_no] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [sales_name] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [begin_date] datetime  NULL,
  [end_date] datetime  NULL,
  [discount] decimal(3,2) DEFAULT ((1.00)) NULL,
  [show_type] char(1) COLLATE Chinese_PRC_CI_AS DEFAULT ((2)) NULL,
  [enabled] bit DEFAULT ((0)) NULL
)
GO

ALTER TABLE [dbo].[t_sales_activity] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for t_send_message
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_send_message]') AND type IN ('U'))
	DROP TABLE [dbo].[t_send_message]
GO

CREATE TABLE [dbo].[t_send_message] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [openid] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [telno] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [sendtype] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [code] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [detail_memo] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [sendtime] datetime  NULL,
  [useflag] char(1) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[t_send_message] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for t_sequence
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_sequence]') AND type IN ('U'))
	DROP TABLE [dbo].[t_sequence]
GO

CREATE TABLE [dbo].[t_sequence] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [openid] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [currentid] numeric(18)  NULL,
  [currentdate] datetime  NULL
)
GO

ALTER TABLE [dbo].[t_sequence] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for t_share_gift_setting
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_share_gift_setting]') AND type IN ('U'))
	DROP TABLE [dbo].[t_share_gift_setting]
GO

CREATE TABLE [dbo].[t_share_gift_setting] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [is_give_voucher] bit  NOT NULL,
  [is_give_point] bit DEFAULT ((0)) NOT NULL,
  [use_flag] bit DEFAULT ((0)) NOT NULL,
  [points] decimal(18,2)  NULL
)
GO

ALTER TABLE [dbo].[t_share_gift_setting] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'ID',
'SCHEMA', N'dbo',
'TABLE', N't_share_gift_setting',
'COLUMN', N'Id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'商户ID',
'SCHEMA', N'dbo',
'TABLE', N't_share_gift_setting',
'COLUMN', N'shopid'
GO


-- ----------------------------
-- Table structure for t_shopid_white_list
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_shopid_white_list]') AND type IN ('U'))
	DROP TABLE [dbo].[t_shopid_white_list]
GO

CREATE TABLE [dbo].[t_shopid_white_list] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [operdate] datetime  NOT NULL,
  [shopid] nchar(10) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[t_shopid_white_list] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for t_shopinfo
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_shopinfo]') AND type IN ('U'))
	DROP TABLE [dbo].[t_shopinfo]
GO

CREATE TABLE [dbo].[t_shopinfo] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [dogno] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [product] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [cust_no] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [wx_id] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [oper_date] datetime  NULL,
  [stat_date] datetime  NULL,
  [end_date] datetime  NULL,
  [shopname] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [province] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [city] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [address] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [contacts] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [mobile] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [email] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [memo] varchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [LogoPic] varchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [randomcode] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [prikey] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [pubkey] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [modn] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [tel] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [cust_name] nvarchar(150) COLLATE Chinese_PRC_CI_AS  NULL,
  [iscopytokc] char(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [playprice] decimal(18,2)  NULL,
  [showsalenum] bit DEFAULT ((0)) NULL,
  [showstocknum] bit DEFAULT ((0)) NULL,
  [ispay] bit DEFAULT ((0)) NOT NULL,
  [pay_amt] numeric(18,4)  NULL,
  [sale_no] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [is_open_bosshelper] bit DEFAULT ((0)) NULL,
  [IsMemberVersion] char(1) COLLATE Chinese_PRC_CI_AS DEFAULT ((0)) NULL,
  [isopen_membermarketing] bit DEFAULT ((0)) NOT NULL,
  [bind_clerk_num] int DEFAULT ((5)) NOT NULL,
  [isopen_clerk_num] bit DEFAULT ((1)) NOT NULL,
  [open_membermarketing_date] datetime  NULL,
  [wxapp_startdate] datetime  NULL,
  [wxapp_enddate] datetime  NULL,
  [wxa_pay_amt] decimal(18,4) DEFAULT ((0.0000)) NOT NULL,
  [wxa_sale_no] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [wxa_ispay] bit DEFAULT ((0)) NOT NULL,
  [IsSaoMaGou] bit  NULL,
  [LicensePic] varchar(250) COLLATE Chinese_PRC_CI_AS  NULL,
  [showLicensePic] bit DEFAULT ((0)) NOT NULL
)
GO

ALTER TABLE [dbo].[t_shopinfo] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'营销员可绑定数量',
'SCHEMA', N'dbo',
'TABLE', N't_shopinfo',
'COLUMN', N'bind_clerk_num'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否开启营销员可绑定数量控制',
'SCHEMA', N'dbo',
'TABLE', N't_shopinfo',
'COLUMN', N'isopen_clerk_num'
GO


-- ----------------------------
-- Table structure for t_shopinfotmp
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_shopinfotmp]') AND type IN ('U'))
	DROP TABLE [dbo].[t_shopinfotmp]
GO

CREATE TABLE [dbo].[t_shopinfotmp] (
  [dogno] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [product] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [cust_no] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [wx_id] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [oper_date] datetime  NULL,
  [stat_date] datetime  NULL,
  [end_date] datetime  NULL,
  [shopname] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [province] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [city] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [address] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [contacts] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [mobile] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [email] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [memo] varchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [LogoPic] varchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [randomcode] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [prikey] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [pubkey] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [modn] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [tel] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [cust_name] nvarchar(150) COLLATE Chinese_PRC_CI_AS  NULL,
  [iscopytokc] char(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [playprice] decimal(18,2)  NULL,
  [showsalenum] bit  NULL
)
GO

ALTER TABLE [dbo].[t_shopinfotmp] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for t_shoppingbag
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_shoppingbag]') AND type IN ('U'))
	DROP TABLE [dbo].[t_shoppingbag]
GO

CREATE TABLE [dbo].[t_shoppingbag] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [name] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [barcode] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [price] decimal(18,2)  NOT NULL,
  [inorder] int DEFAULT ((0)) NOT NULL,
  [useflag] bit  NOT NULL
)
GO

ALTER TABLE [dbo].[t_shoppingbag] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'排序值 ，越大越靠前',
'SCHEMA', N'dbo',
'TABLE', N't_shoppingbag',
'COLUMN', N'inorder'
GO

EXEC sp_addextendedproperty
'MS_Description', N'记录购物袋',
'SCHEMA', N'dbo',
'TABLE', N't_shoppingbag'
GO


-- ----------------------------
-- Table structure for t_siss_pay
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_siss_pay]') AND type IN ('U'))
	DROP TABLE [dbo].[t_siss_pay]
GO

CREATE TABLE [dbo].[t_siss_pay] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [openid] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [appid] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [orderno] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [transaction_id] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [total_amt] numeric(18,4)  NULL,
  [paysate] char(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [operdate] datetime  NULL,
  [status] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [ordertype] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[t_siss_pay] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'20150720由zhangxiong添加',
'SCHEMA', N'dbo',
'TABLE', N't_siss_pay',
'COLUMN', N'transaction_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'订单类型，0：普通订单，1：充值',
'SCHEMA', N'dbo',
'TABLE', N't_siss_pay',
'COLUMN', N'ordertype'
GO


-- ----------------------------
-- Table structure for t_sisspaydetail
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_sisspaydetail]') AND type IN ('U'))
	DROP TABLE [dbo].[t_sisspaydetail]
GO

CREATE TABLE [dbo].[t_sisspaydetail] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [orderno] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [wft_pay_info] nvarchar(1000) COLLATE Chinese_PRC_CI_AS  NULL,
  [money] decimal(18,2)  NULL,
  [operdate] datetime  NULL,
  [payway] varchar(2) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[t_sisspaydetail] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for t_sms_request
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_sms_request]') AND type IN ('U'))
	DROP TABLE [dbo].[t_sms_request]
GO

CREATE TABLE [dbo].[t_sms_request] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [openid] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [mobile] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [type] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [send_content] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [request_date] datetime DEFAULT (getdate()) NULL,
  [is_free] char(1) COLLATE Chinese_PRC_CI_AS DEFAULT ((0)) NULL
)
GO

ALTER TABLE [dbo].[t_sms_request] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for t_template
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_template]') AND type IN ('U'))
	DROP TABLE [dbo].[t_template]
GO

CREATE TABLE [dbo].[t_template] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [templatekey] varchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [templatename] varchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [description] varchar(250) COLLATE Chinese_PRC_CI_AS  NULL,
  [thumb] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [version] varchar(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [previewurl] varchar(150) COLLATE Chinese_PRC_CI_AS  NULL,
  [setting] varchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [intorder] int DEFAULT ((50)) NULL,
  [createtime] datetime DEFAULT (getdate()) NULL,
  [is_active] bit DEFAULT ((1)) NULL
)
GO

ALTER TABLE [dbo].[t_template] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'模板标识',
'SCHEMA', N'dbo',
'TABLE', N't_template',
'COLUMN', N'templatekey'
GO

EXEC sp_addextendedproperty
'MS_Description', N'模板名称',
'SCHEMA', N'dbo',
'TABLE', N't_template',
'COLUMN', N'templatename'
GO

EXEC sp_addextendedproperty
'MS_Description', N'模板简介',
'SCHEMA', N'dbo',
'TABLE', N't_template',
'COLUMN', N'description'
GO

EXEC sp_addextendedproperty
'MS_Description', N'模板缩略图',
'SCHEMA', N'dbo',
'TABLE', N't_template',
'COLUMN', N'thumb'
GO

EXEC sp_addextendedproperty
'MS_Description', N'模板版本号',
'SCHEMA', N'dbo',
'TABLE', N't_template',
'COLUMN', N'version'
GO

EXEC sp_addextendedproperty
'MS_Description', N'模板效果预览地址',
'SCHEMA', N'dbo',
'TABLE', N't_template',
'COLUMN', N'previewurl'
GO

EXEC sp_addextendedproperty
'MS_Description', N'模板默认变量参数设置',
'SCHEMA', N'dbo',
'TABLE', N't_template',
'COLUMN', N'setting'
GO

EXEC sp_addextendedproperty
'MS_Description', N'排序',
'SCHEMA', N'dbo',
'TABLE', N't_template',
'COLUMN', N'intorder'
GO

EXEC sp_addextendedproperty
'MS_Description', N'模板发布日期',
'SCHEMA', N'dbo',
'TABLE', N't_template',
'COLUMN', N'createtime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否启用',
'SCHEMA', N'dbo',
'TABLE', N't_template',
'COLUMN', N'is_active'
GO


-- ----------------------------
-- Table structure for t_template_setting
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_template_setting]') AND type IN ('U'))
	DROP TABLE [dbo].[t_template_setting]
GO

CREATE TABLE [dbo].[t_template_setting] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [templatekey] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [templatename] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [setting] varchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [is_current] bit DEFAULT ((0)) NULL,
  [is_lock] bit DEFAULT ((0)) NULL,
  [createtime] datetime DEFAULT (getdate()) NULL
)
GO

ALTER TABLE [dbo].[t_template_setting] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'店铺id',
'SCHEMA', N'dbo',
'TABLE', N't_template_setting',
'COLUMN', N'shopid'
GO

EXEC sp_addextendedproperty
'MS_Description', N'模板编号',
'SCHEMA', N'dbo',
'TABLE', N't_template_setting',
'COLUMN', N'templatekey'
GO

EXEC sp_addextendedproperty
'MS_Description', N'已发布设置参数键值key-》value',
'SCHEMA', N'dbo',
'TABLE', N't_template_setting',
'COLUMN', N'setting'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否设为当前模板状态',
'SCHEMA', N'dbo',
'TABLE', N't_template_setting',
'COLUMN', N'is_current'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建日期',
'SCHEMA', N'dbo',
'TABLE', N't_template_setting',
'COLUMN', N'createtime'
GO


-- ----------------------------
-- Table structure for t_underline_refundlog
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_underline_refundlog]') AND type IN ('U'))
	DROP TABLE [dbo].[t_underline_refundlog]
GO

CREATE TABLE [dbo].[t_underline_refundlog] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [orderno] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [amt] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [type] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [rawencrydata] varchar(1000) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [linklog] bigint  NOT NULL,
  [adddate] datetime  NOT NULL
)
GO

ALTER TABLE [dbo].[t_underline_refundlog] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'线上单号',
'SCHEMA', N'dbo',
'TABLE', N't_underline_refundlog',
'COLUMN', N'orderno'
GO

EXEC sp_addextendedproperty
'MS_Description', N'退款金额',
'SCHEMA', N'dbo',
'TABLE', N't_underline_refundlog',
'COLUMN', N'amt'
GO

EXEC sp_addextendedproperty
'MS_Description', N'退款类型  all 全部  part  部分',
'SCHEMA', N'dbo',
'TABLE', N't_underline_refundlog',
'COLUMN', N'type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'原始请求数据（加密的）',
'SCHEMA', N'dbo',
'TABLE', N't_underline_refundlog',
'COLUMN', N'rawencrydata'
GO

EXEC sp_addextendedproperty
'MS_Description', N'线上退款日志表的ID',
'SCHEMA', N'dbo',
'TABLE', N't_underline_refundlog',
'COLUMN', N'linklog'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用于记录线下软件调用退款接口的退款日志',
'SCHEMA', N'dbo',
'TABLE', N't_underline_refundlog'
GO


-- ----------------------------
-- Table structure for t_vip_acc_detail
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_vip_acc_detail]') AND type IN ('U'))
	DROP TABLE [dbo].[t_vip_acc_detail]
GO

CREATE TABLE [dbo].[t_vip_acc_detail] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [branch_no] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [branch_name] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [card_id] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [openid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [vgf_name] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [vgf_vip_num] numeric(18,2)  NULL,
  [vgf_date] datetime  NULL,
  [meme] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [orderno] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [state] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [counts] int  NULL,
  [invited_openid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[t_vip_acc_detail] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'连续签到天数',
'SCHEMA', N'dbo',
'TABLE', N't_vip_acc_detail',
'COLUMN', N'counts'
GO


-- ----------------------------
-- Table structure for t_vip_info
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_vip_info]') AND type IN ('U'))
	DROP TABLE [dbo].[t_vip_info]
GO

CREATE TABLE [dbo].[t_vip_info] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [openid] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [branch_no] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [card_id] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [vip_name] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [birthday] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [vip_sex] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [card_type] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [type_no] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [oper_date] datetime  NULL,
  [card_status] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [acc_num] numeric(18)  NULL,
  [dec_num] numeric(18)  NULL,
  [now_acc_num] numeric(18)  NULL,
  [vip_pass] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [vip_start_date] datetime  NULL,
  [vip_end_date] datetime  NULL,
  [mobile] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [email] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [favourableinfo] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [vippic] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [subscribe] char(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [firstattentiontime] datetime  NULL,
  [regstatus] varchar(50) COLLATE Chinese_PRC_CI_AS DEFAULT ('关注') NULL,
  [real_name] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [spread_no] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [sharer_openid] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [idcard_vip] varchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [type_name] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [offlineclerkno] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [writeclerknotolinestate] bit DEFAULT ((0)) NULL,
  [babybirthday] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [babyname] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [babysex] varchar(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [wx_card_id] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [wx_card_code] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [wx_card_encrypt_code] varchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [wx_card_membershipnumber] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [areano] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [wxapp_openid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [wxa_openid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [bind_wxa_openid_date] datetime  NULL
)
GO

ALTER TABLE [dbo].[t_vip_info] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'20150721由张雄添加，1、已关注，2、未关注',
'SCHEMA', N'dbo',
'TABLE', N't_vip_info',
'COLUMN', N'subscribe'
GO

EXEC sp_addextendedproperty
'MS_Description', N'20160712添加分享者的openid',
'SCHEMA', N'dbo',
'TABLE', N't_vip_info',
'COLUMN', N'sharer_openid'
GO


-- ----------------------------
-- Table structure for t_vip_oper_log
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_vip_oper_log]') AND type IN ('U'))
	DROP TABLE [dbo].[t_vip_oper_log]
GO

CREATE TABLE [dbo].[t_vip_oper_log] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [openid] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [card_id] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [billno] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [orderno] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [opertype] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [opercontent] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [operState] char(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [opertime] datetime  NULL,
  [timeliness] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [Legitimacy] char(1) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[t_vip_oper_log] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for t_vip_registered
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_vip_registered]') AND type IN ('U'))
	DROP TABLE [dbo].[t_vip_registered]
GO

CREATE TABLE [dbo].[t_vip_registered] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [openid] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [type_no] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [oper_date] datetime  NULL,
  [subscribe] char(1) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[t_vip_registered] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'20150721由张雄添加，1、已关注，2、未关注',
'SCHEMA', N'dbo',
'TABLE', N't_vip_registered',
'COLUMN', N'subscribe'
GO


-- ----------------------------
-- Table structure for t_vip_relation_log
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_vip_relation_log]') AND type IN ('U'))
	DROP TABLE [dbo].[t_vip_relation_log]
GO

CREATE TABLE [dbo].[t_vip_relation_log] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [openid] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [card_id] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [operdate] datetime  NULL,
  [bindtype] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [mobile] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [billno] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[t_vip_relation_log] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for t_wx_app_set
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_wx_app_set]') AND type IN ('U'))
	DROP TABLE [dbo].[t_wx_app_set]
GO

CREATE TABLE [dbo].[t_wx_app_set] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [appid] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [branch_No] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [webUrl] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [appsecret] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [token] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [status_flag] char(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [operdate] datetime  NULL,
  [welcomeinfo] nvarchar(1024) COLLATE Chinese_PRC_CI_AS  NULL,
  [dogno] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [parentid] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [partnerkey] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [authorizer_refresh_token] varchar(1024) COLLATE Chinese_PRC_CI_AS  NULL,
  [authorizer_appid] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [authorizer_access_token] varchar(512) COLLATE Chinese_PRC_CI_AS  NULL,
  [wx_alias] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [wx_nick_name] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [wx_gh] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [service_type_info] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [verify_type_info] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [templateid] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [defaultreply] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [is_customservice] bit  NULL,
  [mpqrcode] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [sub_mch_id] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [use_sub_mch] bit  NULL,
  [qrurl] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [sisspaymch_id] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [payway] varchar(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [coupontmpid] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [couponoutdatetmpid] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[t_wx_app_set] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for t_wx_card
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_wx_card]') AND type IN ('U'))
	DROP TABLE [dbo].[t_wx_card]
GO

CREATE TABLE [dbo].[t_wx_card] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [card_id] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [carddetail] varchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [operdate] datetime  NULL,
  [is_delete] bit DEFAULT ((0)) NOT NULL
)
GO

ALTER TABLE [dbo].[t_wx_card] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for t_wx_pay
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_wx_pay]') AND type IN ('U'))
	DROP TABLE [dbo].[t_wx_pay]
GO

CREATE TABLE [dbo].[t_wx_pay] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [openid] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [appid] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [orderno] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [transaction_id] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [total_amt] numeric(18,4)  NULL,
  [paysate] char(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [operdate] datetime  NULL,
  [status] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [ordertype] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [payway] char(1) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[t_wx_pay] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'20150720由zhangxiong添加',
'SCHEMA', N'dbo',
'TABLE', N't_wx_pay',
'COLUMN', N'transaction_id'
GO


-- ----------------------------
-- Table structure for t_wx_pay_log
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_wx_pay_log]') AND type IN ('U'))
	DROP TABLE [dbo].[t_wx_pay_log]
GO

CREATE TABLE [dbo].[t_wx_pay_log] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [openid] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [appid] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [transaction_id] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [out_trade_no] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [total_amt] numeric(18,4)  NULL,
  [partner] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [time_end] datetime  NULL,
  [trade_state] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [pay_info] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [operatedate] datetime  NULL,
  [prepay_id] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [ordertype] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[t_wx_pay_log] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'20150721由张雄添加',
'SCHEMA', N'dbo',
'TABLE', N't_wx_pay_log',
'COLUMN', N'prepay_id'
GO


-- ----------------------------
-- Table structure for t_wx_pay_replicate
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_wx_pay_replicate]') AND type IN ('U'))
	DROP TABLE [dbo].[t_wx_pay_replicate]
GO

CREATE TABLE [dbo].[t_wx_pay_replicate] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [openid] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [appid] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [orderno] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [transaction_id] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [total_amt] numeric(18,4)  NULL,
  [paysate] char(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [operdate] datetime  NULL,
  [status] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [ordertype] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [payway] char(1) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[t_wx_pay_replicate] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for t_wx_set
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_wx_set]') AND type IN ('U'))
	DROP TABLE [dbo].[t_wx_set]
GO

CREATE TABLE [dbo].[t_wx_set] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [appid] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [branch_No] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [webUrl] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [appsecret] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [token] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [status_flag] char(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [operdate] datetime  NULL,
  [welcomeinfo] nvarchar(1024) COLLATE Chinese_PRC_CI_AS  NULL,
  [dogno] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [parentid] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [partnerkey] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [authorizer_refresh_token] varchar(1024) COLLATE Chinese_PRC_CI_AS  NULL,
  [authorizer_appid] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [wx_alias] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [wx_nick_name] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [wx_gh] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [service_type_info] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [verify_type_info] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [authorizer_access_token] varchar(512) COLLATE Chinese_PRC_CI_AS  NULL,
  [templateid] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [defaultreply] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [is_customservice] bit DEFAULT ((0)) NULL,
  [mpqrcode] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [sub_mch_id] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [use_sub_mch] bit DEFAULT ((0)) NULL,
  [qrurl] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [sisspaymch_id] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [sisspaykey] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [payway] char(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [coupontmpid] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [couponoutdatetmpid] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [viparrivaltmpid] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [tradefailtmpid] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[t_wx_set] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for t_wxa_basicset
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_wxa_basicset]') AND type IN ('U'))
	DROP TABLE [dbo].[t_wxa_basicset]
GO

CREATE TABLE [dbo].[t_wxa_basicset] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [limitnum] int  NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [wxaname] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [inspect_minute] int DEFAULT ((3)) NOT NULL,
  [tel] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [changeprice] bit DEFAULT ((0)) NOT NULL,
  [wxpayactionreport] bit DEFAULT ((0)) NOT NULL,
  [paytypes] varchar(50) COLLATE Chinese_PRC_CI_AS DEFAULT ('2') NOT NULL,
  [custombarcode] bit DEFAULT ((0)) NOT NULL,
  [shoppingbag] bit DEFAULT ((0)) NOT NULL,
  [underlinesaleplan] bit DEFAULT ((0)) NOT NULL,
  [goodstag] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [alipay_partnerid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [category] varchar(50) COLLATE Chinese_PRC_CI_AS DEFAULT ('independent') NULL,
  [sisspaymch] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [appid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [is_open_register] bit DEFAULT ((1)) NULL,
  [is_open_bind] bit DEFAULT ((1)) NULL
)
GO

ALTER TABLE [dbo].[t_wxa_basicset] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'商品价格为0时，是否允许手动输入价格',
'SCHEMA', N'dbo',
'TABLE', N't_wxa_basicset',
'COLUMN', N'changeprice'
GO


-- ----------------------------
-- Table structure for t_wxa_cart
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_wxa_cart]') AND type IN ('U'))
	DROP TABLE [dbo].[t_wxa_cart]
GO

CREATE TABLE [dbo].[t_wxa_cart] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [openid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [cardid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [branchno] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [itemname] varchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [cartno] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [oldprice] decimal(18,4)  NOT NULL,
  [price] decimal(18,4)  NOT NULL,
  [num] decimal(18,4)  NOT NULL,
  [amt] decimal(18,4)  NOT NULL,
  [itemno] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [barcode] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [unit] varchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [spec] varchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [spec_flag] varchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [plan_no] varchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [isfreshgoods] varchar(2) COLLATE Chinese_PRC_CI_AS  NULL,
  [goodstype] varchar(2) COLLATE Chinese_PRC_CI_AS  NULL,
  [adddate] datetime  NOT NULL,
  [item_flow_id] int  NOT NULL,
  [is_promote] varchar(2) COLLATE Chinese_PRC_CI_AS  NULL,
  [promote_detail] varchar(2000) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[t_wxa_cart] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for t_wxa_codemanage
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_wxa_codemanage]') AND type IN ('U'))
	DROP TABLE [dbo].[t_wxa_codemanage]
GO

CREATE TABLE [dbo].[t_wxa_codemanage] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [templeteid] int  NULL,
  [user_version] varchar(250) COLLATE Chinese_PRC_CI_AS  NULL,
  [user_desc] varchar(250) COLLATE Chinese_PRC_CI_AS  NULL,
  [codecommit_status] varchar(2) COLLATE Chinese_PRC_CI_AS  NULL,
  [codecommit_date] datetime  NULL,
  [codecommit_result] varchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [codeaudit_status] varchar(2) COLLATE Chinese_PRC_CI_AS  NULL,
  [codeaudit_date] datetime  NULL,
  [codeaudit_result] varchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [appid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [codeaudit_id] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [audit_status] varchar(2) COLLATE Chinese_PRC_CI_AS  NULL,
  [audit_reason] varchar(1000) COLLATE Chinese_PRC_CI_AS  NULL,
  [release_status] varchar(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [release_reason] varchar(1000) COLLATE Chinese_PRC_CI_AS  NULL,
  [wxatype] varchar(50) COLLATE Chinese_PRC_CI_AS DEFAULT ('saomagou') NOT NULL
)
GO

ALTER TABLE [dbo].[t_wxa_codemanage] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for t_wxa_codetemplete
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_wxa_codetemplete]') AND type IN ('U'))
	DROP TABLE [dbo].[t_wxa_codetemplete]
GO

CREATE TABLE [dbo].[t_wxa_codetemplete] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [template_id] int  NOT NULL,
  [user_version] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [user_desc] varchar(1000) COLLATE Chinese_PRC_CI_AS  NULL,
  [wxatype] varchar(50) COLLATE Chinese_PRC_CI_AS DEFAULT ('saomagou') NOT NULL
)
GO

ALTER TABLE [dbo].[t_wxa_codetemplete] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for t_wxa_ordercancel
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_wxa_ordercancel]') AND type IN ('U'))
	DROP TABLE [dbo].[t_wxa_ordercancel]
GO

CREATE TABLE [dbo].[t_wxa_ordercancel] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [orderno] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [need_refund_money] varchar(2) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [cancel_from] varchar(2) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [cancel_oper_id] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [apply_date] datetime  NOT NULL,
  [cancel_date] datetime  NULL,
  [refund_status] varchar(2) COLLATE Chinese_PRC_CI_AS  NULL,
  [refund_date] datetime  NULL,
  [memo] varchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [audit_status] varchar(2) COLLATE Chinese_PRC_CI_AS  NULL,
  [audit_date] datetime  NULL,
  [openid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [apply_reason] varchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [audit_result] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [refund_result] varchar(200) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[t_wxa_ordercancel] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for t_wxa_orderdetail
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_wxa_orderdetail]') AND type IN ('U'))
	DROP TABLE [dbo].[t_wxa_orderdetail]
GO

CREATE TABLE [dbo].[t_wxa_orderdetail] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [orderno] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [cardid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [openid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [itembarcode] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [itemno] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [itemname] varchar(250) COLLATE Chinese_PRC_CI_AS  NULL,
  [price] decimal(18,4)  NOT NULL,
  [oldprice] decimal(18,4)  NOT NULL,
  [unit] varchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [spec] varchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [num] int  NOT NULL,
  [spec_flag] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [plan_no] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[t_wxa_orderdetail] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for t_wxa_ordermaster
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_wxa_ordermaster]') AND type IN ('U'))
	DROP TABLE [dbo].[t_wxa_ordermaster]
GO

CREATE TABLE [dbo].[t_wxa_ordermaster] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [orderno] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [branchno] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [branchname] varchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [cardid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [openid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [payway] varchar(2) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [paystatus] varchar(2) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [amt] decimal(18,4)  NOT NULL,
  [orderdesc] varchar(1000) COLLATE Chinese_PRC_CI_AS  NULL,
  [ordertime] datetime  NOT NULL,
  [paytime] datetime  NULL,
  [opertime] datetime  NULL,
  [status] varchar(2) COLLATE Chinese_PRC_CI_AS  NULL,
  [form_id] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [trade_state] varchar(250) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[t_wxa_ordermaster] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'支付回调的交易状态',
'SCHEMA', N'dbo',
'TABLE', N't_wxa_ordermaster',
'COLUMN', N'trade_state'
GO


-- ----------------------------
-- Table structure for t_wxa_pay
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_wxa_pay]') AND type IN ('U'))
	DROP TABLE [dbo].[t_wxa_pay]
GO

CREATE TABLE [dbo].[t_wxa_pay] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [openid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [appid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [orderno] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [transaction_id] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [total_amt] decimal(18,4)  NOT NULL,
  [paysate] varchar(2) COLLATE Chinese_PRC_CI_AS  NULL,
  [operdate] datetime  NULL,
  [status] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [ordertype] varchar(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [payway] varchar(2) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[t_wxa_pay] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for t_wxa_qrcode
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_wxa_qrcode]') AND type IN ('U'))
	DROP TABLE [dbo].[t_wxa_qrcode]
GO

CREATE TABLE [dbo].[t_wxa_qrcode] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [category] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [config] varchar(1000) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [imageurl] varchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [width] int  NOT NULL,
  [operdate] datetime  NOT NULL,
  [path] varchar(200) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[t_wxa_qrcode] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for t_wxa_send_templetemessage_record
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_wxa_send_templetemessage_record]') AND type IN ('U'))
	DROP TABLE [dbo].[t_wxa_send_templetemessage_record]
GO

CREATE TABLE [dbo].[t_wxa_send_templetemessage_record] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [openid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [templete_type] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [message] varchar(1000) COLLATE Chinese_PRC_CI_AS  NULL,
  [senddate] datetime  NOT NULL
)
GO

ALTER TABLE [dbo].[t_wxa_send_templetemessage_record] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for t_wxa_set
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_wxa_set]') AND type IN ('U'))
	DROP TABLE [dbo].[t_wxa_set]
GO

CREATE TABLE [dbo].[t_wxa_set] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [appid] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [branch_No] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [webUrl] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [appsecret] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [token] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [status_flag] char(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [operdate] datetime  NULL,
  [welcomeinfo] nvarchar(1024) COLLATE Chinese_PRC_CI_AS  NULL,
  [dogno] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [parentid] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [partnerkey] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [authorizer_refresh_token] varchar(1024) COLLATE Chinese_PRC_CI_AS  NULL,
  [authorizer_appid] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [authorizer_access_token] varchar(512) COLLATE Chinese_PRC_CI_AS  NULL,
  [wx_alias] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [wx_nick_name] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [wx_gh] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [service_type_info] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [verify_type_info] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [templateid] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [defaultreply] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [is_customservice] bit DEFAULT ((0)) NULL,
  [mpqrcode] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [sub_mch_id] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [use_sub_mch] bit DEFAULT ((0)) NULL,
  [qrurl] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [sisspaymch_id] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [payway] varchar(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [coupontmpid] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [couponoutdatetmpid] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [domainserver_config] varchar(2) COLLATE Chinese_PRC_CI_AS DEFAULT ('0') NULL,
  [setwebviewdomain] varchar(2) COLLATE Chinese_PRC_CI_AS  NULL,
  [domainserver_config_result] varchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [setwebviewdomain_result] varchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [wxa_openid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [bind_wxa_openid_date] datetime DEFAULT (getdate()) NULL
)
GO

ALTER TABLE [dbo].[t_wxa_set] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'公众号关注二维码原始地址',
'SCHEMA', N'dbo',
'TABLE', N't_wxa_set',
'COLUMN', N'qrurl'
GO

EXEC sp_addextendedproperty
'MS_Description', N'支付类型  为0或者null不选择   1微信原生 2思迅Pay',
'SCHEMA', N'dbo',
'TABLE', N't_wxa_set',
'COLUMN', N'payway'
GO


-- ----------------------------
-- Table structure for t_wxa_template_draf
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_wxa_template_draf]') AND type IN ('U'))
	DROP TABLE [dbo].[t_wxa_template_draf]
GO

CREATE TABLE [dbo].[t_wxa_template_draf] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [create_time] datetime  NOT NULL,
  [user_version] varchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [user_desc] varchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [draft_id] int  NOT NULL,
  [status] varchar(2) COLLATE Chinese_PRC_CI_AS  NULL,
  [operdate] datetime  NULL,
  [adddate] datetime  NOT NULL,
  [temptype] varchar(2) COLLATE Chinese_PRC_CI_AS  NULL,
  [enable_date] datetime  NULL,
  [enable_status] varchar(2) COLLATE Chinese_PRC_CI_AS  NULL,
  [not_enable_date] datetime  NULL,
  [select_tocodetemplete] varchar(2) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[t_wxa_template_draf] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for t_wxa_templete
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_wxa_templete]') AND type IN ('U'))
	DROP TABLE [dbo].[t_wxa_templete]
GO

CREATE TABLE [dbo].[t_wxa_templete] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [templete_id] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [templete_type] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [operdate] datetime  NOT NULL,
  [keyword_id_list] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[t_wxa_templete] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for t_wxa_tester
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_wxa_tester]') AND type IN ('U'))
	DROP TABLE [dbo].[t_wxa_tester]
GO

CREATE TABLE [dbo].[t_wxa_tester] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [wechatid] varchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [userstr] varchar(200) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [status] varchar(2) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [operdate] datetime  NOT NULL,
  [operlog] varchar(max) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[t_wxa_tester] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for t_wxa_user
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_wxa_user]') AND type IN ('U'))
	DROP TABLE [dbo].[t_wxa_user]
GO

CREATE TABLE [dbo].[t_wxa_user] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [openid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [phoneNumber] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [purePhoneNumber] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [countryCode] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [phoneTime] datetime  NULL,
  [appid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [addtime] datetime  NULL,
  [cardid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [oper] varchar(2) COLLATE Chinese_PRC_CI_AS  NULL,
  [realname] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [nickname] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [continuescan] bit DEFAULT ((0)) NOT NULL
)
GO

ALTER TABLE [dbo].[t_wxa_user] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for t_wxa_user_log
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_wxa_user_log]') AND type IN ('U'))
	DROP TABLE [dbo].[t_wxa_user_log]
GO

CREATE TABLE [dbo].[t_wxa_user_log] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [openid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [cardid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [oper] varchar(2) COLLATE Chinese_PRC_CI_AS  NULL,
  [operdate] datetime  NULL
)
GO

ALTER TABLE [dbo].[t_wxa_user_log] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for t_wxapp_set
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_wxapp_set]') AND type IN ('U'))
	DROP TABLE [dbo].[t_wxapp_set]
GO

CREATE TABLE [dbo].[t_wxapp_set] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [appid] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [branch_No] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [webUrl] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [appsecret] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [token] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [status_flag] char(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [operdate] datetime  NULL,
  [welcomeinfo] nvarchar(1024) COLLATE Chinese_PRC_CI_AS  NULL,
  [dogno] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [parentid] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [partnerkey] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [authorizer_refresh_token] varchar(1024) COLLATE Chinese_PRC_CI_AS  NULL,
  [authorizer_appid] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [authorizer_access_token] varchar(512) COLLATE Chinese_PRC_CI_AS  NULL,
  [wx_alias] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [wx_nick_name] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [wx_gh] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [service_type_info] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [verify_type_info] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [templateid] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [defaultreply] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [is_customservice] bit  NULL,
  [mpqrcode] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [sub_mch_id] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [use_sub_mch] bit  NULL,
  [qrurl] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [sisspaymch_id] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [payway] varchar(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [coupontmpid] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [couponoutdatetmpid] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[t_wxapp_set] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for t_wxmenu
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_wxmenu]') AND type IN ('U'))
	DROP TABLE [dbo].[t_wxmenu]
GO

CREATE TABLE [dbo].[t_wxmenu] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [ShopId] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [MenuNo] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [Title] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [Description] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [PicUrl] varchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [url] varchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [TypeNo] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [TypeOrderNo] nchar(10) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[t_wxmenu] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for t_wxmenu_Custom
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[t_wxmenu_Custom]') AND type IN ('U'))
	DROP TABLE [dbo].[t_wxmenu_Custom]
GO

CREATE TABLE [dbo].[t_wxmenu_Custom] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [menuno] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [title] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [Description] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [picurl] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [url] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [orderno] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [menunum] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[t_wxmenu_Custom] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for tb_sms
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_sms]') AND type IN ('U'))
	DROP TABLE [dbo].[tb_sms]
GO

CREATE TABLE [dbo].[tb_sms] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [openid] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [phone] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [type] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [code] varchar(2000) COLLATE Chinese_PRC_CI_AS  NULL,
  [detail_memo] nchar(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [sendtimer] datetime  NULL
)
GO

ALTER TABLE [dbo].[tb_sms] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for tb_sms_20190329
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_sms_20190329]') AND type IN ('U'))
	DROP TABLE [dbo].[tb_sms_20190329]
GO

CREATE TABLE [dbo].[tb_sms_20190329] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [openid] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [phone] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [type] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [code] varchar(2000) COLLATE Chinese_PRC_CI_AS  NULL,
  [detail_memo] nchar(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [sendtimer] datetime  NULL
)
GO

ALTER TABLE [dbo].[tb_sms_20190329] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for temp_giftgoods
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[temp_giftgoods]') AND type IN ('U'))
	DROP TABLE [dbo].[temp_giftgoods]
GO

CREATE TABLE [dbo].[temp_giftgoods] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [branchno] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [gift_no] varchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [gift_name] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [gift_pic] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [gift_info] varchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [gift_quantity] int  NULL,
  [gift_credit] decimal(20,4)  NULL,
  [start_time] datetime  NULL,
  [end_time] datetime  NULL,
  [limit_num] int  NULL
)
GO

ALTER TABLE [dbo].[temp_giftgoods] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for tempbranchs
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tempbranchs]') AND type IN ('U'))
	DROP TABLE [dbo].[tempbranchs]
GO

CREATE TABLE [dbo].[tempbranchs] (
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [brnchcount] int  NULL
)
GO

ALTER TABLE [dbo].[tempbranchs] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for tempbranchs2
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tempbranchs2]') AND type IN ('U'))
	DROP TABLE [dbo].[tempbranchs2]
GO

CREATE TABLE [dbo].[tempbranchs2] (
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [brnchcount] int  NULL
)
GO

ALTER TABLE [dbo].[tempbranchs2] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for tempitem
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tempitem]') AND type IN ('U'))
	DROP TABLE [dbo].[tempitem]
GO

CREATE TABLE [dbo].[tempitem] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [branch_no] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [item_no] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [item_name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [type_no] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [type_name] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [item_unit] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [item_spec] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [item_price] numeric(18,4) DEFAULT ((0)) NULL,
  [item_mprice] numeric(18,4) DEFAULT ((0)) NULL,
  [item_spell] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [branch_name] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [item_oldprice] numeric(18,4) DEFAULT ((0)) NULL,
  [operdate] datetime DEFAULT (getdate()) NULL,
  [item_subno] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [brandno] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [stock] int  NULL
)
GO

ALTER TABLE [dbo].[tempitem] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for tempitem0622
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tempitem0622]') AND type IN ('U'))
	DROP TABLE [dbo].[tempitem0622]
GO

CREATE TABLE [dbo].[tempitem0622] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [branch_no] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [item_no] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [item_name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [type_no] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [type_name] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [item_unit] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [item_spec] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [item_price] numeric(18,4)  NULL,
  [item_mprice] numeric(18,4)  NULL,
  [item_spell] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [branch_name] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [item_oldprice] numeric(18,4)  NULL,
  [operdate] datetime  NULL,
  [item_subno] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [brandno] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [stock] int  NULL
)
GO

ALTER TABLE [dbo].[tempitem0622] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for template_voucherdetail
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[template_voucherdetail]') AND type IN ('U'))
	DROP TABLE [dbo].[template_voucherdetail]
GO

CREATE TABLE [dbo].[template_voucherdetail] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [voucherid] bigint  NULL
)
GO

ALTER TABLE [dbo].[template_voucherdetail] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for tempvoucherbagdetail
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tempvoucherbagdetail]') AND type IN ('U'))
	DROP TABLE [dbo].[tempvoucherbagdetail]
GO

CREATE TABLE [dbo].[tempvoucherbagdetail] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [voucher_id] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [voucherbag_id] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [discountmoney] numeric(18,2)  NULL,
  [gift_num] int  NULL,
  [effectivedays] int  NULL,
  [memo] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [voucher_name] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [voucher_type] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [gift_range] varchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [Gift_cond] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [Gift_sum] decimal(18,2)  NULL,
  [valid_day_mode] varchar(2) COLLATE Chinese_PRC_CI_AS  NULL,
  [valid_begin_date] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [valid_end_date] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [dayafter_use] varchar(5) COLLATE Chinese_PRC_CI_AS  NULL,
  [itembranchnos] varchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [itembranchnames] varchar(500) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[tempvoucherbagdetail] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'有效期类型 1-固定日期  其他-按天数',
'SCHEMA', N'dbo',
'TABLE', N'tempvoucherbagdetail',
'COLUMN', N'valid_day_mode'
GO

EXEC sp_addextendedproperty
'MS_Description', N'有效期开始日期',
'SCHEMA', N'dbo',
'TABLE', N'tempvoucherbagdetail',
'COLUMN', N'valid_begin_date'
GO

EXEC sp_addextendedproperty
'MS_Description', N'有效期结束日期',
'SCHEMA', N'dbo',
'TABLE', N'tempvoucherbagdetail',
'COLUMN', N'valid_end_date'
GO

EXEC sp_addextendedproperty
'MS_Description', N'购买后多少天可用',
'SCHEMA', N'dbo',
'TABLE', N'tempvoucherbagdetail',
'COLUMN', N'dayafter_use'
GO


-- ----------------------------
-- Table structure for tempvoucherbaginfo
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tempvoucherbaginfo]') AND type IN ('U'))
	DROP TABLE [dbo].[tempvoucherbaginfo]
GO

CREATE TABLE [dbo].[tempvoucherbaginfo] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shop_id] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [bag_no] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [bag_name] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [price] numeric(18,2)  NULL,
  [accnum] numeric(18,2)  NULL,
  [pay_type] nchar(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [stock] int  NULL,
  [isstock] nvarchar(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [limit_num] int  NULL,
  [start_time] datetime  NULL,
  [end_time] datetime  NULL,
  [oper_date] datetime  NULL,
  [memo] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [useflag] nvarchar(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [salenum] int  NULL
)
GO

ALTER TABLE [dbo].[tempvoucherbaginfo] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for timer_readjust_price
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[timer_readjust_price]') AND type IN ('U'))
	DROP TABLE [dbo].[timer_readjust_price]
GO

CREATE TABLE [dbo].[timer_readjust_price] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [branch_no] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [name] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [start_time] datetime  NULL,
  [create_time] datetime  NULL,
  [enabled] bit  NULL,
  [isfinish] bit  NULL
)
GO

ALTER TABLE [dbo].[timer_readjust_price] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for timer_readjust_price_product
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[timer_readjust_price_product]') AND type IN ('U'))
	DROP TABLE [dbo].[timer_readjust_price_product]
GO

CREATE TABLE [dbo].[timer_readjust_price_product] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [branch_no] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [timer_readjust_priceid] bigint  NULL,
  [productid] bigint  NULL,
  [readjustprice] numeric(18,4)  NULL,
  [oldprice] numeric(18,4)  NULL,
  [isin_readjust] bit  NULL
)
GO

ALTER TABLE [dbo].[timer_readjust_price_product] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for user_branch
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[user_branch]') AND type IN ('U'))
	DROP TABLE [dbo].[user_branch]
GO

CREATE TABLE [dbo].[user_branch] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [userid] bigint  NULL,
  [branch_no] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [adddate] datetime  NULL
)
GO

ALTER TABLE [dbo].[user_branch] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for user_receive_notice
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[user_receive_notice]') AND type IN ('U'))
	DROP TABLE [dbo].[user_receive_notice]
GO

CREATE TABLE [dbo].[user_receive_notice] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [operdate] datetime  NULL,
  [sys_notice_id] bigint  NOT NULL,
  [openid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[user_receive_notice] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for voucher_bag_detail
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[voucher_bag_detail]') AND type IN ('U'))
	DROP TABLE [dbo].[voucher_bag_detail]
GO

CREATE TABLE [dbo].[voucher_bag_detail] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [voucher_id] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [voucherbag_name] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [type] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [fullmoney] numeric(18,2)  NOT NULL,
  [discountmoney] numeric(18,2)  NOT NULL,
  [itemtypes] varchar(300) COLLATE Chinese_PRC_CI_AS  NULL,
  [itemsingletypes] varchar(300) COLLATE Chinese_PRC_CI_AS  NULL,
  [effectivedays] int  NULL,
  [effectiveway] varchar(2) COLLATE Chinese_PRC_CI_AS  NULL,
  [start_time] datetime  NULL,
  [end_time] datetime  NULL,
  [operdate] datetime  NULL,
  [memo] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [voucherbag_id] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [voucher_name] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [gift_num] int  NULL,
  [voucher_type] int  NULL,
  [brand_type] int  NULL,
  [canuse_type] int  NULL,
  [dayafter_use] varchar(5) COLLATE Chinese_PRC_CI_AS  NULL,
  [itembranchnos] varchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [itembranchnames] varchar(500) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[voucher_bag_detail] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'购买后多少天可用',
'SCHEMA', N'dbo',
'TABLE', N'voucher_bag_detail',
'COLUMN', N'dayafter_use'
GO


-- ----------------------------
-- Table structure for voucher_bag_info
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[voucher_bag_info]') AND type IN ('U'))
	DROP TABLE [dbo].[voucher_bag_info]
GO

CREATE TABLE [dbo].[voucher_bag_info] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [bag_no] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [bag_name] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [pay_type] varchar(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [accnum] numeric(18,2)  NULL,
  [price] numeric(18,2)  NULL,
  [stock] int  NULL,
  [isstock] bit  NULL,
  [limit_num] int  NULL,
  [start_time] datetime  NULL,
  [end_time] datetime  NULL,
  [operdate] datetime  NULL,
  [memo] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [useflag] bit  NULL,
  [salenum] int  NULL,
  [bag_type] int  NULL
)
GO

ALTER TABLE [dbo].[voucher_bag_info] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for voucher_bag_limitnum
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[voucher_bag_limitnum]') AND type IN ('U'))
	DROP TABLE [dbo].[voucher_bag_limitnum]
GO

CREATE TABLE [dbo].[voucher_bag_limitnum] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [openid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [bag_info_id] bigint  NULL,
  [num] int  NULL,
  [bag_no] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[voucher_bag_limitnum] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for voucher_bag_order
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[voucher_bag_order]') AND type IN ('U'))
	DROP TABLE [dbo].[voucher_bag_order]
GO

CREATE TABLE [dbo].[voucher_bag_order] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [openid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [card_id] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [bag_info_id] bigint  NULL,
  [orderno] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [total_cost] numeric(18,2)  NOT NULL,
  [total_amt] int  NULL,
  [payflag] int  NULL,
  [paymode] int  NULL,
  [state] int  NULL,
  [orderman] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [ordertel] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [memo] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [operdate] datetime  NULL,
  [bag_no] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[voucher_bag_order] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for vouchercode
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[vouchercode]') AND type IN ('U'))
	DROP TABLE [dbo].[vouchercode]
GO

CREATE TABLE [dbo].[vouchercode] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [openid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [cardid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [voucherid] bigint  NOT NULL,
  [branchno] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [useflag] char(1) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [operdate] datetime  NOT NULL,
  [randomcode] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[vouchercode] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'商户ID',
'SCHEMA', N'dbo',
'TABLE', N'vouchercode',
'COLUMN', N'shopid'
GO

EXEC sp_addextendedproperty
'MS_Description', N'门店',
'SCHEMA', N'dbo',
'TABLE', N'vouchercode',
'COLUMN', N'branchno'
GO


-- ----------------------------
-- Table structure for voucherdetail
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[voucherdetail]') AND type IN ('U'))
	DROP TABLE [dbo].[voucherdetail]
GO

CREATE TABLE [dbo].[voucherdetail] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [branchno] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [fullmoney] decimal(18,2)  NOT NULL,
  [discountmoney] decimal(18,2)  NOT NULL,
  [starttime] datetime  NOT NULL,
  [endtime] datetime  NOT NULL,
  [operdate] datetime  NULL,
  [type] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [useflag] varchar(50) COLLATE Chinese_PRC_CI_AS DEFAULT ('0') NOT NULL,
  [openid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [usedate] datetime  NULL,
  [useorderno] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [voucherid] bigint  NULL,
  [vouchername] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [phoneno] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [vipname] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [getorderno] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [itemtypes] text COLLATE Chinese_PRC_CI_AS  NULL,
  [invited_openid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [itemsingletypes] text COLLATE Chinese_PRC_CI_AS  NULL,
  [effectivedays] int  NULL,
  [effectiveway] varchar(2) COLLATE Chinese_PRC_CI_AS  NULL,
  [isaccept] bit DEFAULT ((0)) NOT NULL,
  [card_id] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [sendvoucher_saleclerkno] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [isoutdateremind] int  NULL,
  [isdisable] int  NULL,
  [disabletime] datetime  NULL,
  [branchtypes] text COLLATE Chinese_PRC_CI_AS  NULL,
  [branchtypesname] text COLLATE Chinese_PRC_CI_AS  NULL,
  [ispointvoucher] bit DEFAULT ((0)) NOT NULL,
  [fromorderno] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[voucherdetail] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'20160725新增满减送券后记录相应的订单号',
'SCHEMA', N'dbo',
'TABLE', N'voucherdetail',
'COLUMN', N'getorderno'
GO

EXEC sp_addextendedproperty
'MS_Description', N'限定的类别编号，用半角逗号隔开',
'SCHEMA', N'dbo',
'TABLE', N'voucherdetail',
'COLUMN', N'itemtypes'
GO

EXEC sp_addextendedproperty
'MS_Description', N'优惠券按商品设置',
'SCHEMA', N'dbo',
'TABLE', N'voucherdetail',
'COLUMN', N'itemsingletypes'
GO


-- ----------------------------
-- Table structure for voucherdetail2.5_20190918
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[voucherdetail2.5_20190918]') AND type IN ('U'))
	DROP TABLE [dbo].[voucherdetail2.5_20190918]
GO

CREATE TABLE [dbo].[voucherdetail2.5_20190918] (
  [Id] bigint  NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [branchno] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [fullmoney] decimal(18,2)  NOT NULL,
  [discountmoney] decimal(18,2)  NOT NULL,
  [starttime] datetime  NOT NULL,
  [endtime] datetime  NOT NULL,
  [operdate] datetime  NULL,
  [type] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [useflag] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [openid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [usedate] datetime  NULL,
  [useorderno] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [voucherid] bigint  NULL,
  [vouchername] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [phoneno] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [vipname] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [getorderno] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [itemtypes] text COLLATE Chinese_PRC_CI_AS  NULL,
  [invited_openid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [itemsingletypes] text COLLATE Chinese_PRC_CI_AS  NULL,
  [effectivedays] int  NULL,
  [effectiveway] varchar(2) COLLATE Chinese_PRC_CI_AS  NULL,
  [isaccept] bit  NOT NULL,
  [card_id] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [sendvoucher_saleclerkno] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [isoutdateremind] int  NULL,
  [isdisable] int  NULL,
  [disabletime] datetime  NULL,
  [branchtypes] text COLLATE Chinese_PRC_CI_AS  NULL,
  [branchtypesname] text COLLATE Chinese_PRC_CI_AS  NULL,
  [ispointvoucher] bit  NOT NULL,
  [fromorderno] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[voucherdetail2.5_20190918] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for wftpaydata
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[wftpaydata]') AND type IN ('U'))
	DROP TABLE [dbo].[wftpaydata]
GO

CREATE TABLE [dbo].[wftpaydata] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [version] varchar(50) COLLATE Chinese_PRC_CI_AS DEFAULT ((2.0)) NOT NULL,
  [charset] varchar(50) COLLATE Chinese_PRC_CI_AS DEFAULT ('UTF-8') NOT NULL,
  [sign_type] varchar(50) COLLATE Chinese_PRC_CI_AS DEFAULT ('MD5') NOT NULL,
  [status] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [message] varchar(250) COLLATE Chinese_PRC_CI_AS  NULL,
  [result_code] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [mch_id] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [device_info] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [nonce_str] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [err_code] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [err_msg] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [sign] varchar(250) COLLATE Chinese_PRC_CI_AS  NULL,
  [openid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [trade_type] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [is_subscribe] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [pay_result] int  NOT NULL,
  [pay_info] varchar(250) COLLATE Chinese_PRC_CI_AS  NULL,
  [transaction_id] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [out_transaction_id] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [sub_is_subscribe] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [sub_appid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [sub_openid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [out_trade_no] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [total_fee] int  NOT NULL,
  [coupon_fee] int  NOT NULL,
  [fee_type] varchar(50) COLLATE Chinese_PRC_CI_AS DEFAULT ('CNY') NOT NULL,
  [attach] varchar(250) COLLATE Chinese_PRC_CI_AS  NULL,
  [bank_type] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [bank_billno] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [time_end] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[wftpaydata] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'版本号，version默认值是2.0。',
'SCHEMA', N'dbo',
'TABLE', N'wftpaydata',
'COLUMN', N'version'
GO

EXEC sp_addextendedproperty
'MS_Description', N'可选值 UTF-8 ，默认为 UTF-8。',
'SCHEMA', N'dbo',
'TABLE', N'wftpaydata',
'COLUMN', N'charset'
GO

EXEC sp_addextendedproperty
'MS_Description', N'签名类型，取值：MD5默认：MD5',
'SCHEMA', N'dbo',
'TABLE', N'wftpaydata',
'COLUMN', N'sign_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'0表示成功，非0表示失败此字段是通信标识，非交易标识，交易是否成功需要查看 result_code 来判断',
'SCHEMA', N'dbo',
'TABLE', N'wftpaydata',
'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'返回信息，如非空，为错误原因签名失败参数格式校验错误',
'SCHEMA', N'dbo',
'TABLE', N'wftpaydata',
'COLUMN', N'message'
GO

EXEC sp_addextendedproperty
'MS_Description', N'业务结果 0表示成功非0表示失败',
'SCHEMA', N'dbo',
'TABLE', N'wftpaydata',
'COLUMN', N'result_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'商户号，由平台分配',
'SCHEMA', N'dbo',
'TABLE', N'wftpaydata',
'COLUMN', N'mch_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'终端设备号',
'SCHEMA', N'dbo',
'TABLE', N'wftpaydata',
'COLUMN', N'device_info'
GO

EXEC sp_addextendedproperty
'MS_Description', N'随机字符串，不长于 32 位',
'SCHEMA', N'dbo',
'TABLE', N'wftpaydata',
'COLUMN', N'nonce_str'
GO

EXEC sp_addextendedproperty
'MS_Description', N'参考错误码',
'SCHEMA', N'dbo',
'TABLE', N'wftpaydata',
'COLUMN', N'err_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'结果信息描述',
'SCHEMA', N'dbo',
'TABLE', N'wftpaydata',
'COLUMN', N'err_msg'
GO

EXEC sp_addextendedproperty
'MS_Description', N'MD5签名结果',
'SCHEMA', N'dbo',
'TABLE', N'wftpaydata',
'COLUMN', N'sign'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户在商户 appid 下的唯一标识',
'SCHEMA', N'dbo',
'TABLE', N'wftpaydata',
'COLUMN', N'openid'
GO

EXEC sp_addextendedproperty
'MS_Description', N'交易类型 pay.weixin.jspay',
'SCHEMA', N'dbo',
'TABLE', N'wftpaydata',
'COLUMN', N'trade_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户是否关注公众账号，Y-关注，N-未关注，仅在公众账号类型支付有效',
'SCHEMA', N'dbo',
'TABLE', N'wftpaydata',
'COLUMN', N'is_subscribe'
GO

EXEC sp_addextendedproperty
'MS_Description', N'支付结果：0—成功；其它—失败',
'SCHEMA', N'dbo',
'TABLE', N'wftpaydata',
'COLUMN', N'pay_result'
GO

EXEC sp_addextendedproperty
'MS_Description', N'支付结果信息，支付成功时为空',
'SCHEMA', N'dbo',
'TABLE', N'wftpaydata',
'COLUMN', N'pay_info'
GO

EXEC sp_addextendedproperty
'MS_Description', N'平台交易号',
'SCHEMA', N'dbo',
'TABLE', N'wftpaydata',
'COLUMN', N'transaction_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'第三方订单号',
'SCHEMA', N'dbo',
'TABLE', N'wftpaydata',
'COLUMN', N'out_transaction_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户是否关注子公众账号，Y-关注，N-未关注，仅在公众账号类型支付有效',
'SCHEMA', N'dbo',
'TABLE', N'wftpaydata',
'COLUMN', N'sub_is_subscribe'
GO

EXEC sp_addextendedproperty
'MS_Description', N'子商户appid',
'SCHEMA', N'dbo',
'TABLE', N'wftpaydata',
'COLUMN', N'sub_appid'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户在商户 sub_appid 下的唯一标识',
'SCHEMA', N'dbo',
'TABLE', N'wftpaydata',
'COLUMN', N'sub_openid'
GO

EXEC sp_addextendedproperty
'MS_Description', N'商户订单号  商户系统内部的定单号，32个字符内、可包含字母',
'SCHEMA', N'dbo',
'TABLE', N'wftpaydata',
'COLUMN', N'out_trade_no'
GO

EXEC sp_addextendedproperty
'MS_Description', N'总金额，以分为单位，不允许包含任何字、符号',
'SCHEMA', N'dbo',
'TABLE', N'wftpaydata',
'COLUMN', N'total_fee'
GO

EXEC sp_addextendedproperty
'MS_Description', N'现金券支付金额<=订单总金额， 订单总金额-现金券金额为现金支付金额',
'SCHEMA', N'dbo',
'TABLE', N'wftpaydata',
'COLUMN', N'coupon_fee'
GO

EXEC sp_addextendedproperty
'MS_Description', N'货币类型，符合 ISO 4217 标准的三位字母代码，默认人民币：CNY',
'SCHEMA', N'dbo',
'TABLE', N'wftpaydata',
'COLUMN', N'fee_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'附加信息',
'SCHEMA', N'dbo',
'TABLE', N'wftpaydata',
'COLUMN', N'attach'
GO

EXEC sp_addextendedproperty
'MS_Description', N'银行类型',
'SCHEMA', N'dbo',
'TABLE', N'wftpaydata',
'COLUMN', N'bank_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'银行订单号，若为微信支付则为空',
'SCHEMA', N'dbo',
'TABLE', N'wftpaydata',
'COLUMN', N'bank_billno'
GO

EXEC sp_addextendedproperty
'MS_Description', N'支付完成时间，格式为yyyyMMddHHmmss，如2009年12月27日9点10分10秒表示为20091227091010。时区为GMT+8 beijing。该时间取自平台服务器',
'SCHEMA', N'dbo',
'TABLE', N'wftpaydata',
'COLUMN', N'time_end'
GO


-- ----------------------------
-- Table structure for wftrefunddata
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[wftrefunddata]') AND type IN ('U'))
	DROP TABLE [dbo].[wftrefunddata]
GO

CREATE TABLE [dbo].[wftrefunddata] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [version] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [charset] varchar(50) COLLATE Chinese_PRC_CI_AS DEFAULT ('UTF-8') NULL,
  [sign_type] varchar(50) COLLATE Chinese_PRC_CI_AS DEFAULT ('MD5') NULL,
  [status] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [message] varchar(250) COLLATE Chinese_PRC_CI_AS  NULL,
  [result_code] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [mch_id] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [device_info] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [nonce_str] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [err_code] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [sign] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [transaction_id] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [out_trade_no] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [out_refund_no] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [refund_id] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [refund_channel] varchar(50) COLLATE Chinese_PRC_CI_AS DEFAULT ('ORIGINAL') NULL,
  [refund_fee] int  NOT NULL,
  [coupon_refund_fee] int  NULL
)
GO

ALTER TABLE [dbo].[wftrefunddata] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'版本号，version默认值是2.0。',
'SCHEMA', N'dbo',
'TABLE', N'wftrefunddata',
'COLUMN', N'version'
GO

EXEC sp_addextendedproperty
'MS_Description', N'可选值 UTF-8 ，默认为 UTF-8。',
'SCHEMA', N'dbo',
'TABLE', N'wftrefunddata',
'COLUMN', N'charset'
GO

EXEC sp_addextendedproperty
'MS_Description', N'签名类型，取值：MD5默认：MD5',
'SCHEMA', N'dbo',
'TABLE', N'wftrefunddata',
'COLUMN', N'sign_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'返回状态码0表示成功，非0表示失败此字段是通信标识，非交易标识，交易是否成功需要查看 result_code 来判断',
'SCHEMA', N'dbo',
'TABLE', N'wftrefunddata',
'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'返回信息，如非空，为错误原因签名失败参数格式校验错误',
'SCHEMA', N'dbo',
'TABLE', N'wftrefunddata',
'COLUMN', N'message'
GO

EXEC sp_addextendedproperty
'MS_Description', N'业务结果 0表示成功，非0表示失败',
'SCHEMA', N'dbo',
'TABLE', N'wftrefunddata',
'COLUMN', N'result_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'商户号，由平台分配',
'SCHEMA', N'dbo',
'TABLE', N'wftrefunddata',
'COLUMN', N'mch_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'设备号 平台支付分配的终端设备号',
'SCHEMA', N'dbo',
'TABLE', N'wftrefunddata',
'COLUMN', N'device_info'
GO

EXEC sp_addextendedproperty
'MS_Description', N'随机字符串，不长于 32 位',
'SCHEMA', N'dbo',
'TABLE', N'wftrefunddata',
'COLUMN', N'nonce_str'
GO

EXEC sp_addextendedproperty
'MS_Description', N'参考错误码',
'SCHEMA', N'dbo',
'TABLE', N'wftrefunddata',
'COLUMN', N'err_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'MD5签名结果，详见“安全规范”',
'SCHEMA', N'dbo',
'TABLE', N'wftrefunddata',
'COLUMN', N'sign'
GO

EXEC sp_addextendedproperty
'MS_Description', N'平台交易号',
'SCHEMA', N'dbo',
'TABLE', N'wftrefunddata',
'COLUMN', N'transaction_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'商户系统内部的订单号',
'SCHEMA', N'dbo',
'TABLE', N'wftrefunddata',
'COLUMN', N'out_trade_no'
GO

EXEC sp_addextendedproperty
'MS_Description', N'商户退款单号',
'SCHEMA', N'dbo',
'TABLE', N'wftrefunddata',
'COLUMN', N'out_refund_no'
GO

EXEC sp_addextendedproperty
'MS_Description', N'平台退款单号',
'SCHEMA', N'dbo',
'TABLE', N'wftrefunddata',
'COLUMN', N'refund_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'退款渠道',
'SCHEMA', N'dbo',
'TABLE', N'wftrefunddata',
'COLUMN', N'refund_channel'
GO

EXEC sp_addextendedproperty
'MS_Description', N'退款总金额,单位为分,可以做部分退款',
'SCHEMA', N'dbo',
'TABLE', N'wftrefunddata',
'COLUMN', N'refund_fee'
GO

EXEC sp_addextendedproperty
'MS_Description', N'现金券退款金额 <= 退款金额， 退款金额-现金券退款金额为现金',
'SCHEMA', N'dbo',
'TABLE', N'wftrefunddata',
'COLUMN', N'coupon_refund_fee'
GO


-- ----------------------------
-- Table structure for wx_activity_setting
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[wx_activity_setting]') AND type IN ('U'))
	DROP TABLE [dbo].[wx_activity_setting]
GO

CREATE TABLE [dbo].[wx_activity_setting] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [appstype] char(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [accnum] int  NULL
)
GO

ALTER TABLE [dbo].[wx_activity_setting] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for wx_authorizer_access_token
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[wx_authorizer_access_token]') AND type IN ('U'))
	DROP TABLE [dbo].[wx_authorizer_access_token]
GO

CREATE TABLE [dbo].[wx_authorizer_access_token] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [authorizer_appid] varchar(150) COLLATE Chinese_PRC_CI_AS  NULL,
  [authorizer_access_token] varchar(512) COLLATE Chinese_PRC_CI_AS  NULL,
  [expires_in] int DEFAULT ((0)) NULL,
  [authorizer_refresh_token] varchar(512) COLLATE Chinese_PRC_CI_AS  NULL,
  [expires_time] datetime  NULL,
  [call_num] int DEFAULT ((0)) NULL
)
GO

ALTER TABLE [dbo].[wx_authorizer_access_token] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for wx_checkin_actioninfo
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[wx_checkin_actioninfo]') AND type IN ('U'))
	DROP TABLE [dbo].[wx_checkin_actioninfo]
GO

CREATE TABLE [dbo].[wx_checkin_actioninfo] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [accnum] decimal(18,2) DEFAULT ((0)) NULL,
  [maxaccnum] decimal(18,2) DEFAULT ((1)) NULL,
  [is_active] bit DEFAULT ((1)) NULL,
  [operdate] datetime DEFAULT (getdate()) NULL,
  [doublecycle] int DEFAULT ((7)) NULL,
  [israndomacc] bit DEFAULT ((0)) NOT NULL,
  [isdoubleacc] bit DEFAULT ((0)) NOT NULL,
  [checkinbg] varchar(250) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[wx_checkin_actioninfo] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'积分数',
'SCHEMA', N'dbo',
'TABLE', N'wx_checkin_actioninfo',
'COLUMN', N'accnum'
GO

EXEC sp_addextendedproperty
'MS_Description', N'签到背景图',
'SCHEMA', N'dbo',
'TABLE', N'wx_checkin_actioninfo',
'COLUMN', N'checkinbg'
GO


-- ----------------------------
-- Table structure for wx_component_access_token
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[wx_component_access_token]') AND type IN ('U'))
	DROP TABLE [dbo].[wx_component_access_token]
GO

CREATE TABLE [dbo].[wx_component_access_token] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [component_appid] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [component_access_token] varchar(250) COLLATE Chinese_PRC_CI_AS  NULL,
  [expires_in] int  NULL,
  [expires_time] datetime  NULL,
  [call_num] int DEFAULT ((1)) NULL
)
GO

ALTER TABLE [dbo].[wx_component_access_token] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for wx_jsapi_ticket
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[wx_jsapi_ticket]') AND type IN ('U'))
	DROP TABLE [dbo].[wx_jsapi_ticket]
GO

CREATE TABLE [dbo].[wx_jsapi_ticket] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [appid] varchar(150) COLLATE Chinese_PRC_CI_AS  NULL,
  [ticket] varchar(512) COLLATE Chinese_PRC_CI_AS  NULL,
  [expires_in] int DEFAULT ((0)) NULL,
  [expires_time] datetime  NULL,
  [call_num] int DEFAULT ((1)) NULL
)
GO

ALTER TABLE [dbo].[wx_jsapi_ticket] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for wx_open_ticket
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[wx_open_ticket]') AND type IN ('U'))
	DROP TABLE [dbo].[wx_open_ticket]
GO

CREATE TABLE [dbo].[wx_open_ticket] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [AppId] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [CreateTime] datetime  NULL,
  [InfoType] varchar(50) COLLATE Chinese_PRC_CI_AS DEFAULT (getdate()) NULL,
  [ComponentVerifyTicket] varchar(250) COLLATE Chinese_PRC_CI_AS  NULL,
  [ExpiresTime] datetime  NULL
)
GO

ALTER TABLE [dbo].[wx_open_ticket] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for wx_registergift_actioninfo
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[wx_registergift_actioninfo]') AND type IN ('U'))
	DROP TABLE [dbo].[wx_registergift_actioninfo]
GO

CREATE TABLE [dbo].[wx_registergift_actioninfo] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [accnum] int  NULL,
  [is_active] bit  NULL,
  [operdate] datetime DEFAULT (getdate()) NULL,
  [awardtype] varchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [fixedamount] decimal(6,2) DEFAULT ((0.00)) NULL,
  [minrandomamount] decimal(6,2) DEFAULT ((0.00)) NULL,
  [maxrandomamount] decimal(6,2) DEFAULT ((0.00)) NULL
)
GO

ALTER TABLE [dbo].[wx_registergift_actioninfo] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for wxapp_authorizer_access_token
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[wxapp_authorizer_access_token]') AND type IN ('U'))
	DROP TABLE [dbo].[wxapp_authorizer_access_token]
GO

CREATE TABLE [dbo].[wxapp_authorizer_access_token] (
  [Id] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [authorizer_appid] varchar(150) COLLATE Chinese_PRC_CI_AS  NULL,
  [authorizer_access_token] varchar(512) COLLATE Chinese_PRC_CI_AS  NULL,
  [expires_in] int  NULL,
  [authorizer_refresh_token] varchar(512) COLLATE Chinese_PRC_CI_AS  NULL,
  [expires_time] datetime  NULL,
  [call_num] int  NULL
)
GO

ALTER TABLE [dbo].[wxapp_authorizer_access_token] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for WXSubMenu
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[WXSubMenu]') AND type IN ('U'))
	DROP TABLE [dbo].[WXSubMenu]
GO

CREATE TABLE [dbo].[WXSubMenu] (
  [ID] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [shopid] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [wx1_menuname] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [wx1_menu_url1] varchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [wx1_menu_url2] varchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [wx1_menu_url3] varchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [wx1_menu_url4] varchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [wx1_menu_url5] varchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [wx1_menu1] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [wx1_menu2] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [wx1_menu3] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [wx1_menu4] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [wx1_menu5] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [wx2_menuname] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [wx2_menu_url1] varchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [wx2_menu_url2] varchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [wx2_menu_url3] varchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [wx2_menu_url4] varchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [wx2_menu_url5] varchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [wx2_menu1] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [wx2_menu2] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [wx2_menu3] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [wx2_menu4] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [wx2_menu5] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [wx3_menuname] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [wx3_menu_url1] varchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [wx3_menu_url2] varchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [wx3_menu_url3] varchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [wx3_menu_url4] varchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [wx3_menu_url5] varchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [wx3_menu1] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [wx3_menu2] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [wx3_menu3] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [wx3_menu4] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [wx3_menu5] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [result] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [operdate] datetime  NULL,
  [menubtn1] bit DEFAULT ((0)) NOT NULL,
  [menubtn2] bit DEFAULT ((0)) NOT NULL,
  [menubtn3] bit DEFAULT ((0)) NOT NULL,
  [menubtnurl1] varchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [menubtnurl2] varchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [menubtnurl3] varchar(500) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[WXSubMenu] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Procedure structure for RowNumber
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[RowNumber]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[RowNumber]
GO

CREATE PROCEDURE [dbo].[RowNumber] @pageindex int,@pagesize int
AS
BEGIN

select * from 
(select ROW_NUMBER() OVER(order by CustomerID desc) as px,* from Customers) as a
where a.px between ((@pageindex - 1)* @pagesize + 1) and (@pageindex*@pagesize)

END
GO


-- ----------------------------
-- Procedure structure for helloworld
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[helloworld]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[helloworld]
GO

CREATE PROCEDURE [dbo].[helloworld] @pageindex int,@pagesize int
AS
BEGIN

select * from 
(select ROW_NUMBER() OVER(order by id desc) as px,* from [voucherdetail2.5_20190918]) as a
where a.px between ((@pageindex - 1)* @pagesize + 1) and (@pageindex*@pagesize)

END
GO


-- ----------------------------
-- Procedure structure for sp_who_lock
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_who_lock]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_who_lock]
GO

CREATE PROCEDURE [dbo].[sp_who_lock] 
as 
begin 
declare @spid int 
declare @blk int 
declare @count int 
declare @index int 
declare @lock tinyint 
set @lock=0 
create table #temp_who_lock 
( 
id int identity(1,1), 
spid int, 
blk int 
) 
if @@error<>0 return @@error 
insert into #temp_who_lock(spid,blk) 
select 0 ,blocked 
from (select * from master..sysprocesses where blocked>0)a 
where not exists(select * from master..sysprocesses where a.blocked =spid and blocked>0) 
union select spid,blocked from master..sysprocesses where blocked>0 
if @@error<>0 return @@error 
select @count=count(*),@index=1 from #temp_who_lock 
if @@error<>0 return @@error 
if @count=0 
begin 
select '没有阻塞和死锁信息' 
return 0 
end 
while @index<=@count 
begin 
if exists(select 1 from #temp_who_lock a where id>@index and exists(select 1 from #temp_who_lock where id<=@index and a.blk=spid)) 
begin 
set @lock=1 
select @spid=spid,@blk=blk from #temp_who_lock where id=@index 
select '引起数据库死锁的是: '+ CAST(@spid AS VARCHAR(10)) + '进程号,其执行的SQL语法如下' 
select @spid, @blk 
dbcc inputbuffer(@spid) 
dbcc inputbuffer(@blk) 
end 
set @index=@index+1 
end 
if @lock=0 
begin 
set @index=1 
while @index<=@count 
begin 
select @spid=spid,@blk=blk from #temp_who_lock where id=@index 
if @spid=0 
select '引起阻塞的是:'+cast(@blk as varchar(10))+ '进程号,其执行的SQL语法如下' 
else 
select '进程号SPID：'+ CAST(@spid AS VARCHAR(10))+ '被' + '进程号SPID：'+ CAST(@blk AS VARCHAR(10)) +'阻塞,其当前进程执行的SQL语法如下' 
dbcc inputbuffer(@spid) 
dbcc inputbuffer(@blk) 
set @index=@index+1 
end 
end 
drop table #temp_who_lock 
return 0 
end
GO


-- ----------------------------
-- Procedure structure for sp_lock_info
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_lock_info]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_lock_info]
GO

CREATE PROCEDURE [dbo].[sp_lock_info] 
as 
begin 
	declare 
		@spid int,@bl int, 
		@intTransactionCountOnEntry  int, 
		@intRowcount    int, 
		@intCountProperties   int, 
		@intCounter    int,
		@cmd	varchar(100) 
		
	declare	@t_lockinfo table(
		id numeric(16,0) identity,
		dbid	int,
		dbname	varchar(50),	
		spid	smallint,
		blockid smallint,
		is_lock	char(1),
		cmd		varchar(8000),
		sqltext	varchar(8000),
		oper_date datetime
	)
	
	declare @t_dbcc table(
		etype	varchar(200),
		eparms	varchar(200),
		sql		varchar(8000)
	)
	
	--获取锁的spid信息以及被锁定的spid信息
	insert into @t_lockinfo(dbid, dbname, spid, blockid, is_lock, cmd, oper_date)
	select b.dbid, dbname = DB_NAME(b.dbid), b.spid, 0, flag = '1',b.cmd, GETDATE()
	from sysprocesses b,
		( select * from sysprocesses where blocked > 0 ) a
	where a.blocked = a.spid
    union
	select dbid, dbname = DB_NAME(dbid), spid, blocked, flag= '0', cmd, GETDATE() from sysprocesses where blocked > 0
		
	select @intCountProperties = MAX(id) from @t_lockinfo
	if @intCountProperties is null
		set @intCountProperties = 0
		
	if @intCountProperties <= 0
		return
			
	--获取进程对应的语句信息
	set @intCounter = 1
	while @intCounter <= @intCountProperties 
	begin	
		select @spid = spid from @t_lockinfo where id = @intCounter
		if exists(select 1 from sysprocesses where spid = @spid)
		
		set @cmd = 'DBCC INPUTBUFFER(' + convert(varchar(20),@spid) + ')'
		insert into @t_dbcc
		EXEC (@cmd )
		
		update @t_lockinfo
		set sqltext = a.sql
		from @t_dbcc a
		where id = @intCounter
		
		delete @t_dbcc
		
		set @intCounter = @intCounter + 1
	end
	
	--select * from @t_lockinfo	
	
	--将数据插入到我们指定跟踪的数据库中
	insert into lockinfo.dbo.sp_lockinfo(dbid,dbname,spid,blockid,is_lock,cmd,sqltext,oper_date)
	select dbid,dbname,spid,blockid,is_lock,cmd,sqltext,oper_date from @t_lockinfo
end
GO


-- ----------------------------
-- Function structure for F_SplitLength
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[F_SplitLength]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP FUNCTION[dbo].[F_SplitLength]
GO

CREATE FUNCTION [dbo].[F_SplitLength] (  @String nvarchar(max),  --要分割的字符串  @Split nvarchar(10)  --分隔符号 ) returns int as begin  declare @location int  declare @start int  declare @length int  if LEN(@String)=0 or LEN(@String) is null  begin	  set @length=0;  end  else  begin	  set @String=ltrim(rtrim(@String))	  set @location=charindex(@split,@String)	  set @length=1	  while @location<>0 and @location<len(@String)	  begin		set @start=@location+1		set @location=charindex(@split,@String,@start)		set @length=@length+1	  end  end  return @length end
GO


-- ----------------------------
-- Auto increment value for BasicSet
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[BasicSet]', RESEED, 3)
GO


-- ----------------------------
-- Indexes structure for table BasicSet
-- ----------------------------
CREATE UNIQUE NONCLUSTERED INDEX [shopid]
ON [dbo].[BasicSet] (
  [shopid] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table BasicSet
-- ----------------------------
ALTER TABLE [dbo].[BasicSet] ADD CONSTRAINT [PK_BasicSet] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for BossAssistantChartConfig
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[BossAssistantChartConfig]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table BossAssistantChartConfig
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_shopid]
ON [dbo].[BossAssistantChartConfig] (
  [shopid] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table BossAssistantChartConfig
-- ----------------------------
ALTER TABLE [dbo].[BossAssistantChartConfig] ADD CONSTRAINT [PK_BossAssistantChartConfig] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for BossAssistantConfig
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[BossAssistantConfig]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table BossAssistantConfig
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_shopid]
ON [dbo].[BossAssistantConfig] (
  [shopid] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table BossAssistantConfig
-- ----------------------------
ALTER TABLE [dbo].[BossAssistantConfig] ADD CONSTRAINT [PK_BossAssistantConfig] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for buyfullpromotion
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[buyfullpromotion]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table buyfullpromotion
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_shopid_startdate_enddate]
ON [dbo].[buyfullpromotion] (
  [shopid] ASC,
  [startdate] ASC,
  [enddate] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table buyfullpromotion
-- ----------------------------
ALTER TABLE [dbo].[buyfullpromotion] ADD CONSTRAINT [PK_buyfullpromotion] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for buyfullpromotionorder
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[buyfullpromotionorder]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table buyfullpromotionorder
-- ----------------------------
CREATE UNIQUE NONCLUSTERED INDEX [IX_orderno]
ON [dbo].[buyfullpromotionorder] (
  [orderno] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table buyfullpromotionorder
-- ----------------------------
ALTER TABLE [dbo].[buyfullpromotionorder] ADD CONSTRAINT [PK_buyfullpromotionorder] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for chatrecord
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[chatrecord]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table chatrecord
-- ----------------------------
CREATE NONCLUSTERED INDEX [_dta_index_chatrecord_5_1379873396__K10_K1]
ON [dbo].[chatrecord] (
  [memberid] ASC
)
GO

CREATE NONCLUSTERED INDEX [idx_openid_isread]
ON [dbo].[chatrecord] (
  [receive_openid] ASC,
  [isread] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX]
ON [dbo].[chatrecord] (
  [shopid] ASC,
  [send_openid] ASC,
  [timestamp] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Date]
ON [dbo].[chatrecord] (
  [operdate] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table chatrecord
-- ----------------------------
ALTER TABLE [dbo].[chatrecord] ADD CONSTRAINT [PK__chatreco__3214EC07656C112C] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for childaccount
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[childaccount]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table childaccount
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_shopid_mobile]
ON [dbo].[childaccount] (
  [mobile] ASC,
  [shopid] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table childaccount
-- ----------------------------
ALTER TABLE [dbo].[childaccount] ADD CONSTRAINT [PK_userinfo] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for ClientVersions
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[ClientVersions]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table ClientVersions
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_version_code]
ON [dbo].[ClientVersions] (
  [Code] ASC,
  [Version] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table ClientVersions
-- ----------------------------
ALTER TABLE [dbo].[ClientVersions] ADD CONSTRAINT [PK_ClientVersions] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for customer_service
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[customer_service]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table customer_service
-- ----------------------------
ALTER TABLE [dbo].[customer_service] ADD CONSTRAINT [PK__customer__3214EC075DCAEF64] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for delivery_staff
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[delivery_staff]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table delivery_staff
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_shopid]
ON [dbo].[delivery_staff] (
  [staff_name] ASC,
  [shopid] ASC,
  [employ_state] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table delivery_staff
-- ----------------------------
ALTER TABLE [dbo].[delivery_staff] ADD CONSTRAINT [PK_delivery_staff] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for discountsale
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[discountsale]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table discountsale
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_shopid_startdate_enddate]
ON [dbo].[discountsale] (
  [shopid] ASC,
  [startdate] ASC,
  [enddate] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table discountsale
-- ----------------------------
ALTER TABLE [dbo].[discountsale] ADD CONSTRAINT [PK_discountsale] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for discountsaleitemcart
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[discountsaleitemcart]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table discountsaleitemcart
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_shopid_openid_status]
ON [dbo].[discountsaleitemcart] (
  [shopid] ASC,
  [openid] ASC,
  [status] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table discountsaleitemcart
-- ----------------------------
ALTER TABLE [dbo].[discountsaleitemcart] ADD CONSTRAINT [PK_discountsaleitemcart] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for discountsaleiteminfo
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[discountsaleiteminfo]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table discountsaleiteminfo
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_shopid_openid_itemno]
ON [dbo].[discountsaleiteminfo] (
  [shopid] ASC,
  [openid] ASC,
  [itemno] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table discountsaleiteminfo
-- ----------------------------
ALTER TABLE [dbo].[discountsaleiteminfo] ADD CONSTRAINT [PK_discountsaleiteminfo] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for discountsaleorder
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[discountsaleorder]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table discountsaleorder
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_openid]
ON [dbo].[discountsaleorder] (
  [openid] ASC
)
GO

CREATE UNIQUE NONCLUSTERED INDEX [IX_orderno]
ON [dbo].[discountsaleorder] (
  [orderno] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table discountsaleorder
-- ----------------------------
ALTER TABLE [dbo].[discountsaleorder] ADD CONSTRAINT [PK_discountsaleorder] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for discountvoucher
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[discountvoucher]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table discountvoucher
-- ----------------------------
CREATE NONCLUSTERED INDEX [shopid_useflag_type]
ON [dbo].[discountvoucher] (
  [shopid] ASC,
  [useflag] ASC,
  [type] ASC,
  [voucherstarttime] ASC,
  [voucherendtime] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table discountvoucher
-- ----------------------------
ALTER TABLE [dbo].[discountvoucher] ADD CONSTRAINT [PK_discountvoucher] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for express_company
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[express_company]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table express_company
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_shopid]
ON [dbo].[express_company] (
  [shopid] ASC,
  [expressname] ASC,
  [isshow] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table express_company
-- ----------------------------
ALTER TABLE [dbo].[express_company] ADD CONSTRAINT [PK_express_company] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for expressinfo
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[expressinfo]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table expressinfo
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX1]
ON [dbo].[expressinfo] (
  [orderid] ASC,
  [delivery_type] ASC,
  [express_no] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table expressinfo
-- ----------------------------
ALTER TABLE [dbo].[expressinfo] ADD CONSTRAINT [PK_expressinfo] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for KeyReply
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[KeyReply]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table KeyReply
-- ----------------------------
CREATE NONCLUSTERED INDEX [shopid]
ON [dbo].[KeyReply] (
  [shopid] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table KeyReply
-- ----------------------------
ALTER TABLE [dbo].[KeyReply] ADD CONSTRAINT [PK_KeyReply] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Log
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Log]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table Log
-- ----------------------------
CREATE CLUSTERED INDEX [IX_date]
ON [dbo].[Log] (
  [Date] ASC
)  
FILESTREAM_ON [NULL]
GO


-- ----------------------------
-- Primary Key structure for table Log
-- ----------------------------
ALTER TABLE [dbo].[Log] ADD CONSTRAINT [PK_Log] PRIMARY KEY NONCLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for loginlog_info
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[loginlog_info]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table loginlog_info
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_loginname_logintime]
ON [dbo].[loginlog_info] (
  [loginname] ASC,
  [logintime] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table loginlog_info
-- ----------------------------
ALTER TABLE [dbo].[loginlog_info] ADD CONSTRAINT [PK_loginlog_info] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for LogWXApp
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[LogWXApp]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table LogWXApp
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_date]
ON [dbo].[LogWXApp] (
  [Date] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table LogWXApp
-- ----------------------------
ALTER TABLE [dbo].[LogWXApp] ADD CONSTRAINT [PK_LogWXApp_1] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for member_card_set
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[member_card_set]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table member_card_set
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_shopid_isshow]
ON [dbo].[member_card_set] (
  [shopid] ASC,
  [isshow] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table member_card_set
-- ----------------------------
ALTER TABLE [dbo].[member_card_set] ADD CONSTRAINT [PK_member_card_set] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for offlinesaleclerk
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[offlinesaleclerk]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table offlinesaleclerk
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_shopid_branchno_clerkno]
ON [dbo].[offlinesaleclerk] (
  [shopid] ASC,
  [branchno] ASC,
  [clerkno] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table offlinesaleclerk
-- ----------------------------
ALTER TABLE [dbo].[offlinesaleclerk] ADD CONSTRAINT [PK_offlinesaleclerk] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for order_cancel
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[order_cancel]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table order_cancel
-- ----------------------------
CREATE UNIQUE NONCLUSTERED INDEX [IX_shopid_orderno]
ON [dbo].[order_cancel] (
  [shopid] ASC,
  [orderno] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table order_cancel
-- ----------------------------
ALTER TABLE [dbo].[order_cancel] ADD CONSTRAINT [PK_order_refund] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for ordertrack
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[ordertrack]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table ordertrack
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_orderno]
ON [dbo].[ordertrack] (
  [OrderNo] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table ordertrack
-- ----------------------------
ALTER TABLE [dbo].[ordertrack] ADD CONSTRAINT [PK_ordertrack] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for passwordvoucher
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[passwordvoucher]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table passwordvoucher
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX1]
ON [dbo].[passwordvoucher] (
  [shopid] ASC,
  [starttime] ASC,
  [endtime] ASC,
  [checkflag] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table passwordvoucher
-- ----------------------------
ALTER TABLE [dbo].[passwordvoucher] ADD CONSTRAINT [PK_passwordvoucher] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for passwordvouchercard
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[passwordvouchercard]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table passwordvouchercard
-- ----------------------------
CREATE UNIQUE NONCLUSTERED INDEX [IX_shopid_carno]
ON [dbo].[passwordvouchercard] (
  [shopid] ASC,
  [card_no] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX2]
ON [dbo].[passwordvouchercard] (
  [shopid] ASC,
  [card_no] ASC,
  [useflag] ASC,
  [order_no] ASC,
  [openid] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table passwordvouchercard
-- ----------------------------
ALTER TABLE [dbo].[passwordvouchercard] ADD CONSTRAINT [PK_passwordvouchercard] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for passwordvoucheritem
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[passwordvoucheritem]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table passwordvoucheritem
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX1]
ON [dbo].[passwordvoucheritem] (
  [shopid] ASC,
  [voucher_id] ASC,
  [item_no] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table passwordvoucheritem
-- ----------------------------
ALTER TABLE [dbo].[passwordvoucheritem] ADD CONSTRAINT [PK_passwordvoucheritem] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for passwordvoucherorder
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[passwordvoucherorder]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table passwordvoucherorder
-- ----------------------------
CREATE UNIQUE NONCLUSTERED INDEX [IX_shopid_order_no]
ON [dbo].[passwordvoucherorder] (
  [shopid] ASC,
  [order_no] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX1]
ON [dbo].[passwordvoucherorder] (
  [shopid] ASC,
  [order_no] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table passwordvoucherorder
-- ----------------------------
ALTER TABLE [dbo].[passwordvoucherorder] ADD CONSTRAINT [PK_passwordvoucherorder] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for paycode
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[paycode]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table paycode
-- ----------------------------
CREATE NONCLUSTERED INDEX [_dta_index_paycode_5_135671531__K8_K7_K6_K1_K2_3_4_5]
ON [dbo].[paycode] (
  [randomcode] ASC,
  [operdate] ASC,
  [useflag] ASC,
  [shopid] ASC
)
INCLUDE ([openid], [cardid], [branchno])
GO


-- ----------------------------
-- Primary Key structure for table paycode
-- ----------------------------
ALTER TABLE [dbo].[paycode] ADD CONSTRAINT [PK_paycode] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for paycode_log
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[paycode_log]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table paycode_log
-- ----------------------------
CREATE NONCLUSTERED INDEX [ids_randomcode]
ON [dbo].[paycode_log] (
  [randomcode] ASC
)
INCLUDE ([operdate])
GO

CREATE NONCLUSTERED INDEX [ids_shopid_randomcode]
ON [dbo].[paycode_log] (
  [shopid] ASC,
  [randomcode] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table paycode_log
-- ----------------------------
ALTER TABLE [dbo].[paycode_log] ADD CONSTRAINT [PK_paycode_log] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for pintuan
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[pintuan]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table pintuan
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_shopid]
ON [dbo].[pintuan] (
  [shopid] ASC,
  [start_time] ASC,
  [end_time] ASC,
  [useflag] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table pintuan
-- ----------------------------
ALTER TABLE [dbo].[pintuan] ADD CONSTRAINT [PK_pintuan] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for pintuan_order
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[pintuan_order]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table pintuan_order
-- ----------------------------
CREATE UNIQUE NONCLUSTERED INDEX [IX_orderno]
ON [dbo].[pintuan_order] (
  [orderno] ASC
)
GO

CREATE NONCLUSTERED INDEX [shopid_status_create_time]
ON [dbo].[pintuan_order] (
  [shopid] ASC,
  [status] ASC,
  [create_time] ASC
)
INCLUDE ([Id], [orderno], [pintuan_id], [pintuan_name], [tuanzhang_openid], [tuanzhang_nickname], [item_no], [item_name], [price], [limit_num], [people_num], [end_time], [update_time], [canceltype])
GO


-- ----------------------------
-- Primary Key structure for table pintuan_order
-- ----------------------------
ALTER TABLE [dbo].[pintuan_order] ADD CONSTRAINT [PK_pintuan_order] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for pintuan_order_detail
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[pintuan_order_detail]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table pintuan_order_detail
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_1]
ON [dbo].[pintuan_order_detail] (
  [shopid] ASC,
  [openid] ASC,
  [pay_status] ASC,
  [parentno] ASC,
  [orderno] ASC
)
GO

CREATE UNIQUE NONCLUSTERED INDEX [IX_OrderNo]
ON [dbo].[pintuan_order_detail] (
  [orderno] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_shopid_parentno_status]
ON [dbo].[pintuan_order_detail] (
  [shopid] ASC,
  [parentno] ASC,
  [status] ASC,
  [pay_status] ASC
)
GO

CREATE NONCLUSTERED INDEX [parentno_status_pay_status]
ON [dbo].[pintuan_order_detail] (
  [parentno] ASC,
  [status] ASC,
  [pay_status] ASC
)
INCLUDE ([orderno])
GO

CREATE NONCLUSTERED INDEX [status_pay_status]
ON [dbo].[pintuan_order_detail] (
  [status] ASC,
  [pay_status] ASC
)
INCLUDE ([parentno], [orderno])
GO


-- ----------------------------
-- Primary Key structure for table pintuan_order_detail
-- ----------------------------
ALTER TABLE [dbo].[pintuan_order_detail] ADD CONSTRAINT [PK_pintuan_detail] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for pointgetvoucher_log
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[pointgetvoucher_log]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table pointgetvoucher_log
-- ----------------------------
ALTER TABLE [dbo].[pointgetvoucher_log] ADD CONSTRAINT [PK_pointgetvoucher_log] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for pre_order
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[pre_order]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table pre_order
-- ----------------------------
CREATE NONCLUSTERED INDEX [X_1]
ON [dbo].[pre_order] (
  [shopid] ASC,
  [starttime] ASC,
  [endtime] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table pre_order
-- ----------------------------
ALTER TABLE [dbo].[pre_order] ADD CONSTRAINT [PK_pre_order] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for pre_order_num
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[pre_order_num]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table pre_order_num
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_1]
ON [dbo].[pre_order_num] (
  [shopid] ASC,
  [openid] ASC,
  [pre_order_id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table pre_order_num
-- ----------------------------
ALTER TABLE [dbo].[pre_order_num] ADD CONSTRAINT [PK__pre_orde__3214EC071DE57479] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for pre_order_product
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[pre_order_product]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table pre_order_product
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_1]
ON [dbo].[pre_order_product] (
  [shopid] ASC,
  [pre_order_id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table pre_order_product
-- ----------------------------
ALTER TABLE [dbo].[pre_order_product] ADD CONSTRAINT [PK__pre_orde__3214EC071A14E395] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for preorder_ticket
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[preorder_ticket]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table preorder_ticket
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_1]
ON [dbo].[preorder_ticket] (
  [shopid] ASC,
  [openid] ASC,
  [preorder_info_id] ASC,
  [ticket_order_id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table preorder_ticket
-- ----------------------------
ALTER TABLE [dbo].[preorder_ticket] ADD CONSTRAINT [PK_preorder_ticket] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for preorder_ticket_order
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[preorder_ticket_order]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table preorder_ticket_order
-- ----------------------------
CREATE UNIQUE NONCLUSTERED INDEX [IX_orderno]
ON [dbo].[preorder_ticket_order] (
  [orderno] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table preorder_ticket_order
-- ----------------------------
ALTER TABLE [dbo].[preorder_ticket_order] ADD CONSTRAINT [PK_preorder_ticket_order_1] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for preorder_ticket_use
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[preorder_ticket_use]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table preorder_ticket_use
-- ----------------------------
ALTER TABLE [dbo].[preorder_ticket_use] ADD CONSTRAINT [PK_preorder_ticket_use] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for prevouchercode
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[prevouchercode]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table prevouchercode
-- ----------------------------
ALTER TABLE [dbo].[prevouchercode] ADD CONSTRAINT [PK__prevouch__3214EC07108B795B] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for rechargediscount
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[rechargediscount]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table rechargediscount
-- ----------------------------
CREATE NONCLUSTERED INDEX [shopid_useflag]
ON [dbo].[rechargediscount] (
  [shopid] ASC,
  [useflag] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table rechargediscount
-- ----------------------------
ALTER TABLE [dbo].[rechargediscount] ADD CONSTRAINT [PK_rechargediscount] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for saomacode
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[saomacode]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table saomacode
-- ----------------------------
ALTER TABLE [dbo].[saomacode] ADD CONSTRAINT [PK__saomacod__3214EC070AD2A005] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for shop_activity_set
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[shop_activity_set]', RESEED, 14)
GO


-- ----------------------------
-- Indexes structure for table shop_activity_set
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_1]
ON [dbo].[shop_activity_set] (
  [shopid] ASC,
  [activity_type] ASC,
  [is_show] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table shop_activity_set
-- ----------------------------
ALTER TABLE [dbo].[shop_activity_set] ADD CONSTRAINT [PK_shop_activity_set] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for shop_case_info
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[shop_case_info]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table shop_case_info
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_1]
ON [dbo].[shop_case_info] (
  [shopid] ASC,
  [is_show] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table shop_case_info
-- ----------------------------
ALTER TABLE [dbo].[shop_case_info] ADD CONSTRAINT [PK_shop_case_info] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for shop_case_product
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[shop_case_product]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table shop_case_product
-- ----------------------------
CREATE NONCLUSTERED INDEX [_dta_index_shop_case_product_5_1204199340__K4_K5_K1_2_3_6_7_8_9]
ON [dbo].[shop_case_product] (
  [shop_case_id] ASC,
  [is_show] ASC,
  [Id] ASC
)
INCLUDE ([shopid], [productct_id], [add_date], [show_order], [itemname], [itemno])
GO

CREATE NONCLUSTERED INDEX [IX_1]
ON [dbo].[shop_case_product] (
  [shopid] ASC,
  [productct_id] ASC,
  [shop_case_id] ASC,
  [is_show] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table shop_case_product
-- ----------------------------
ALTER TABLE [dbo].[shop_case_product] ADD CONSTRAINT [PK_shop_case_product] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for SissMember
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[SissMember]', RESEED, 2)
GO


-- ----------------------------
-- Indexes structure for table SissMember
-- ----------------------------
CREATE NONCLUSTERED INDEX [_dta_index_SissMember_5_1570104634__K14_K4_K1_2_3_6_16]
ON [dbo].[SissMember] (
  [Shopid] ASC,
  [PhoneNo] ASC,
  [Id] ASC
)
INCLUDE ([UserName], [PassWord], [Email], [operdate])
GO

CREATE NONCLUSTERED INDEX [_dta_index_SissMember_5_1570104634__K4_K1_K3_2_6_14_16_17]
ON [dbo].[SissMember] (
  [PhoneNo] ASC,
  [Id] ASC,
  [PassWord] ASC
)
INCLUDE ([UserName], [Email], [Shopid], [operdate], [TianDianId])
GO

CREATE UNIQUE NONCLUSTERED INDEX [shopid_phone]
ON [dbo].[SissMember] (
  [Shopid] ASC,
  [PhoneNo] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table SissMember
-- ----------------------------
ALTER TABLE [dbo].[SissMember] ADD CONSTRAINT [PK_SISSMEMBER] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for sisspaynotifybody
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[sisspaynotifybody]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table sisspaynotifybody
-- ----------------------------
CREATE NONCLUSTERED INDEX [<Name of Missing Index, sysname,>]
ON [dbo].[sisspaynotifybody] (
  [out_trade_no] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_1]
ON [dbo].[sisspaynotifybody] (
  [shopid] ASC,
  [trade_no] ASC,
  [third_trade_no] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table sisspaynotifybody
-- ----------------------------
ALTER TABLE [dbo].[sisspaynotifybody] ADD CONSTRAINT [PK_sisspaynotifybody] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for sisspayresult
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[sisspayresult]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table sisspayresult
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_1]
ON [dbo].[sisspayresult] (
  [mch_id] ASC,
  [shopid] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table sisspayresult
-- ----------------------------
ALTER TABLE [dbo].[sisspayresult] ADD CONSTRAINT [PK_sisspayresult] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for sql20180902
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[sql20180902]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table sql20180902
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_createdate]
ON [dbo].[sql20180902] (
  [createdate] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table sql20180902
-- ----------------------------
ALTER TABLE [dbo].[sql20180902] ADD CONSTRAINT [PK_sql20180902] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for suggestions
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[suggestions]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table suggestions
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_shopid_openid]
ON [dbo].[suggestions] (
  [shopid] ASC,
  [openid] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table suggestions
-- ----------------------------
ALTER TABLE [dbo].[suggestions] ADD CONSTRAINT [PK__suggesti__3214EC073DB3258D] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for sys_news_article
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[sys_news_article]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table sys_news_article
-- ----------------------------
ALTER TABLE [dbo].[sys_news_article] ADD CONSTRAINT [PK_sys_news_article] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for sys_news_attachment
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[sys_news_attachment]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table sys_news_attachment
-- ----------------------------
ALTER TABLE [dbo].[sys_news_attachment] ADD CONSTRAINT [PK_sys_news_attachment] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for sys_news_channel
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[sys_news_channel]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table sys_news_channel
-- ----------------------------
ALTER TABLE [dbo].[sys_news_channel] ADD CONSTRAINT [PK_sys_news_channel] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for sys_notice
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[sys_notice]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table sys_notice
-- ----------------------------
ALTER TABLE [dbo].[sys_notice] ADD CONSTRAINT [PK__sys_noti__3214EC073429BB53] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for SystemConfig
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[SystemConfig]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table SystemConfig
-- ----------------------------
CREATE NONCLUSTERED INDEX [_dta_index_SystemConfig_5_750625717__K2_K1_3_4_5_6_7_8]
ON [dbo].[SystemConfig] (
  [shopid] ASC,
  [Id] ASC
)
INCLUDE ([domain], [port], [security], [active], [db], [operdate])
GO

CREATE UNIQUE NONCLUSTERED INDEX [shopid]
ON [dbo].[SystemConfig] (
  [shopid] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table SystemConfig
-- ----------------------------
ALTER TABLE [dbo].[SystemConfig] ADD CONSTRAINT [PK_SystemConfig] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for SystemVersion
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[SystemVersion]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table SystemVersion
-- ----------------------------
ALTER TABLE [dbo].[SystemVersion] ADD CONSTRAINT [PK_SystemVersion] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_accbuy
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_accbuy]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table t_accbuy
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_1]
ON [dbo].[t_accbuy] (
  [shopid] ASC,
  [start_time] ASC,
  [end_time] ASC,
  [enabled] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table t_accbuy
-- ----------------------------
ALTER TABLE [dbo].[t_accbuy] ADD CONSTRAINT [PK_t_accbuy] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_accbuy_log
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_accbuy_log]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table t_accbuy_log
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_1]
ON [dbo].[t_accbuy_log] (
  [shopid] ASC,
  [cardid] ASC,
  [accbuyid] ASC,
  [productid] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table t_accbuy_log
-- ----------------------------
ALTER TABLE [dbo].[t_accbuy_log] ADD CONSTRAINT [PK_t_accbuy_log] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_accbuy_num
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_accbuy_num]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table t_accbuy_num
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_1]
ON [dbo].[t_accbuy_num] (
  [shopid] ASC,
  [openid] ASC,
  [accbuyid] ASC,
  [productid] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table t_accbuy_num
-- ----------------------------
ALTER TABLE [dbo].[t_accbuy_num] ADD CONSTRAINT [PK_t_accbuy_num] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_accbuy_product
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_accbuy_product]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table t_accbuy_product
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_1]
ON [dbo].[t_accbuy_product] (
  [shopid] ASC,
  [accbuyid] ASC,
  [productid] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table t_accbuy_product
-- ----------------------------
ALTER TABLE [dbo].[t_accbuy_product] ADD CONSTRAINT [PK_t_accbuy_product] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_accesstoken
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_accesstoken]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table t_accesstoken
-- ----------------------------
CREATE NONCLUSTERED INDEX [appid]
ON [dbo].[t_accesstoken] (
  [appid] ASC,
  [updatetime] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table t_accesstoken
-- ----------------------------
ALTER TABLE [dbo].[t_accesstoken] ADD CONSTRAINT [PK_t_accesstoken] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_ad
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_ad]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table t_ad
-- ----------------------------
CREATE NONCLUSTERED INDEX [all]
ON [dbo].[t_ad] (
  [ad_no] ASC,
  [ad_name] ASC,
  [ad_level] ASC,
  [ad_plevel] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table t_ad
-- ----------------------------
ALTER TABLE [dbo].[t_ad] ADD CONSTRAINT [PK_t_ad] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_adults
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_adults]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table t_adults
-- ----------------------------
CREATE NONCLUSTERED INDEX [shopid_orderno_itemno]
ON [dbo].[t_adults] (
  [shopid] ASC,
  [orderno] ASC,
  [itemno] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table t_adults
-- ----------------------------
ALTER TABLE [dbo].[t_adults] ADD CONSTRAINT [PK_t_adults] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_adults_reply
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_adults_reply]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table t_adults_reply
-- ----------------------------
CREATE NONCLUSTERED INDEX [shopid]
ON [dbo].[t_adults_reply] (
  [shopid] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table t_adults_reply
-- ----------------------------
ALTER TABLE [dbo].[t_adults_reply] ADD CONSTRAINT [PK__t_adults__3214EC071F2E9E6D] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_alarm
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_alarm]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table t_alarm
-- ----------------------------
ALTER TABLE [dbo].[t_alarm] ADD CONSTRAINT [PK_t_alarm] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_alipay_code_version
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_alipay_code_version]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table t_alipay_code_version
-- ----------------------------
ALTER TABLE [dbo].[t_alipay_code_version] ADD CONSTRAINT [PK_t_alipay_code_version] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_alipay_flow
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_alipay_flow]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table t_alipay_flow
-- ----------------------------
ALTER TABLE [dbo].[t_alipay_flow] ADD CONSTRAINT [PK_t_alipay_flow] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_alipay_set
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_alipay_set]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table t_alipay_set
-- ----------------------------
ALTER TABLE [dbo].[t_alipay_set] ADD CONSTRAINT [PK_t_alipay_set] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_alipay_user
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_alipay_user]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table t_alipay_user
-- ----------------------------
ALTER TABLE [dbo].[t_alipay_user] ADD CONSTRAINT [PK_t_alipay_user] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_award_batch
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_award_batch]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table t_award_batch
-- ----------------------------
CREATE NONCLUSTERED INDEX [_dta_index_t_award_batch_5_1931153925__K3_K5_K2_1_4_6_7_8_9_10]
ON [dbo].[t_award_batch] (
  [awardinfoid] ASC,
  [prize_name] ASC,
  [shopid] ASC
)
INCLUDE ([Id], [award_name], [amount], [consume], [award_type], [angle_value], [create_date])
GO


-- ----------------------------
-- Primary Key structure for table t_award_batch
-- ----------------------------
ALTER TABLE [dbo].[t_award_batch] ADD CONSTRAINT [PK_t_award_batch] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_award_info
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_award_info]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table t_award_info
-- ----------------------------
CREATE NONCLUSTERED INDEX [_dta_index_t_award_info_5_1851153640__K12_K2_1_3_4_5_6_7_8_9_10_11_13_14_15_16_17]
ON [dbo].[t_award_info] (
  [is_current] ASC,
  [shopid] ASC
)
INCLUDE ([Id], [award_type], [activity_name], [description], [begin_date], [end_date], [person_num], [max_time], [time_type], [finished_person_num], [is_continue], [is_open_score], [score], [is_open_scoreonly], [batch_update_time])
GO

CREATE NONCLUSTERED INDEX [_dta_index_t_award_info_5_1851153640__K2_1_3_4_5_6_7_8_9_10_11_12_13_14_15_16_17]
ON [dbo].[t_award_info] (
  [shopid] ASC
)
INCLUDE ([Id], [award_type], [activity_name], [description], [begin_date], [end_date], [person_num], [max_time], [time_type], [finished_person_num], [is_current], [is_continue], [is_open_score], [score], [is_open_scoreonly], [batch_update_time])
GO


-- ----------------------------
-- Primary Key structure for table t_award_info
-- ----------------------------
ALTER TABLE [dbo].[t_award_info] ADD CONSTRAINT [PK_t_award_info] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_award_log
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_award_log]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table t_award_log
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_createdate]
ON [dbo].[t_award_log] (
  [create_date] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_t_award_log_include]
ON [dbo].[t_award_log] (
  [openid] ASC
)
INCLUDE ([awardinfoid])
GO

CREATE NONCLUSTERED INDEX [IX_t_award_log_shopid_award]
ON [dbo].[t_award_log] (
  [shopid] ASC,
  [awardinfoid] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_t_award_log_sopsadafd]
ON [dbo].[t_award_log] (
  [create_date] ASC,
  [shopid] ASC,
  [openid] ASC,
  [awardinfoid] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table t_award_log
-- ----------------------------
ALTER TABLE [dbo].[t_award_log] ADD CONSTRAINT [PK_t_award_log] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_award_product
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_award_product]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table t_award_product
-- ----------------------------
ALTER TABLE [dbo].[t_award_product] ADD CONSTRAINT [PK_t_award_product] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_award_score
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_award_score]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table t_award_score
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_shopid]
ON [dbo].[t_award_score] (
  [awardinfoid] ASC,
  [shopid] ASC,
  [openid] ASC,
  [is_used] ASC,
  [orderno] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table t_award_score
-- ----------------------------
ALTER TABLE [dbo].[t_award_score] ADD CONSTRAINT [PK_t_award_score] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_award_vipnum
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_award_vipnum]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table t_award_vipnum
-- ----------------------------
ALTER TABLE [dbo].[t_award_vipnum] ADD CONSTRAINT [PK_t_award_vipnum] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_award_winuser
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_award_winuser]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table t_award_winuser
-- ----------------------------
CREATE NONCLUSTERED INDEX [_dta_index_t_award_winuser_5_1815677516__K3_K2_K6_1_4_5_7_8_9_10_11_12_13_14_15_16]
ON [dbo].[t_award_winuser] (
  [awardinfoid] ASC,
  [shopid] ASC,
  [openid] ASC
)
INCLUDE ([Id], [awardbatchid], [orderno], [win_award_type], [win_award_name], [win_award_prize], [win_prize_detail], [user_name], [user_mobile], [lucky_number], [is_expiry], [expiry_date], [create_date])
GO

CREATE NONCLUSTERED INDEX [_dta_index_t_award_winuser_5_1815677516__K6]
ON [dbo].[t_award_winuser] (
  [openid] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_shopid_orderno]
ON [dbo].[t_award_winuser] (
  [shopid] ASC,
  [orderno] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table t_award_winuser
-- ----------------------------
ALTER TABLE [dbo].[t_award_winuser] ADD CONSTRAINT [PK_t_award_winuser] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_awardbyorder
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_awardbyorder]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table t_awardbyorder
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_t_awardbyorder_20180905]
ON [dbo].[t_awardbyorder] (
  [shopid] ASC,
  [useflag] ASC,
  [starttime] ASC,
  [endtime] ASC,
  [onlineoroffline] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table t_awardbyorder
-- ----------------------------
ALTER TABLE [dbo].[t_awardbyorder] ADD CONSTRAINT [PK_t_awardbyorder] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_branch_info
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_branch_info]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table t_branch_info
-- ----------------------------
CREATE UNIQUE NONCLUSTERED INDEX [shopid_branchno]
ON [dbo].[t_branch_info] (
  [shopid] ASC,
  [branch_no] ASC,
  [stop_flag] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table t_branch_info
-- ----------------------------
ALTER TABLE [dbo].[t_branch_info] ADD CONSTRAINT [PK_t_branch_info] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_branch_item
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_branch_item]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table t_branch_item
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_shopid_productid_branchno]
ON [dbo].[t_branch_item] (
  [shopid] ASC,
  [productid] ASC,
  [branch_no] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table t_branch_item
-- ----------------------------
ALTER TABLE [dbo].[t_branch_item] ADD CONSTRAINT [PK_t_branch_item] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_buylimit
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_buylimit]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table t_buylimit
-- ----------------------------
CREATE NONCLUSTERED INDEX [_dta_index_t_buylimit_5_1239675464__K1_K5_K2_K6_K11_9_10]
ON [dbo].[t_buylimit] (
  [Id] ASC,
  [start_time] ASC,
  [shopid] ASC,
  [end_time] ASC,
  [enabled] ASC
)
INCLUDE ([is_limit], [limit_num])
GO

CREATE NONCLUSTERED INDEX [_dta_index_t_buylimit_5_1239675464__K11_K6_K5_K2_K1]
ON [dbo].[t_buylimit] (
  [enabled] ASC,
  [end_time] ASC,
  [start_time] ASC,
  [shopid] ASC,
  [Id] ASC
)
GO

CREATE NONCLUSTERED INDEX [_dta_index_t_buylimit_5_1239675464__K2_K5_K6_K11_K1_K9]
ON [dbo].[t_buylimit] (
  [shopid] ASC,
  [start_time] ASC,
  [end_time] ASC,
  [enabled] ASC,
  [is_limit] ASC
)
GO

CREATE NONCLUSTERED INDEX [_dta_index_t_buylimit_5_1239675464__K5_K6_K2_K1]
ON [dbo].[t_buylimit] (
  [start_time] ASC,
  [end_time] ASC,
  [shopid] ASC,
  [Id] ASC
)
GO

CREATE NONCLUSTERED INDEX [_dta_index_t_buylimit_5_1239675464__K6_K5_K2_K1_K11]
ON [dbo].[t_buylimit] (
  [end_time] ASC,
  [start_time] ASC,
  [shopid] ASC,
  [Id] ASC,
  [enabled] ASC
)
GO

CREATE NONCLUSTERED INDEX [index_1]
ON [dbo].[t_buylimit] (
  [shopid] ASC,
  [start_time] ASC,
  [end_time] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table t_buylimit
-- ----------------------------
ALTER TABLE [dbo].[t_buylimit] ADD CONSTRAINT [PK_t_buy_limit] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_buylimit_num
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_buylimit_num]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table t_buylimit_num
-- ----------------------------
CREATE NONCLUSTERED INDEX [index_1]
ON [dbo].[t_buylimit_num] (
  [shopid] ASC,
  [openid] ASC,
  [buylimitid] ASC,
  [productid] ASC,
  [num] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table t_buylimit_num
-- ----------------------------
ALTER TABLE [dbo].[t_buylimit_num] ADD CONSTRAINT [PK_t_buylimit_quantity] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_buylimit_product
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_buylimit_product]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table t_buylimit_product
-- ----------------------------
CREATE NONCLUSTERED INDEX [_dta_index_t_buylimit_product_5_1175675236__K4_5]
ON [dbo].[t_buylimit_product] (
  [buylimitid] ASC
)
INCLUDE ([productid])
GO

CREATE NONCLUSTERED INDEX [_dta_index_t_buylimit_product_5_1175675236__K4_K1_K5_7]
ON [dbo].[t_buylimit_product] (
  [buylimitid] ASC,
  [productid] ASC
)
INCLUDE ([limit_num])
GO

CREATE NONCLUSTERED INDEX [_dta_index_t_buylimit_product_5_1175675236__K4_K2_5]
ON [dbo].[t_buylimit_product] (
  [buylimitid] ASC,
  [shopid] ASC
)
INCLUDE ([productid])
GO

CREATE NONCLUSTERED INDEX [_dta_index_t_buylimit_product_5_1175675236__K4_K5_K1_7]
ON [dbo].[t_buylimit_product] (
  [buylimitid] ASC,
  [productid] ASC
)
INCLUDE ([limit_num])
GO

CREATE NONCLUSTERED INDEX [_dta_index_t_buylimit_product_5_1175675236__K4_K5_K2]
ON [dbo].[t_buylimit_product] (
  [buylimitid] ASC,
  [productid] ASC,
  [shopid] ASC
)
GO

CREATE NONCLUSTERED INDEX [_dta_index_t_buylimit_product_5_1175675236__K5_K4]
ON [dbo].[t_buylimit_product] (
  [productid] ASC,
  [buylimitid] ASC
)
GO

CREATE NONCLUSTERED INDEX [index_1]
ON [dbo].[t_buylimit_product] (
  [shopid] ASC,
  [buylimitid] ASC,
  [productid] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table t_buylimit_product
-- ----------------------------
ALTER TABLE [dbo].[t_buylimit_product] ADD CONSTRAINT [PK_t_buylimit_product] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_card_pay
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_card_pay]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table t_card_pay
-- ----------------------------
CREATE NONCLUSTERED INDEX [_dta_index_t_card_pay_5_251147940__K5_1_2_3_4_6_7_8_9_10]
ON [dbo].[t_card_pay] (
  [orderno] ASC
)
INCLUDE ([Id], [shopid], [openid], [card_id], [total_amt], [paysate], [operdate], [status], [type])
GO

CREATE NONCLUSTERED INDEX [shopid]
ON [dbo].[t_card_pay] (
  [shopid] ASC,
  [card_id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table t_card_pay
-- ----------------------------
ALTER TABLE [dbo].[t_card_pay] ADD CONSTRAINT [PK_t_card_pay] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_chargefee
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_chargefee]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table t_chargefee
-- ----------------------------
CREATE NONCLUSTERED INDEX [_dta_index_t_chargefee_5_1195151303__K3_K7]
ON [dbo].[t_chargefee] (
  [openid] ASC,
  [paystatus] ASC
)
GO

CREATE NONCLUSTERED INDEX [_dta_index_t_chargefee_5_1195151303__K4_1_2_3_5_6_7_8_9_10_11_12]
ON [dbo].[t_chargefee] (
  [orderno] ASC
)
INCLUDE ([Id], [shopid], [openid], [amt], [realamt], [paystatus], [operdate], [cardid], [discounttype], [memo], [rechargevoucherid])
GO

CREATE NONCLUSTERED INDEX [IX_operdate_20180901]
ON [dbo].[t_chargefee] (
  [orderno] ASC,
  [rechargevoucherid] ASC,
  [paystatus] ASC,
  [openid] ASC
)
GO

CREATE UNIQUE NONCLUSTERED INDEX [IX_shopid_orderno]
ON [dbo].[t_chargefee] (
  [shopid] ASC,
  [orderno] ASC
)
GO

CREATE NONCLUSTERED INDEX [shopid_cardid]
ON [dbo].[t_chargefee] (
  [shopid] ASC,
  [cardid] ASC,
  [openid] ASC,
  [paystatus] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table t_chargefee
-- ----------------------------
ALTER TABLE [dbo].[t_chargefee] ADD CONSTRAINT [PK_t_chargefee] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_dada_shopinfo
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_dada_shopinfo]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table t_dada_shopinfo
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_shopid]
ON [dbo].[t_dada_shopinfo] (
  [shopid] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table t_dada_shopinfo
-- ----------------------------
ALTER TABLE [dbo].[t_dada_shopinfo] ADD CONSTRAINT [PK_t_dada_shopinfo] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_defer_record
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_defer_record]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table t_defer_record
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_1]
ON [dbo].[t_defer_record] (
  [shopid] ASC,
  [oper_date] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table t_defer_record
-- ----------------------------
ALTER TABLE [dbo].[t_defer_record] ADD CONSTRAINT [PK_t_defer_record] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_even_promote
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_even_promote]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table t_even_promote
-- ----------------------------
ALTER TABLE [dbo].[t_even_promote] ADD CONSTRAINT [PK_t_even_promote] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_fans_spread
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_fans_spread]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table t_fans_spread
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_1]
ON [dbo].[t_fans_spread] (
  [shopid] ASC,
  [branch_no] ASC,
  [spread_no] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table t_fans_spread
-- ----------------------------
ALTER TABLE [dbo].[t_fans_spread] ADD CONSTRAINT [PK_t_fans_spread] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_favorites
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_favorites]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table t_favorites
-- ----------------------------
CREATE NONCLUSTERED INDEX [Key_t_favorites]
ON [dbo].[t_favorites] (
  [shopid] ASC,
  [openid] ASC,
  [pid] ASC,
  [state] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table t_favorites
-- ----------------------------
ALTER TABLE [dbo].[t_favorites] ADD CONSTRAINT [PK_t_favorites] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_freshgoods
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_freshgoods]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table t_freshgoods
-- ----------------------------
ALTER TABLE [dbo].[t_freshgoods] ADD CONSTRAINT [PK_freshgoods] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_gift_goods
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_gift_goods]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table t_gift_goods
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_1]
ON [dbo].[t_gift_goods] (
  [shopid] ASC,
  [branchno] ASC,
  [start_time] ASC,
  [end_time] ASC,
  [is_exchange] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table t_gift_goods
-- ----------------------------
ALTER TABLE [dbo].[t_gift_goods] ADD CONSTRAINT [PK_t_gift_good] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_gift_orderdetail
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_gift_orderdetail]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table t_gift_orderdetail
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_1]
ON [dbo].[t_gift_orderdetail] (
  [shopid] ASC,
  [openid] ASC,
  [ordermaster_id] ASC,
  [order_no] ASC,
  [gift_no] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table t_gift_orderdetail
-- ----------------------------
ALTER TABLE [dbo].[t_gift_orderdetail] ADD CONSTRAINT [PK_t_gift_orderdetail] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_gift_ordermaster
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_gift_ordermaster]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table t_gift_ordermaster
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_1]
ON [dbo].[t_gift_ordermaster] (
  [shopid] ASC,
  [openid] ASC,
  [order_no] ASC
)
GO

CREATE UNIQUE NONCLUSTERED INDEX [IX_Orderno]
ON [dbo].[t_gift_ordermaster] (
  [order_no] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table t_gift_ordermaster
-- ----------------------------
ALTER TABLE [dbo].[t_gift_ordermaster] ADD CONSTRAINT [PK_t_gift_ordermaster] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_item_brand
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_item_brand]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table t_item_brand
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_1]
ON [dbo].[t_item_brand] (
  [shopid] ASC,
  [brand_no] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table t_item_brand
-- ----------------------------
ALTER TABLE [dbo].[t_item_brand] ADD CONSTRAINT [PK_t_item_brand] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_item_info
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_item_info]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table t_item_info
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_shopid]
ON [dbo].[t_item_info] (
  [shopid] ASC,
  [useflag] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_shopid_branchno_typeno_useflag]
ON [dbo].[t_item_info] (
  [shopid] ASC,
  [type_no] ASC,
  [useflag] ASC,
  [branch_no] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_shopid_itemno_include]
ON [dbo].[t_item_info] (
  [shopid] ASC
)
INCLUDE ([useflag], [branch_no], [type_no])
GO

CREATE NONCLUSTERED INDEX [IX_shopid_useflag_20190525]
ON [dbo].[t_item_info] (
  [shopid] ASC,
  [useflag] ASC
)
GO

CREATE UNIQUE NONCLUSTERED INDEX [shopid_itemno]
ON [dbo].[t_item_info] (
  [shopid] ASC,
  [item_no] ASC
)
GO

CREATE NONCLUSTERED INDEX [typeno_useflag]
ON [dbo].[t_item_info] (
  [type_no] ASC,
  [useflag] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table t_item_info
-- ----------------------------
ALTER TABLE [dbo].[t_item_info] ADD CONSTRAINT [PK_t_item_info_1] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_item_picurl_info
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_item_picurl_info]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table t_item_picurl_info
-- ----------------------------
CREATE NONCLUSTERED INDEX [_dta_index_t_item_picurl_info_5_878626173__K2_K1_K3_K7]
ON [dbo].[t_item_picurl_info] (
  [shopid] ASC,
  [Id] ASC,
  [item_no] ASC,
  [is_show] ASC
)
GO

CREATE NONCLUSTERED INDEX [_dta_index_t_item_picurl_info_5_878626173__K3_K1_K2_K7_5_6]
ON [dbo].[t_item_picurl_info] (
  [item_no] ASC,
  [shopid] ASC,
  [is_show] ASC
)
INCLUDE ([pic], [description])
GO

CREATE NONCLUSTERED INDEX [_dta_index_t_item_picurl_info_5_878626173__K3_K1_K7_5_6]
ON [dbo].[t_item_picurl_info] (
  [item_no] ASC,
  [Id] ASC,
  [is_show] ASC
)
INCLUDE ([pic], [description])
GO

CREATE NONCLUSTERED INDEX [_dta_index_t_item_picurl_info_5_878626173__K3_K1_K7_5_6_8]
ON [dbo].[t_item_picurl_info] (
  [item_no] ASC,
  [is_show] ASC
)
INCLUDE ([pic], [description], [intorder])
GO

CREATE NONCLUSTERED INDEX [_dta_index_t_item_picurl_info_5_878626173__K3_K1_K7_K2_5_6_8]
ON [dbo].[t_item_picurl_info] (
  [item_no] ASC,
  [Id] ASC,
  [is_show] ASC,
  [shopid] ASC
)
INCLUDE ([pic], [description], [intorder])
GO

CREATE NONCLUSTERED INDEX [_dta_index_t_item_picurl_info_5_878626173__K3_K2_K1_4_5_6_7_8]
ON [dbo].[t_item_picurl_info] (
  [item_no] ASC,
  [shopid] ASC,
  [Id] ASC
)
INCLUDE ([branch_no], [pic], [description], [is_show], [intorder])
GO

CREATE NONCLUSTERED INDEX [item_pic_shopid_itemno]
ON [dbo].[t_item_picurl_info] (
  [shopid] ASC,
  [item_no] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table t_item_picurl_info
-- ----------------------------
ALTER TABLE [dbo].[t_item_picurl_info] ADD CONSTRAINT [PK_t_item_pic_info] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_item_stock
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_item_stock]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table t_item_stock
-- ----------------------------
CREATE NONCLUSTERED INDEX [_dta_index_t_item_stock_5_1435152158__K2_K4_K1_8_9]
ON [dbo].[t_item_stock] (
  [shopid] ASC,
  [item_no] ASC,
  [Id] ASC
)
INCLUDE ([stock], [salenum])
GO

CREATE NONCLUSTERED INDEX [_dta_index_t_item_stock_5_1435152158__K4_K2_8_9]
ON [dbo].[t_item_stock] (
  [item_no] ASC,
  [shopid] ASC
)
INCLUDE ([stock], [salenum])
GO

CREATE NONCLUSTERED INDEX [_dta_index_t_item_stock_5_1435152158__K4_K2_K1_3_5_6_7_8_9]
ON [dbo].[t_item_stock] (
  [item_no] ASC,
  [shopid] ASC,
  [Id] ASC
)
INCLUDE ([branch_no], [type_no], [item_spec], [operdate], [stock], [salenum])
GO

CREATE UNIQUE NONCLUSTERED INDEX [shopid_itemno_typeno]
ON [dbo].[t_item_stock] (
  [shopid] ASC,
  [item_no] ASC,
  [type_no] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table t_item_stock
-- ----------------------------
ALTER TABLE [dbo].[t_item_stock] ADD CONSTRAINT [PK_t_item_stock] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_item_type
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_item_type]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table t_item_type
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_t_item_type20180918]
ON [dbo].[t_item_type] (
  [shopid] ASC,
  [type_no] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table t_item_type
-- ----------------------------
ALTER TABLE [dbo].[t_item_type] ADD CONSTRAINT [PK_t_item_type] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_jicichargefee
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_jicichargefee]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table t_jicichargefee
-- ----------------------------
ALTER TABLE [dbo].[t_jicichargefee] ADD CONSTRAINT [PK_t_jicichargefee] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_jsapiticket
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_jsapiticket]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table t_jsapiticket
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_1]
ON [dbo].[t_jsapiticket] (
  [appid] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table t_jsapiticket
-- ----------------------------
ALTER TABLE [dbo].[t_jsapiticket] ADD CONSTRAINT [PK_t_jsapiticket] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_navbar_link
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_navbar_link]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table t_navbar_link
-- ----------------------------
CREATE NONCLUSTERED INDEX [_dta_index_t_navbar_link_5_240612587__K10_K2_1_3_4_5_6_7_8_9_11_12_13]
ON [dbo].[t_navbar_link] (
  [isPublished] ASC,
  [shopid] ASC
)
INCLUDE ([Id], [name], [sysCode], [url], [iconType], [iconCls], [imgUrl], [intorder], [publishAt], [createAt], [updateAt])
GO


-- ----------------------------
-- Primary Key structure for table t_navbar_link
-- ----------------------------
ALTER TABLE [dbo].[t_navbar_link] ADD CONSTRAINT [PK__t_navbar__3214EC0721C0F255] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_net_request
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_net_request]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table t_net_request
-- ----------------------------
ALTER TABLE [dbo].[t_net_request] ADD CONSTRAINT [PK_t_net_request] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_news_notice
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_news_notice]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table t_news_notice
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_1]
ON [dbo].[t_news_notice] (
  [shopid] ASC,
  [isPublished] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table t_news_notice
-- ----------------------------
ALTER TABLE [dbo].[t_news_notice] ADD CONSTRAINT [PK_t_news_notice] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_order_detail
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_order_detail]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table t_order_detail
-- ----------------------------
CREATE NONCLUSTERED INDEX [_dta_index_t_order_detail_5_43147199__K4_K1_2_3_5_6_7_8_9_10_11_12_13]
ON [dbo].[t_order_detail] (
  [orderno] ASC,
  [Id] ASC
)
INCLUDE ([shopid], [openid], [itemno], [item_name], [ordernum], [item_unit], [item_spec], [saleprice], [oriprice], [buylimitid], [accbuyid])
GO

CREATE NONCLUSTERED INDEX [IX_orderno]
ON [dbo].[t_order_detail] (
  [orderno] ASC
)
GO

CREATE NONCLUSTERED INDEX [shopid_orderno]
ON [dbo].[t_order_detail] (
  [shopid] ASC,
  [orderno] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table t_order_detail
-- ----------------------------
ALTER TABLE [dbo].[t_order_detail] ADD CONSTRAINT [PK_t_order_detail] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_order_master
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_order_master]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table t_order_master
-- ----------------------------
CREATE NONCLUSTERED INDEX [_dta_index_t_order_master_5_1328723786__K14_K1_K4_2_3_5_6_7_8_9_10_11_12_13_15_16_17_18_19_20_21_22_23_24_25_26_27_28_29_30_31_]
ON [dbo].[t_order_master] (
  [pay_type] ASC,
  [Id] ASC,
  [orderno] ASC
)
INCLUDE ([shopid], [openid], [orderman], [branch_no], [branch_name], [ordertel], [tot_amt], [total_dav], [total_express], [total], [orderfrom], [deal_type], [operdate], [type_name], [dogflag], [address], [status], [description], [TransmissionStatus], [paystatus], [dealstatus], [card_id], [memo], [dealtime], [orderupdatetime], [discounttype], [discount], [identity_card], [offlinevoucherid])
GO

CREATE NONCLUSTERED INDEX [_dta_index_t_order_master_5_1328723786__K2_K16]
ON [dbo].[t_order_master] (
  [shopid] ASC,
  [operdate] ASC
)
GO

CREATE NONCLUSTERED INDEX [_dta_index_t_order_master_5_1328723786__K2_K16_K1_3_4_5_6_7_8_9_10_11_12_13_14_15_17_18_19_20_21_22_23_24_25_26_27_28_29_30_31_]
ON [dbo].[t_order_master] (
  [shopid] ASC,
  [operdate] ASC,
  [Id] ASC
)
INCLUDE ([openid], [orderno], [orderman], [branch_no], [branch_name], [ordertel], [tot_amt], [total_dav], [total_express], [total], [orderfrom], [pay_type], [deal_type], [type_name], [dogflag], [address], [status], [description], [TransmissionStatus], [paystatus], [dealstatus], [card_id], [memo], [dealtime], [orderupdatetime], [discounttype], [discount], [identity_card], [offlinevoucherid], [canceltype])
GO

CREATE NONCLUSTERED INDEX [_dta_index_t_order_master_5_1328723786__K2_K20_K16_1_3_4_5_6_7_8_9_10_11_12_13_14_15_17_18_19_21_22_23_24_25_26_27_28_29_30_31_]
ON [dbo].[t_order_master] (
  [shopid] ASC,
  [status] ASC,
  [operdate] ASC
)
INCLUDE ([Id], [openid], [orderno], [orderman], [branch_no], [branch_name], [ordertel], [tot_amt], [total_dav], [total_express], [total], [orderfrom], [pay_type], [deal_type], [type_name], [dogflag], [address], [description], [TransmissionStatus], [paystatus], [dealstatus], [card_id], [memo], [dealtime], [orderupdatetime], [discounttype], [discount], [identity_card], [offlinevoucherid])
GO

CREATE NONCLUSTERED INDEX [_dta_index_t_order_master_5_1328723786__K4_K1_2_3_5_6_7_8_9_10_11_12_13_14_15_16_17_18_19_20_21_22_23_24_25_26_27_28_29_30_31_]
ON [dbo].[t_order_master] (
  [orderno] ASC,
  [Id] ASC
)
INCLUDE ([shopid], [openid], [orderman], [branch_no], [branch_name], [ordertel], [tot_amt], [total_dav], [total_express], [total], [orderfrom], [pay_type], [deal_type], [operdate], [type_name], [dogflag], [address], [status], [description], [TransmissionStatus], [paystatus], [dealstatus], [card_id], [memo], [dealtime], [orderupdatetime], [discounttype], [discount], [identity_card], [offlinevoucherid])
GO

CREATE UNIQUE NONCLUSTERED INDEX [shopid_orderno]
ON [dbo].[t_order_master] (
  [orderno] ASC,
  [shopid] ASC
)
GO

CREATE UNIQUE NONCLUSTERED INDEX [shopid_orderno_1]
ON [dbo].[t_order_master] (
  [shopid] ASC,
  [orderno] ASC
)
GO

CREATE NONCLUSTERED INDEX [shopid_paystatus_operdate]
ON [dbo].[t_order_master] (
  [shopid] ASC,
  [paystatus] ASC,
  [operdate] ASC
)
INCLUDE ([orderno])
GO

CREATE NONCLUSTERED INDEX [status_operdate]
ON [dbo].[t_order_master] (
  [openid] ASC,
  [operdate] ASC,
  [status] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table t_order_master
-- ----------------------------
ALTER TABLE [dbo].[t_order_master] ADD CONSTRAINT [PK_t_order_master] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_order_paydetail
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_order_paydetail]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table t_order_paydetail
-- ----------------------------
ALTER TABLE [dbo].[t_order_paydetail] ADD CONSTRAINT [PK_t_order_paydetail] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_orderman
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_orderman]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table t_orderman
-- ----------------------------
CREATE NONCLUSTERED INDEX [_dta_index_t_orderman_5_1038626743__K3_K1_4_6_7_8_9_10_11_12_13_14_15]
ON [dbo].[t_orderman] (
  [openid] ASC,
  [Id] ASC
)
INCLUDE ([orderman], [isdefault], [city], [area], [provice], [country], [address], [addressall], [latitude], [longitude], [idcard_receiver])
GO

CREATE NONCLUSTERED INDEX [shopid_tel]
ON [dbo].[t_orderman] (
  [shopid] ASC,
  [ordertel] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table t_orderman
-- ----------------------------
ALTER TABLE [dbo].[t_orderman] ADD CONSTRAINT [PK_t_orderman] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_preferential
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_preferential]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table t_preferential
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_1]
ON [dbo].[t_preferential] (
  [shopid] ASC,
  [starttime] ASC,
  [endtime] ASC,
  [useflag] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table t_preferential
-- ----------------------------
ALTER TABLE [dbo].[t_preferential] ADD CONSTRAINT [PK_t_preferential] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_queue_log
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_queue_log]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table t_queue_log
-- ----------------------------
ALTER TABLE [dbo].[t_queue_log] ADD CONSTRAINT [PK_t_queue_log] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_redpack
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_redpack]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table t_redpack
-- ----------------------------
CREATE NONCLUSTERED INDEX [X_1]
ON [dbo].[t_redpack] (
  [shopid] ASC,
  [mch_billno] ASC,
  [re_openid] ASC,
  [card_id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table t_redpack
-- ----------------------------
ALTER TABLE [dbo].[t_redpack] ADD CONSTRAINT [PK_t_redpack] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_redpack_log
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_redpack_log]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table t_redpack_log
-- ----------------------------
CREATE NONCLUSTERED INDEX [X_1]
ON [dbo].[t_redpack_log] (
  [mch_id] ASC,
  [re_openid] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table t_redpack_log
-- ----------------------------
ALTER TABLE [dbo].[t_redpack_log] ADD CONSTRAINT [PK_t_redpack_log] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_refund
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_refund]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table t_refund
-- ----------------------------
ALTER TABLE [dbo].[t_refund] ADD CONSTRAINT [PK_refund] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_refund_log
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_refund_log]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table t_refund_log
-- ----------------------------
ALTER TABLE [dbo].[t_refund_log] ADD CONSTRAINT [PK_t_refund_log] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_request
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_request]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table t_request
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_orderno]
ON [dbo].[t_request] (
  [orderno] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_t_request_operdate]
ON [dbo].[t_request] (
  [operdate] ASC
)
GO

CREATE UNIQUE NONCLUSTERED INDEX [IX_wxsf_order_master]
ON [dbo].[t_request] (
  [orderno] ASC,
  [openid] ASC,
  [type1] ASC,
  [type2] ASC
)
GO

CREATE NONCLUSTERED INDEX [orderno_type]
ON [dbo].[t_request] (
  [orderno] ASC,
  [type1] ASC,
  [type2] ASC
)
GO

CREATE NONCLUSTERED INDEX [shopid_orderno_type]
ON [dbo].[t_request] (
  [shopid] ASC,
  [orderno] ASC,
  [type1] ASC,
  [type2] ASC,
  [openid] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table t_request
-- ----------------------------
ALTER TABLE [dbo].[t_request] ADD CONSTRAINT [PK_t_request] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_sales_activity
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_sales_activity]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table t_sales_activity
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_1]
ON [dbo].[t_sales_activity] (
  [shopid] ASC,
  [begin_date] ASC,
  [end_date] ASC,
  [enabled] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table t_sales_activity
-- ----------------------------
ALTER TABLE [dbo].[t_sales_activity] ADD CONSTRAINT [PK_t_sales_activity] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_send_message
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_send_message]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table t_send_message
-- ----------------------------
ALTER TABLE [dbo].[t_send_message] ADD CONSTRAINT [PK_t_send_message] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_sequence
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_sequence]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table t_sequence
-- ----------------------------
CREATE NONCLUSTERED INDEX [shopid]
ON [dbo].[t_sequence] (
  [shopid] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table t_sequence
-- ----------------------------
ALTER TABLE [dbo].[t_sequence] ADD CONSTRAINT [PK_t_sequence] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_share_gift_setting
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_share_gift_setting]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table t_share_gift_setting
-- ----------------------------
ALTER TABLE [dbo].[t_share_gift_setting] ADD CONSTRAINT [PK_t_share_gift_setting] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_shopid_white_list
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_shopid_white_list]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table t_shopid_white_list
-- ----------------------------
ALTER TABLE [dbo].[t_shopid_white_list] ADD CONSTRAINT [PK_t_shopid_white_list] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_shopinfo
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_shopinfo]', RESEED, 2)
GO


-- ----------------------------
-- Indexes structure for table t_shopinfo
-- ----------------------------
CREATE CLUSTERED INDEX [_dta_index_t_shopinfo_c_5_1166627199__K4]
ON [dbo].[t_shopinfo] (
  [shopid] ASC
)  
FILESTREAM_ON [NULL]
GO

CREATE UNIQUE NONCLUSTERED INDEX [_dta_index_t_shopinfo_5_1166627199__K4_3_5_10_11_24]
ON [dbo].[t_shopinfo] (
  [shopid] ASC
)
INCLUDE ([product], [cust_no], [shopname], [province], [cust_name])
GO

CREATE UNIQUE NONCLUSTERED INDEX [shopid]
ON [dbo].[t_shopinfo] (
  [shopid] ASC
)
GO


-- ----------------------------
-- Auto increment value for t_shoppingbag
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_shoppingbag]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table t_shoppingbag
-- ----------------------------
ALTER TABLE [dbo].[t_shoppingbag] ADD CONSTRAINT [PK_t_shoppingbag] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_siss_pay
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_siss_pay]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table t_siss_pay
-- ----------------------------
ALTER TABLE [dbo].[t_siss_pay] ADD CONSTRAINT [PK_t_siss_pay] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_sisspaydetail
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_sisspaydetail]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table t_sisspaydetail
-- ----------------------------
CREATE NONCLUSTERED INDEX [shopid_orderno]
ON [dbo].[t_sisspaydetail] (
  [shopid] ASC,
  [orderno] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table t_sisspaydetail
-- ----------------------------
ALTER TABLE [dbo].[t_sisspaydetail] ADD CONSTRAINT [PK_t_sisspaydetail] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_sms_request
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_sms_request]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table t_sms_request
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_1]
ON [dbo].[t_sms_request] (
  [shopid] ASC,
  [openid] ASC,
  [is_free] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table t_sms_request
-- ----------------------------
ALTER TABLE [dbo].[t_sms_request] ADD CONSTRAINT [PK_t_sms_request] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_template
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_template]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table t_template
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_1]
ON [dbo].[t_template] (
  [templatekey] ASC,
  [is_active] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table t_template
-- ----------------------------
ALTER TABLE [dbo].[t_template] ADD CONSTRAINT [PK_t_template] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_template_setting
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_template_setting]', RESEED, 2)
GO


-- ----------------------------
-- Indexes structure for table t_template_setting
-- ----------------------------
CREATE NONCLUSTERED INDEX [shopid]
ON [dbo].[t_template_setting] (
  [shopid] ASC,
  [is_current] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table t_template_setting
-- ----------------------------
ALTER TABLE [dbo].[t_template_setting] ADD CONSTRAINT [PK_t_template_shop] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_underline_refundlog
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_underline_refundlog]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table t_underline_refundlog
-- ----------------------------
ALTER TABLE [dbo].[t_underline_refundlog] ADD CONSTRAINT [PK_t_underline_refundlog] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_vip_acc_detail
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_vip_acc_detail]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table t_vip_acc_detail
-- ----------------------------
CREATE NONCLUSTERED INDEX [index_t_vip_acc_detail_card_shopid_id]
ON [dbo].[t_vip_acc_detail] (
  [card_id] ASC,
  [shopid] ASC,
  [Id] ASC,
  [vgf_date] ASC,
  [vgf_name] ASC
)
INCLUDE ([branch_no], [branch_name], [openid], [vgf_vip_num], [meme], [orderno], [state], [counts], [invited_openid])
GO

CREATE NONCLUSTERED INDEX [IX_Date]
ON [dbo].[t_vip_acc_detail] (
  [vgf_date] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_t_vip_acc_detail_orderno_Id]
ON [dbo].[t_vip_acc_detail] (
  [orderno] ASC,
  [Id] ASC
)
GO

CREATE NONCLUSTERED INDEX [orderno]
ON [dbo].[t_vip_acc_detail] (
  [orderno] ASC
)
GO

CREATE NONCLUSTERED INDEX [shopid_cardid]
ON [dbo].[t_vip_acc_detail] (
  [shopid] ASC,
  [card_id] ASC,
  [vgf_name] ASC,
  [vgf_date] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table t_vip_acc_detail
-- ----------------------------
ALTER TABLE [dbo].[t_vip_acc_detail] ADD CONSTRAINT [PK_t_vip_acc_detail] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_vip_info
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_vip_info]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table t_vip_info
-- ----------------------------
CREATE NONCLUSTERED INDEX [_dta_index_t_vip_info_5_1966630049__K2_K24_K23_K1_3_4_5_6_7_8_9_10_11_12_13_14_15_16_17_18_19_20_21_22_25_26_27_28_29_30_31]
ON [dbo].[t_vip_info] (
  [shopid] ASC,
  [firstattentiontime] ASC,
  [subscribe] ASC
)
INCLUDE ([openid], [branch_no], [card_id], [vip_name], [birthday], [vip_sex], [card_type], [type_no], [oper_date], [card_status], [acc_num], [dec_num], [now_acc_num], [vip_pass], [vip_start_date], [vip_end_date], [mobile], [email], [favourableinfo], [vippic], [regstatus], [real_name], [spread_no], [sharer_openid], [idcard_vip], [type_name], [offlineclerkno])
GO

CREATE NONCLUSTERED INDEX [_dta_index_t_vip_info_5_1966630049__K2_K24_K4_K1_3_5_6_7_8_9_10_11_12_13_14_15_16_17_18_19_20_21_22_23_25_26_27_28_29_30_31_32_]
ON [dbo].[t_vip_info] (
  [shopid] ASC,
  [firstattentiontime] ASC,
  [branch_no] ASC,
  [Id] ASC
)
INCLUDE ([openid], [card_id], [vip_name], [birthday], [vip_sex], [card_type], [type_no], [oper_date], [card_status], [acc_num], [dec_num], [now_acc_num], [vip_pass], [vip_start_date], [vip_end_date], [mobile], [email], [favourableinfo], [vippic], [subscribe], [regstatus], [real_name], [spread_no], [sharer_openid], [idcard_vip], [type_name], [offlineclerkno], [writeclerknotolinestate], [babybirthday], [babyname], [babysex], [wx_card_id], [wx_card_code], [wx_card_encrypt_code], [wx_card_membershipnumber])
GO

CREATE NONCLUSTERED INDEX [_dta_index_t_vip_info_5_1966630049__K27_K1_2_3_4_5_6_7_8_9_10_11_12_13_14_15_16_17_18_19_20_21_22_23_24_25_26_28_29_30_31_32_]
ON [dbo].[t_vip_info] (
  [spread_no] ASC,
  [Id] ASC
)
INCLUDE ([shopid], [openid], [branch_no], [card_id], [vip_name], [birthday], [vip_sex], [card_type], [type_no], [oper_date], [card_status], [acc_num], [dec_num], [now_acc_num], [vip_pass], [vip_start_date], [vip_end_date], [mobile], [email], [favourableinfo], [vippic], [subscribe], [firstattentiontime], [regstatus], [real_name], [sharer_openid], [idcard_vip], [type_name], [offlineclerkno], [writeclerknotolinestate], [babybirthday], [babyname], [babysex], [wx_card_id], [wx_card_code], [wx_card_encrypt_code], [wx_card_membershipnumber], [areano])
GO

CREATE NONCLUSTERED INDEX [card_id]
ON [dbo].[t_vip_info] (
  [card_id] ASC,
  [firstattentiontime] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_openid]
ON [dbo].[t_vip_info] (
  [openid] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_shopid_mobile]
ON [dbo].[t_vip_info] (
  [shopid] ASC,
  [mobile] ASC
)
INCLUDE ([branch_no], [firstattentiontime])
GO

CREATE NONCLUSTERED INDEX [shopid]
ON [dbo].[t_vip_info] (
  [shopid] ASC
)
INCLUDE ([Id], [openid], [branch_no], [card_id], [vip_name], [birthday], [vip_sex], [card_type], [type_no], [oper_date], [card_status], [acc_num], [dec_num], [now_acc_num], [vip_pass], [vip_start_date], [vip_end_date], [mobile], [email], [favourableinfo], [vippic], [subscribe], [firstattentiontime], [regstatus], [real_name], [spread_no], [sharer_openid], [idcard_vip], [type_name], [offlineclerkno], [writeclerknotolinestate], [babybirthday], [babyname], [babysex], [wx_card_id], [wx_card_code], [wx_card_encrypt_code], [wx_card_membershipnumber], [areano], [wxapp_openid], [wxa_openid], [bind_wxa_openid_date])
GO

CREATE UNIQUE NONCLUSTERED INDEX [shopid_openid]
ON [dbo].[t_vip_info] (
  [openid] ASC,
  [shopid] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table t_vip_info
-- ----------------------------
ALTER TABLE [dbo].[t_vip_info] ADD CONSTRAINT [PK_t_vip_info] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_vip_oper_log
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_vip_oper_log]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table t_vip_oper_log
-- ----------------------------
ALTER TABLE [dbo].[t_vip_oper_log] ADD CONSTRAINT [PK_t_vip_oper_log] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_vip_registered
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_vip_registered]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table t_vip_registered
-- ----------------------------
ALTER TABLE [dbo].[t_vip_registered] ADD CONSTRAINT [PK_t_vip_registered] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_vip_relation_log
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_vip_relation_log]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table t_vip_relation_log
-- ----------------------------
CREATE NONCLUSTERED INDEX [_dta_index_t_vip_relation_log_5_1406628054__K4_K2_1_3_5_6_7_8]
ON [dbo].[t_vip_relation_log] (
  [card_id] ASC,
  [shopid] ASC
)
INCLUDE ([Id], [openid], [operdate], [bindtype], [mobile], [billno])
GO

CREATE NONCLUSTERED INDEX [IX_cardid_20180901]
ON [dbo].[t_vip_relation_log] (
  [shopid] ASC,
  [card_id] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_mobile_20180901]
ON [dbo].[t_vip_relation_log] (
  [shopid] ASC,
  [mobile] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_openid_20180901]
ON [dbo].[t_vip_relation_log] (
  [shopid] ASC,
  [openid] ASC
)
GO

CREATE NONCLUSTERED INDEX [t_vip_relation_log_index0831]
ON [dbo].[t_vip_relation_log] (
  [shopid] ASC,
  [card_id] ASC,
  [openid] ASC,
  [mobile] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table t_vip_relation_log
-- ----------------------------
ALTER TABLE [dbo].[t_vip_relation_log] ADD CONSTRAINT [PK_t_vip_relation_log] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_wx_app_set
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_wx_app_set]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table t_wx_app_set
-- ----------------------------
ALTER TABLE [dbo].[t_wx_app_set] ADD CONSTRAINT [PK_t_wx_app_set] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_wx_card
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_wx_card]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table t_wx_card
-- ----------------------------
ALTER TABLE [dbo].[t_wx_card] ADD CONSTRAINT [PK_t_wx_card] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_wx_pay
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_wx_pay]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table t_wx_pay
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_orderno]
ON [dbo].[t_wx_pay] (
  [orderno] ASC
)
INCLUDE ([shopid], [openid], [appid], [transaction_id], [total_amt], [paysate], [operdate], [status], [ordertype])
GO

CREATE NONCLUSTERED INDEX [IX_orderno_operdate]
ON [dbo].[t_wx_pay] (
  [operdate] ASC,
  [orderno] ASC
)
GO

CREATE UNIQUE NONCLUSTERED INDEX [shopid_orderno]
ON [dbo].[t_wx_pay] (
  [shopid] ASC,
  [orderno] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table t_wx_pay
-- ----------------------------
ALTER TABLE [dbo].[t_wx_pay] ADD CONSTRAINT [PK_t_wx_pay] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_wx_pay_log
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_wx_pay_log]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table t_wx_pay_log
-- ----------------------------
ALTER TABLE [dbo].[t_wx_pay_log] ADD CONSTRAINT [PK_t_wx_pay_log] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_wx_pay_replicate
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_wx_pay_replicate]', RESEED, 1)
GO


-- ----------------------------
-- Auto increment value for t_wx_set
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_wx_set]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table t_wx_set
-- ----------------------------
CREATE NONCLUSTERED INDEX [_dta_index_t_wx_set_5_363148339__K18_K1_2_3_4_5_6_7_8_9_10_11_12_13_14_16_17_19_20_21_22_23_24_26_27_28_29]
ON [dbo].[t_wx_set] (
  [wx_gh] ASC,
  [Id] ASC
)
INCLUDE ([shopid], [appid], [branch_No], [webUrl], [appsecret], [token], [status_flag], [operdate], [welcomeinfo], [dogno], [parentid], [partnerkey], [authorizer_refresh_token], [wx_alias], [wx_nick_name], [service_type_info], [verify_type_info], [authorizer_access_token], [templateid], [defaultreply], [is_customservice], [mpqrcode], [sub_mch_id], [use_sub_mch], [qrurl])
GO

CREATE NONCLUSTERED INDEX [_dta_index_t_wx_set_5_363148339__K2_K1_3_4_5_6_7_8_9_10_11_12_13_14_15_16_17_18_19_20_21_22_23_24_26_27_28_29]
ON [dbo].[t_wx_set] (
  [shopid] ASC,
  [Id] ASC
)
INCLUDE ([appid], [branch_No], [webUrl], [appsecret], [token], [status_flag], [operdate], [welcomeinfo], [dogno], [parentid], [partnerkey], [authorizer_refresh_token], [authorizer_appid], [wx_alias], [wx_nick_name], [wx_gh], [service_type_info], [verify_type_info], [authorizer_access_token], [templateid], [defaultreply], [is_customservice], [mpqrcode], [sub_mch_id], [use_sub_mch], [qrurl])
GO

CREATE NONCLUSTERED INDEX [appid_wxgh]
ON [dbo].[t_wx_set] (
  [appid] ASC,
  [wx_gh] ASC
)
GO

CREATE UNIQUE NONCLUSTERED INDEX [shopid]
ON [dbo].[t_wx_set] (
  [shopid] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table t_wx_set
-- ----------------------------
ALTER TABLE [dbo].[t_wx_set] ADD CONSTRAINT [PK_t_wx_set] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_wxa_basicset
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_wxa_basicset]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table t_wxa_basicset
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_shopid]
ON [dbo].[t_wxa_basicset] (
  [shopid] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table t_wxa_basicset
-- ----------------------------
ALTER TABLE [dbo].[t_wxa_basicset] ADD CONSTRAINT [PK_t_wxapp_basicset] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_wxa_cart
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_wxa_cart]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table t_wxa_cart
-- ----------------------------
ALTER TABLE [dbo].[t_wxa_cart] ADD CONSTRAINT [PK_t_wxa_cart] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_wxa_codemanage
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_wxa_codemanage]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table t_wxa_codemanage
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_shopid_templateid]
ON [dbo].[t_wxa_codemanage] (
  [shopid] ASC,
  [templeteid] ASC,
  [user_version] ASC,
  [appid] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table t_wxa_codemanage
-- ----------------------------
ALTER TABLE [dbo].[t_wxa_codemanage] ADD CONSTRAINT [PK_t_wxa_codecommit] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_wxa_codetemplete
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_wxa_codetemplete]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table t_wxa_codetemplete
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_templateid]
ON [dbo].[t_wxa_codetemplete] (
  [template_id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table t_wxa_codetemplete
-- ----------------------------
ALTER TABLE [dbo].[t_wxa_codetemplete] ADD CONSTRAINT [PK_t_wxa_codetemplete] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_wxa_ordercancel
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_wxa_ordercancel]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table t_wxa_ordercancel
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_shopid_orderno]
ON [dbo].[t_wxa_ordercancel] (
  [shopid] ASC,
  [orderno] ASC,
  [openid] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table t_wxa_ordercancel
-- ----------------------------
ALTER TABLE [dbo].[t_wxa_ordercancel] ADD CONSTRAINT [PK_t_wxa_ordercancel] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_wxa_orderdetail
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_wxa_orderdetail]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table t_wxa_orderdetail
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_orderno_shopid]
ON [dbo].[t_wxa_orderdetail] (
  [shopid] ASC,
  [orderno] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table t_wxa_orderdetail
-- ----------------------------
ALTER TABLE [dbo].[t_wxa_orderdetail] ADD CONSTRAINT [PK_t_wxa_orderdetail] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_wxa_ordermaster
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_wxa_ordermaster]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table t_wxa_ordermaster
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_orderno_shopid]
ON [dbo].[t_wxa_ordermaster] (
  [shopid] ASC,
  [orderno] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table t_wxa_ordermaster
-- ----------------------------
ALTER TABLE [dbo].[t_wxa_ordermaster] ADD CONSTRAINT [PK_t_wxa_ordermaster] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_wxa_pay
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_wxa_pay]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table t_wxa_pay
-- ----------------------------
ALTER TABLE [dbo].[t_wxa_pay] ADD CONSTRAINT [PK_t_wxa_pay] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_wxa_qrcode
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_wxa_qrcode]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table t_wxa_qrcode
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_shopid]
ON [dbo].[t_wxa_qrcode] (
  [shopid] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table t_wxa_qrcode
-- ----------------------------
ALTER TABLE [dbo].[t_wxa_qrcode] ADD CONSTRAINT [PK_t_wxappqrcode] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_wxa_send_templetemessage_record
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_wxa_send_templetemessage_record]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table t_wxa_send_templetemessage_record
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_shopid_openid]
ON [dbo].[t_wxa_send_templetemessage_record] (
  [shopid] ASC,
  [openid] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table t_wxa_send_templetemessage_record
-- ----------------------------
ALTER TABLE [dbo].[t_wxa_send_templetemessage_record] ADD CONSTRAINT [PK_t_wxa_send_templetemessage_record] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_wxa_set
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_wxa_set]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table t_wxa_set
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_shopid_appid]
ON [dbo].[t_wxa_set] (
  [shopid] ASC,
  [appid] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table t_wxa_set
-- ----------------------------
ALTER TABLE [dbo].[t_wxa_set] ADD CONSTRAINT [PK_t_wxa_set] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_wxa_template_draf
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_wxa_template_draf]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table t_wxa_template_draf
-- ----------------------------
ALTER TABLE [dbo].[t_wxa_template_draf] ADD CONSTRAINT [PK_t_wxa_template_draf] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_wxa_templete
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_wxa_templete]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table t_wxa_templete
-- ----------------------------
ALTER TABLE [dbo].[t_wxa_templete] ADD CONSTRAINT [PK_t_wxapp_templete] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_wxa_tester
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_wxa_tester]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table t_wxa_tester
-- ----------------------------
ALTER TABLE [dbo].[t_wxa_tester] ADD CONSTRAINT [PK_t_wxa_tester] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_wxa_user
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_wxa_user]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table t_wxa_user
-- ----------------------------
CREATE UNIQUE NONCLUSTERED INDEX [IX_shopid_openid]
ON [dbo].[t_wxa_user] (
  [shopid] ASC,
  [openid] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table t_wxa_user
-- ----------------------------
ALTER TABLE [dbo].[t_wxa_user] ADD CONSTRAINT [PK_t_wxa_user] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_wxa_user_log
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_wxa_user_log]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table t_wxa_user_log
-- ----------------------------
ALTER TABLE [dbo].[t_wxa_user_log] ADD CONSTRAINT [PK_t_wxa_user_log] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_wxapp_set
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_wxapp_set]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table t_wxapp_set
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_shopid]
ON [dbo].[t_wxapp_set] (
  [shopid] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table t_wxapp_set
-- ----------------------------
ALTER TABLE [dbo].[t_wxapp_set] ADD CONSTRAINT [PK_t_wxapp_set] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_wxmenu
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_wxmenu]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table t_wxmenu
-- ----------------------------
ALTER TABLE [dbo].[t_wxmenu] ADD CONSTRAINT [PK_t_wxmenu] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for t_wxmenu_Custom
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[t_wxmenu_Custom]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table t_wxmenu_Custom
-- ----------------------------
ALTER TABLE [dbo].[t_wxmenu_Custom] ADD CONSTRAINT [PK_t_wxmenu_Custom] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for tb_sms
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[tb_sms]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table tb_sms
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_shopid_OpenId]
ON [dbo].[tb_sms] (
  [shopid] ASC,
  [openid] ASC
)
GO

CREATE NONCLUSTERED INDEX [phone]
ON [dbo].[tb_sms] (
  [shopid] ASC,
  [phone] ASC,
  [type] ASC
)
GO

CREATE NONCLUSTERED INDEX [tb_sms_sendtimer]
ON [dbo].[tb_sms] (
  [sendtimer] ASC
)
GO

CREATE NONCLUSTERED INDEX [tb_sms_shopid]
ON [dbo].[tb_sms] (
  [shopid] ASC,
  [type] ASC,
  [detail_memo] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table tb_sms
-- ----------------------------
ALTER TABLE [dbo].[tb_sms] ADD CONSTRAINT [PK_tb_sms] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for tb_sms_20190329
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[tb_sms_20190329]', RESEED, 1)
GO


-- ----------------------------
-- Auto increment value for temp_giftgoods
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[temp_giftgoods]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table temp_giftgoods
-- ----------------------------
ALTER TABLE [dbo].[temp_giftgoods] ADD CONSTRAINT [PK_temp_giftgoods] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for tempitem
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[tempitem]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table tempitem
-- ----------------------------
CREATE CLUSTERED INDEX [PK_Id]
ON [dbo].[tempitem] (
  [Id] ASC
)  
FILESTREAM_ON [NULL]
GO

CREATE NONCLUSTERED INDEX [idx_shopid_operdate]
ON [dbo].[tempitem] (
  [shopid] ASC,
  [operdate] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_tempitem_shop1]
ON [dbo].[tempitem] (
  [shopid] ASC
)
GO

CREATE NONCLUSTERED INDEX [shopid]
ON [dbo].[tempitem] (
  [shopid] ASC,
  [item_no] ASC,
  [type_no] ASC,
  [item_subno] ASC
)
GO


-- ----------------------------
-- Auto increment value for tempitem0622
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[tempitem0622]', RESEED, 1)
GO


-- ----------------------------
-- Auto increment value for template_voucherdetail
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[template_voucherdetail]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table template_voucherdetail
-- ----------------------------
ALTER TABLE [dbo].[template_voucherdetail] ADD CONSTRAINT [PK_template_voucherdetail] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for tempvoucherbagdetail
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[tempvoucherbagdetail]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table tempvoucherbagdetail
-- ----------------------------
ALTER TABLE [dbo].[tempvoucherbagdetail] ADD CONSTRAINT [PK_tempvoucherbagdetail] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for tempvoucherbaginfo
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[tempvoucherbaginfo]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table tempvoucherbaginfo
-- ----------------------------
ALTER TABLE [dbo].[tempvoucherbaginfo] ADD CONSTRAINT [PK_temp_voucherbaginfo] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for timer_readjust_price
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[timer_readjust_price]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table timer_readjust_price
-- ----------------------------
ALTER TABLE [dbo].[timer_readjust_price] ADD CONSTRAINT [PK__timer_re__3214EC0729221CFB] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for timer_readjust_price_product
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[timer_readjust_price_product]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table timer_readjust_price_product
-- ----------------------------
ALTER TABLE [dbo].[timer_readjust_price_product] ADD CONSTRAINT [PK__timer_re__3214EC0725518C17] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for user_branch
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[user_branch]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table user_branch
-- ----------------------------
ALTER TABLE [dbo].[user_branch] ADD CONSTRAINT [PK_user_branch] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for user_receive_notice
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[user_receive_notice]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table user_receive_notice
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_shopid_openid]
ON [dbo].[user_receive_notice] (
  [shopid] ASC,
  [openid] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table user_receive_notice
-- ----------------------------
ALTER TABLE [dbo].[user_receive_notice] ADD CONSTRAINT [PK__user_rec__3214EC071F98B2C1] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for voucher_bag_detail
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[voucher_bag_detail]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table voucher_bag_detail
-- ----------------------------
ALTER TABLE [dbo].[voucher_bag_detail] ADD CONSTRAINT [PK__voucher___3214EC07233F2673] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for voucher_bag_info
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[voucher_bag_info]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table voucher_bag_info
-- ----------------------------
ALTER TABLE [dbo].[voucher_bag_info] ADD CONSTRAINT [PK__voucher___3214EC0719DFD96B] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for voucher_bag_limitnum
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[voucher_bag_limitnum]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table voucher_bag_limitnum
-- ----------------------------
ALTER TABLE [dbo].[voucher_bag_limitnum] ADD CONSTRAINT [PK__voucher___3214EC07160F4887] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for voucher_bag_order
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[voucher_bag_order]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table voucher_bag_order
-- ----------------------------
CREATE UNIQUE NONCLUSTERED INDEX [IX_orderno]
ON [dbo].[voucher_bag_order] (
  [orderno] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table voucher_bag_order
-- ----------------------------
ALTER TABLE [dbo].[voucher_bag_order] ADD CONSTRAINT [PK__voucher___3214EC07123EB7A3] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for vouchercode
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[vouchercode]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table vouchercode
-- ----------------------------
CREATE NONCLUSTERED INDEX [_dta_index_vouchercode_5_1959678029__K9_K7_K2_K8_1_3_4_5_6]
ON [dbo].[vouchercode] (
  [randomcode] ASC,
  [useflag] ASC,
  [shopid] ASC,
  [operdate] ASC
)
INCLUDE ([Id], [openid], [cardid], [voucherid], [branchno])
GO

CREATE NONCLUSTERED INDEX [IX_1]
ON [dbo].[vouchercode] (
  [shopid] ASC,
  [openid] ASC,
  [cardid] ASC,
  [voucherid] ASC,
  [useflag] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table vouchercode
-- ----------------------------
ALTER TABLE [dbo].[vouchercode] ADD CONSTRAINT [PK_vouchercode] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for voucherdetail
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[voucherdetail]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table voucherdetail
-- ----------------------------
CREATE NONCLUSTERED INDEX [_dta_index_voucherdetail_5_1499152386__K13]
ON [dbo].[voucherdetail] (
  [useorderno] ASC
)
GO

CREATE NONCLUSTERED INDEX [<Name of Missing Index, sysname,>]
ON [dbo].[voucherdetail] (
  [getorderno] ASC
)
GO

CREATE NONCLUSTERED INDEX [idx_shopid_openid]
ON [dbo].[voucherdetail] (
  [shopid] ASC,
  [openid] ASC
)
INCLUDE ([Id], [voucherid])
GO

CREATE NONCLUSTERED INDEX [IX_openid]
ON [dbo].[voucherdetail] (
  [openid] ASC
)
INCLUDE ([Id], [voucherid])
GO

CREATE NONCLUSTERED INDEX [IX_operdate_type_20180901]
ON [dbo].[voucherdetail] (
  [operdate] ASC,
  [type] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_starttime_endtime_useflag]
ON [dbo].[voucherdetail] (
  [shopid] ASC,
  [starttime] ASC,
  [endtime] ASC,
  [useflag] ASC,
  [openid] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_voucherdetail_endtime]
ON [dbo].[voucherdetail] (
  [endtime] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_voucherdetail_operdate]
ON [dbo].[voucherdetail] (
  [operdate] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_voucherdetail_starttime]
ON [dbo].[voucherdetail] (
  [starttime] ASC
)
GO

CREATE NONCLUSTERED INDEX [shopid_useflag]
ON [dbo].[voucherdetail] (
  [shopid] ASC,
  [useflag] ASC,
  [openid] ASC,
  [voucherid] ASC
)
GO

CREATE NONCLUSTERED INDEX [shopid_useflag_2]
ON [dbo].[voucherdetail] (
  [shopid] ASC,
  [useflag] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table voucherdetail
-- ----------------------------
ALTER TABLE [dbo].[voucherdetail] ADD CONSTRAINT [PK_voucherdetail] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for wftpaydata
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[wftpaydata]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table wftpaydata
-- ----------------------------
ALTER TABLE [dbo].[wftpaydata] ADD CONSTRAINT [PK_wftpaydata] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for wftrefunddata
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[wftrefunddata]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table wftrefunddata
-- ----------------------------
ALTER TABLE [dbo].[wftrefunddata] ADD CONSTRAINT [PK_wftrefunddata] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for wx_activity_setting
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[wx_activity_setting]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table wx_activity_setting
-- ----------------------------
ALTER TABLE [dbo].[wx_activity_setting] ADD CONSTRAINT [PK_wx_activity_setting] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for wx_authorizer_access_token
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[wx_authorizer_access_token]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table wx_authorizer_access_token
-- ----------------------------
CREATE CLUSTERED INDEX [_dta_index_wx_authorizer_access_token_c_7_699149536__K2]
ON [dbo].[wx_authorizer_access_token] (
  [authorizer_appid] ASC
)  
FILESTREAM_ON [NULL]
GO


-- ----------------------------
-- Primary Key structure for table wx_authorizer_access_token
-- ----------------------------
ALTER TABLE [dbo].[wx_authorizer_access_token] ADD CONSTRAINT [PK_wx_authorizer_access_token] PRIMARY KEY NONCLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for wx_checkin_actioninfo
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[wx_checkin_actioninfo]', RESEED, 2)
GO


-- ----------------------------
-- Indexes structure for table wx_checkin_actioninfo
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_1]
ON [dbo].[wx_checkin_actioninfo] (
  [shopid] ASC,
  [is_active] ASC,
  [israndomacc] ASC,
  [isdoubleacc] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table wx_checkin_actioninfo
-- ----------------------------
ALTER TABLE [dbo].[wx_checkin_actioninfo] ADD CONSTRAINT [PK_wx_checkin_actioninfo] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for wx_component_access_token
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[wx_component_access_token]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table wx_component_access_token
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_1]
ON [dbo].[wx_component_access_token] (
  [component_appid] ASC,
  [component_access_token] ASC
)
GO

CREATE UNIQUE NONCLUSTERED INDEX [IX_appid]
ON [dbo].[wx_component_access_token] (
  [component_appid] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table wx_component_access_token
-- ----------------------------
ALTER TABLE [dbo].[wx_component_access_token] ADD CONSTRAINT [PK_wx_component_access_token] PRIMARY KEY NONCLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for wx_jsapi_ticket
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[wx_jsapi_ticket]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table wx_jsapi_ticket
-- ----------------------------
CREATE CLUSTERED INDEX [_dta_index_wx_jsapi_ticket_c_5_843150049__K2]
ON [dbo].[wx_jsapi_ticket] (
  [appid] ASC
)  
FILESTREAM_ON [NULL]
GO

CREATE NONCLUSTERED INDEX [appid]
ON [dbo].[wx_jsapi_ticket] (
  [appid] ASC,
  [expires_time] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table wx_jsapi_ticket
-- ----------------------------
ALTER TABLE [dbo].[wx_jsapi_ticket] ADD CONSTRAINT [PK_wx_jsapi_ticket] PRIMARY KEY NONCLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for wx_open_ticket
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[wx_open_ticket]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table wx_open_ticket
-- ----------------------------
CREATE NONCLUSTERED INDEX [index_1]
ON [dbo].[wx_open_ticket] (
  [AppId] ASC,
  [ComponentVerifyTicket] ASC
)
GO

CREATE UNIQUE NONCLUSTERED INDEX [index_2]
ON [dbo].[wx_open_ticket] (
  [AppId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table wx_open_ticket
-- ----------------------------
ALTER TABLE [dbo].[wx_open_ticket] ADD CONSTRAINT [PK_wx_component_verify_ticket] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for wx_registergift_actioninfo
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[wx_registergift_actioninfo]', RESEED, 2)
GO


-- ----------------------------
-- Indexes structure for table wx_registergift_actioninfo
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_1]
ON [dbo].[wx_registergift_actioninfo] (
  [shopid] ASC,
  [is_active] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table wx_registergift_actioninfo
-- ----------------------------
ALTER TABLE [dbo].[wx_registergift_actioninfo] ADD CONSTRAINT [PK_wx_registergift_actioninfo] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for wxapp_authorizer_access_token
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[wxapp_authorizer_access_token]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table wxapp_authorizer_access_token
-- ----------------------------
CREATE UNIQUE CLUSTERED INDEX [IX_id]
ON [dbo].[wxapp_authorizer_access_token] (
  [Id] ASC
)  
FILESTREAM_ON [NULL]
GO

CREATE NONCLUSTERED INDEX [IX_appid]
ON [dbo].[wxapp_authorizer_access_token] (
  [authorizer_appid] ASC,
  [authorizer_access_token] ASC,
  [expires_time] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table wxapp_authorizer_access_token
-- ----------------------------
ALTER TABLE [dbo].[wxapp_authorizer_access_token] ADD CONSTRAINT [PK_wx_app_authorizer_access_token] PRIMARY KEY NONCLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for WXSubMenu
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[WXSubMenu]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table WXSubMenu
-- ----------------------------
CREATE UNIQUE NONCLUSTERED INDEX [shopid]
ON [dbo].[WXSubMenu] (
  [shopid] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table WXSubMenu
-- ----------------------------
ALTER TABLE [dbo].[WXSubMenu] ADD CONSTRAINT [PK_WXSubMenu] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

