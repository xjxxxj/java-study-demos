/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2019/10/11 10:27:13                          */
/*==============================================================*/

/*==============================================================*/
/* Table: BasicSet                                              */
/*==============================================================*/
create table scan_code_mall.BasicSet
(
   id                   bigint not null,
   shopid               varchar(50) not null,
   smsurl               varchar(255),
   listshownum          int,
   operdate             datetime,
   smsuser              varchar(255),
   smspassword          varchar(255),
   smsnum               int default 50,
   pay_type             varchar(50) default '2,1,0,',
   deal_type            varchar(50) default '1,0,',
   theme                varchar(50),
   firstchargemoney     decimal(18,2) default 0,
   usesubtype           tinyint(1) not null default 0,
   offlinevipdiscount   tinyint(1) not null default 0,
   is_customservice     tinyint(1) default 0,
   freight              int,
   freefreight          int default 0,
   flagreg              tinyint(1) not null default 1,
   isnotverifyphone     tinyint(1) not null default 0,
   flagcheckofflinestock tinyint(1) not null default 0,
   flagbind             tinyint(1) not null default 1,
   orderremind          varchar(150),
   mutiget_for_spendingvoucher char(1),
   full_money_for_spendingvoucher decimal(18,2),
   freight1             int,
   freight_distance1    decimal(18,2),
   freight2             int,
   freight_distance2    decimal(18,2),
   freight3             int,
   freight_type         char(1),
   market_default_theme int,
   isopensmsnotice      tinyint(1) not null default 0,
   isopensmsnotice_display tinyint(1) not null default 0,
   smsnotice_phone      varchar(200),
   playprice            decimal(18,2),
   is_bind_multiple_wxusers tinyint(1) default 0,
   giftdeal_type        varchar(50),
   wx_loginid           varchar(50),
   wx_nickname          varchar(200),
   isopenbirthday       tinyint(1) not null default 0,
   chargefeeremind      varchar(500),
   can_user_change_pwd  tinyint(1) not null default 0,
   isneed_idcardforvip  tinyint(1) not null default 0,
   isneed_idcardforreceiver tinyint(1) not null default 0,
   isneed_vipsex        tinyint(1) not null default 0,
   allow_nonmember_orders tinyint(1) not null default 0,
   isopen_supp_bind     tinyint(1) not null default 0,
   refund_pwd           varchar(50),
   usecustomtheme       tinyint(1) not null default 0,
   customtheme          varchar(50),
   marketingcenterconfig char(1) default '1',
   isopen_customchargefee tinyint(1) not null default 0,
   isneed_defaultbranch tinyint(1) not null default 0,
   isopen_voucherregive tinyint(1) not null default 1,
   isopen_voucherregive_repeated tinyint(1) not null default 1,
   isopen_multiplepintuan tinyint(1) not null default 1,
   isopen_offlinevoucher tinyint(1) not null default 0,
   isclose_cancelorder  tinyint(1) not null default 0,
   voucherbag_pay_type  varchar(50),
   isrefund_voucher     tinyint(1) not null default 0,
   isneed_babysex       tinyint(1) not null default 0,
   pay_type_default     int not null default -1,
   voucherbag_pay_type_default int not null default -1,
   isneed_areano        tinyint(1) not null default 0,
   isshow_myextension_vipdetail tinyint(1) not null default 0,
   giftorderremind      varchar(250),
   pintuanorderremind   varchar(250),
   buyfullorderremind   varchar(250),
   discountsaleorderremind varchar(250),
   isopen_pwdbind       tinyint(1) not null default 0,
   voucherorderremind   varchar(250),
   isopen_ordermemo     tinyint(1) not null default 0,
   ordermemo_name       varchar(50),
   ordermemo_placeholder varchar(50),
   isneed_babybirthday  tinyint(1) not null default 0,
   smssupplier          varchar(50),
   smsuserid            varchar(25),
   voucheroutdays       char(10),
   isdefault_chat       tinyint(1) not null default 0,
   deal_type_default    int,
   member_bindtype      varchar(10),
   member_binddefault   int,
   usesubtypedefault    int,
   scorepayopen         tinyint(1) not null default 0,
   scorerate            int not null default 0,
   scorermb             int not null default 0,
   isopenvipmulti       tinyint(1) not null default 0,
   isneed_babyname      tinyint(1) not null default 0,
   isneed_openbranch    tinyint(1) not null default 0,
   primary key (id)
);

/*==============================================================*/
/* Table: SissMember                                            */
/*==============================================================*/
create table scan_code_mall.SissMember
(
   id                   bigint not null,
   UserName             varchar(100) not null,
   PassWord             varchar(100) not null,
   PhoneNo              varchar(100) not null,
   Email                varchar(100),
   Shopid               varchar(50) not null,
   operdate             datetime,
   TianDianid           varchar(50),
   primary key (id)
);

/*==============================================================*/
/* Table: SystemConfig                                          */
/*==============================================================*/
create table scan_code_mall.SystemConfig
(
   id                   bigint not null,
   shopid               varchar(50) not null,
   domain               varchar(200),
   port                 int,
   security             varchar(200),
   active               varchar(50),
   db                   varchar(100),
   operdate             datetime,
   primary key (id)
);

/*==============================================================*/
/* Table: childaccount                                          */
/*==============================================================*/
create table scan_code_mall.childaccount
(
   id                   bigint not null,
   mobile               varchar(50),
   pwd                  varchar(100),
   shopid               varchar(50),
   isactive             bool,
   activedate           datetime,
   name                 varchar(50),
   isshow_product       tinyint(1) not null,
   isshow_branch        tinyint(1) not null,
   openid               varchar(50),
   phoneno              varchar(50),
   primary key (id)
);


/*==============================================================*/
/* Table: member_card_set                                       */
/*==============================================================*/
create table scan_code_mall.member_card_set
(
   id                   bigint not null,
   font_position        varchar(100),
   font_style           varchar(100),
   font_color           varchar(100),
   font_size            varchar(100),
   shopid               varchar(50) not null,
   user_headimg_isshow  int default 1,
   isshow               int default 2,
   homepic              varchar(150),
   showshoplogo         tinyint(1) not null default 1,
   showshopname         tinyint(1) not null default 1,
   showcardid           tinyint(1) not null default 1,
   showqrcode           tinyint(1) not null default 1,
   usedefaultcard       tinyint(1) not null default 1,
   primary key (id)
);

/*==============================================================*/
/* Table: order_cancel                                          */
/*==============================================================*/
create table scan_code_mall.order_cancel
(
   id                   bigint not null,
   shopid               varchar(50) not null,
   orderno              varchar(50) not null,
   from_type            smallint not null,
   from_id              varchar(50),
   from_name            varchar(50),
   from_tel             varchar(50),
   apply_reason         varchar(500) not null,
   create_time          datetime not null,
   update_time          datetime not null,
   oper_time            datetime,
   oper_id              varchar(50),
   oper_reason          varchar(500),
   state                smallint not null,
   memo                 varchar(500),
   amt                  numeric(18,4) not null,
   refund_state         smallint,
   need_refund          smallint not null,
   refund_way           varchar(50),
   voucherback_id       varchar(100),
   voucher_isback       bool,
   primary key (id)
);

/*==============================================================*/
/* Table: paycode                                               */
/*==============================================================*/
create table scan_code_mall.paycode
(
   id                   bigint not null,
   shopid               varchar(50) not null,
   openid               varchar(50),
   cardid               varchar(50) not null,
   branchno             varchar(50),
   useflag              char(1) not null,
   operdate             datetime not null,
   randomcode           varchar(50) not null,
   primary key (id)
);

/*==============================================================*/
/* Table: saomacode                                             */
/*==============================================================*/
create table scan_code_mall.saomacode
(
   id                   bigint not null,
   shopid               varchar(50),
   openid               varchar(50),
   operdate             datetime,
   randomcode           varchar(50) not null,
   primary key (id)
);

/*==============================================================*/
/* Table: sisspaynotifybody                                     */
/*==============================================================*/
create table scan_code_mall.sisspaynotifybody
(
   id                   bigint not null,
   shopid               varchar(50),
   openid               varchar(50),
   cardid               varchar(50),
   out_trade_no         varchar(50) not null,
   trade_no             varchar(50) not null,
   third_trade_no       varchar(50),
   total_amount         decimal(18,2) not null,
   trade_time           datetime not null,
   pay_result           varchar(250),
   receive_time         datetime not null,
   remark               varchar(500),
   primary key (id)
);


/*==============================================================*/
/* Table: t_accesstoken                                         */
/*==============================================================*/
create table scan_code_mall.t_accesstoken
(
   id                   bigint not null,
   appid                varchar(50),
   accesstoken          varchar(512),
   expiresin            int,
   updatetime           datetime,
   validity             smallint default 1,
   primary key (id)
);


/*==============================================================*/
/* Table: t_ad                                                  */
/*==============================================================*/
create table scan_code_mall.t_ad
(
   id                   bigint not null,
   ad_no                char(10),
   ad_name              varchar(50),
   ad_level             varchar(50),
   ad_plevel            varchar(50),
   primary key (id)
);


/*==============================================================*/
/* Table: t_adults                                              */
/*==============================================================*/
create table scan_code_mall.t_adults
(
   id                   bigint not null,
   shopid               varchar(50) not null,
   openid               varchar(50),
   adultscontent        varchar(200),
   orderno              varchar(50),
   operdate             datetime,
   operman              varchar(50),
   doflag               char(1),
   opertel              varchar(50),
   itemno               varchar(50),
   score                smallint,
   isreply              char(1),
   primary key (id)
);

/*==============================================================*/
/* Table: t_alarm                                               */
/*==============================================================*/
create table scan_code_mall.t_alarm
(
   id                   bigint not null,
   appid                varchar(200),
   openid               varchar(50),
   orderno              bigint,
   ErrorType            varchar(50),
   Description          varchar(200),
   AlarmContent         varchar(200),
   operdate             datetime,
   primary key (id)
);

/*==============================================================*/
/* Table: t_alipay_code_version                                 */
/*==============================================================*/
create table scan_code_mall.t_alipay_code_version
(
   id                   bigint not null,
   shopid               varchar(50) not null,
   auth_app_id          varchar(50) not null,
   template_version     varchar(20) not null,
   ext                  varchar(1000),
   template_id          varchar(50) not null,
   app_version          varchar(50) not null,
   submit_date          datetime not null,
   submit_sussess       tinyint(1) not null,
   last_submit_date     datetime,
   submit_message       varchar(200),
   BuildStatus          varchar(50),
   CreateStatus         varchar(50),
   NeedRotation         varchar(50),
   VersionCreated       varchar(50),
   experience_version   bool,
   experience_message   varchar(200),
   experience_qrcode    varchar(300),
   experience_status    varchar(50),
   experience_qrcode_message varchar(300),
   code_review          bool,
   code_review_message  varchar(300),
   code_review_date     datetime,
   code_review_parameter varchar(1000),
   online               bool,
   online_message       varchar(1000),
   online_date          datetime,
   primary key (id)
);

/*==============================================================*/
/* Table: t_alipay_flow                                         */
/*==============================================================*/
create table scan_code_mall.t_alipay_flow
(
   id                   bigint not null,
   shopid               varchar(50) not null,
   orderno              varchar(50) not null,
   tradeno              varchar(50),
   userid               varchar(50) not null,
   create_tradeno_time  datetime,
   paystatus            tinyint(1) not null,
   update_paystatus_time datetime,
   buyer_logon_id       varchar(100),
   trade_status         varchar(100),
   buyer_user_id        varchar(100),
   total_amount         decimal(18),
   buyer_pay_amount     varchar(10),
   discount_amount      varchar(10),
   discount_goods_detail varchar(500),
   mdiscount_amount     varchar(10),
   point_amount         varchar(10),
   primary key (id)
);

/*==============================================================*/
/* Table: t_alipay_set                                          */
/*==============================================================*/
create table scan_code_mall.t_alipay_set
(
   id                   bigint not null,
   shopid               varchar(50) not null,
   auth_app_id          varchar(50),
   app_auth_code        varchar(50),
   app_auth_token       varchar(200),
   app_refresh_token    varchar(200),
   firstdate            datetime,
   lastdate             datetime,
   expires_in           varchar(50),
   re_expires_in        varchar(50),
   userid               varchar(50),
   expires_in_date      datetime,
   re_expires_in_date   datetime,
   appid                varchar(50) not null,
   app_name             varchar(50),
   app_english_name     varchar(50),
   app_category_ids     varchar(200),
   app_slogan           varchar(50),
   service_phone        varchar(50),
   service_email        varchar(50),
   app_logo             longtext,
   app_desc             varchar(250),
   app_create_date      datetime,
   app_update_date      datetime,
   batch_no             varchar(50),
   app_create_status    varchar(50),
   account              varchar(200),
   contact_name         varchar(200),
   contact_mobile       varchar(50),
   contact_email        varchar(200),
   order_ticket         varchar(50),
   batch_status         varchar(50),
   primary key (id)
);

/*==============================================================*/
/* Table: t_alipay_user                                         */
/*==============================================================*/
create table scan_code_mall.t_alipay_user
(
   id                   bigint not null,
   shopid               varchar(25) not null,
   user_id              varchar(50) not null,
   access_token         varchar(50),
   expires_in           varchar(50),
   refresh_token        varchar(50),
   re_expires_in        varchar(50),
   firstdate            datetime,
   lastdate             datetime,
   expires_in_date      datetime,
   re_expires_in_date   datetime,
   auth_appid           varchar(50) not null,
   appid                varchar(50),
   cardid               varchar(50),
   continuescan         tinyint(1) default 0,
   phone                varchar(25),
   primary key (id)
);

/*==============================================================*/
/* Table: t_award_info                                          */
/*==============================================================*/
create table scan_code_mall.t_award_info
(
   id                   bigint not null,
   shopid               varchar(50),
   award_type           char(1),
   activity_name        varchar(50),
   description          varchar(250),
   begin_date           datetime,
   end_date             datetime,
   person_num           int,
   max_time             int default 1,
   time_type            int default 1,
   finished_person_num  int,
   is_current           tinyint(1) default 0,
   is_continue          bool,
   is_open_score        bool,
   score                numeric(18,2),
   is_open_scoreonly    bool,
   batch_update_time    datetime,
   typeflag             int,
   isopendealtype       bool,
   dealtype             varchar(10),
   primary key (id)
);

/*==============================================================*/
/* Table: t_card_pay                                            */
/*==============================================================*/
create table scan_code_mall.t_card_pay
(
   id                   bigint not null,
   shopid               varchar(50),
   openid               varchar(50),
   card_id              varchar(50),
   orderno              varchar(50),
   total_amt            numeric(18,4),
   paysate              char(1),
   operdate             datetime,
   status               varchar(50),
   type                 smallint,
   primary key (id)
);

/*==============================================================*/
/* Table: t_chargefee                                           */
/*==============================================================*/
create table scan_code_mall.t_chargefee
(
   id                   bigint not null,
   shopid               varchar(50) not null,
   openid               varchar(50) not null,
   orderno              varchar(50) not null,
   amt                  numeric(18,4) not null,
   realamt              numeric(18,4),
   paystatus            varchar(50),
   operdate             datetime,
   cardid               varchar(50),
   discounttype         varchar(255),
   memo                 varchar(255),
   rechargevoucherid    varchar(500),
   primary key (id)
);

/*==============================================================*/
/* Table: t_chargefee_replicate                                 */
/*==============================================================*/
create table scan_code_mall.t_chargefee_replicate
(
   province             varchar(50),
   cust_no              varchar(50),
   cust_name            varchar(150),
   shopid               varchar(50) not null,
   shopname             varchar(50),
   contacts             varchar(50),
   moble1               varchar(50),
   tel                  varchar(50),
   orderno              varchar(50) not null,
   total_amt            numeric(18,4),
   realamt              numeric(18,4),
   operdate             datetime,
   cardid               varchar(50),
   mobile               varchar(50),
   openid               varchar(50) not null
);

/*==============================================================*/
/* Table: t_defer_record                                        */
/*==============================================================*/
create table scan_code_mall.t_defer_record
(
   id                   bigint not null,
   shopid               varchar(50) not null,
   oper_date            datetime not null,
   defer_end_date       datetime not null,
   ispay                tinyint(1) not null default 0,
   pay_amt              numeric(18,4) not null default 0,
   sale_no              varchar(200),
   oper_id              varchar(40),
   defer_type           int not null default 2,
   defer_oper_type      int not null default 1,
   primary key (id)
);


/*==============================================================*/
/* Table: t_freshgoods                                          */
/*==============================================================*/
create table scan_code_mall.t_freshgoods
(
   id                   bigint not null,
   shopid               varchar(50) not null,
   branch_no            varchar(50) not null,
   item_no              varchar(50) not null,
   item_name            varchar(100) not null,
   source_price         decimal(18,4) not null,
   sale_price           decimal(18,4) not null,
   sale_qty             decimal(18,4) not null,
   sale_amt             decimal(18,4),
   unit_no              varchar(200),
   item_size            varchar(200),
   plan_no              varchar(200),
   spec_flag            varchar(200),
   operdate             datetime default 'getdate()',
   barcode              varchar(50),
   primary key (id)
);

/*==============================================================*/
/* Table: t_jsapiticket                                         */
/*==============================================================*/
create table scan_code_mall.t_jsapiticket
(
   id                   bigint not null,
   appid                varchar(50),
   ticket               varchar(512),
   expiresin            int,
   updatetime           datetime,
   validity             smallint,
   primary key (id)
);

/*==============================================================*/
/* Table: t_net_request                                         */
/*==============================================================*/
create table scan_code_mall.t_net_request
(
   id                   bigint not null,
   shopid               varchar(50) not null,
   type1                varchar(50) not null,
   type2                smallint not null,
   operdate             datetime default 'getdate()',
   total_time           bigint,
   openid               varchar(50),
   primary key (id)
);

/*==============================================================*/
/* Table: t_refund                                              */
/*==============================================================*/
create table scan_code_mall.t_refund
(
   id                   bigint not null,
   orderno              varchar(50),
   reason               varchar(100),
   applydate            datetime,
   status               varchar(10),
   reply                varchar(100),
   replydate            datetime,
   primary key (id)
);

/*==============================================================*/
/* Table: t_refund_log                                          */
/*==============================================================*/
create table scan_code_mall.t_refund_log
(
   id                   bigint not null,
   shopid               varchar(50) not null,
   payway               varchar(2) not null,
   orderno              varchar(50) not null,
   openid               varchar(50) not null,
   card_id              varchar(50),
   money                decimal(18,2) not null,
   success              tinyint(1) not null,
   message              varchar(1000),
   addtime              datetime not null,
   remarks              varchar(1000),
   isagain              bool,
   primary key (id)
);

/*==============================================================*/
/* Table: t_request                                             */
/*==============================================================*/
create table scan_code_mall.t_request
(
   id                   bigint not null,
   shopid               varchar(50),
   openid               varchar(50),
   orderno              varchar(50) not null,
   type1                smallint not null,
   type2                smallint not null,
   operdate             datetime,
   primary key (id)
);

/*==============================================================*/
/* Table: t_shopid_white_list                                   */
/*==============================================================*/
create table scan_code_mall.t_shopid_white_list
(
   id                   bigint not null,
   operdate             datetime not null,
   shopid               char(10),
   primary key (id)
);

/*==============================================================*/
/* Table: t_shopinfo                                            */
/*==============================================================*/
create table scan_code_mall.t_shopinfo
(
   id                   bigint,
   dogno                varchar(50),
   product              varchar(50),
   shopid               varchar(50) not null,
   cust_no              varchar(50),
   wx_id                varchar(50),
   oper_date            datetime,
   stat_date            datetime,
   end_date             datetime,
   shopname             varchar(50),
   province             varchar(50),
   city                 varchar(50),
   address              varchar(100),
   contacts             varchar(50),
   mobile               varchar(50),
   email                varchar(50),
   memo                 varchar(200),
   LogoPic              varchar(200),
   randomcode           varchar(50),
   prikey               varchar(255),
   pubkey               varchar(255),
   modn                 varchar(255),
   tel                  varchar(50),
   cust_name            varchar(150),
   iscopytokc           char(1),
   playprice            decimal(18,2),
   showsalenum          tinyint(1) default 0,
   showstocknum         tinyint(1) default 0,
   ispay                tinyint(1) not null default 0,
   pay_amt              numeric(18,4),
   sale_no              varchar(200),
   is_open_bosshelper   tinyint(1) default 0,
   IsMemberVersion      char(1) default '0',
   isopen_membermarketing tinyint(1) not null default 0,
   bind_clerk_num       int not null default 5,
   isopen_clerk_num     tinyint(1) not null default 1,
   open_membermarketing_date datetime,
   wxapp_startdate      datetime,
   wxapp_enddate        datetime,
   wxa_pay_amt          decimal(18,4) not null default 0.0000,
   wxa_sale_no          varchar(50),
   wxa_ispay            tinyint(1) not null default 0,
   IsSaoMaGou           bool,
   LicensePic           varchar(250),
   showLicensePic       tinyint(1) not null default 0
);

/*==============================================================*/
/* Table: t_shoppingbag                                         */
/*==============================================================*/
create table scan_code_mall.t_shoppingbag
(
   id                   bigint not null,
   shopid               varchar(50) not null,
   name                 varchar(50) not null,
   barcode              varchar(50) not null,
   price                decimal(18,2) not null,
   inorder              int not null default 0,
   useflag              tinyint(1) not null,
   primary key (id)
);

/*==============================================================*/
/* Table: t_sisspaydetail                                       */
/*==============================================================*/
create table scan_code_mall.t_sisspaydetail
(
   id                   bigint not null,
   shopid               varchar(50),
   orderno              varchar(50),
   wft_pay_info         varchar(1000),
   money                decimal(18,2),
   operdate             datetime,
   payway               varchar(2),
   primary key (id)
);

/*==============================================================*/
/* Index: shopid_orderno                                        */
/*==============================================================*/
create index shopid_orderno on scan_code_mall.t_sisspaydetail
(
   shopid,
   orderno
);

/*==============================================================*/
/* Table: t_underline_refundlog                                 */
/*==============================================================*/
create table scan_code_mall.t_underline_refundlog
(
   id                   bigint not null,
   shopid               varchar(50) not null,
   orderno              varchar(50) not null,
   amt                  varchar(50) not null,
   type                 varchar(50) not null,
   rawencrydata         varchar(1000) not null,
   linklog              bigint not null,
   adddate              datetime not null,
   primary key (id)
);

/*==============================================================*/
/* Table: t_vip_info                                            */
/*==============================================================*/
create table scan_code_mall.t_vip_info
(
   id                   bigint not null,
   shopid               varchar(50) not null,
   openid               varchar(50) not null,
   branch_no            varchar(50),
   card_id              varchar(50),
   vip_name             varchar(50),
   birthday             varchar(50),
   vip_sex              varchar(50),
   card_type            varchar(50),
   type_no              varchar(50),
   oper_date            datetime,
   card_status          varchar(50),
   acc_num              numeric(18,0),
   dec_num              numeric(18,0),
   now_acc_num          numeric(18,0),
   vip_pass             varchar(50),
   vip_start_date       datetime,
   vip_end_date         datetime,
   mobile               varchar(50),
   email                varchar(50),
   favourableinfo       varchar(50),
   vippic               varchar(500),
   subscribe            char(1),
   firstattentiontime   datetime,
   regstatus            varchar(50) default '¹Ø×¢',
   real_name            varchar(50),
   spread_no            varchar(50),
   sharer_openid        varchar(50),
   idcard_vip           varchar(20),
   type_name            varchar(50),
   offlineclerkno       varchar(50),
   writeclerknotolinestate tinyint(1) default 0,
   babybirthday         varchar(50),
   babyname             varchar(50),
   babysex              varchar(10),
   wx_card_id           varchar(50),
   wx_card_code         varchar(50),
   wx_card_encrypt_code varchar(500),
   wx_card_membershipnumber varchar(50),
   areano               varchar(50),
   wxapp_openid         varchar(50),
   wxa_openid           varchar(50),
   bind_wxa_openid_date datetime,
   primary key (id)
);

/*==============================================================*/
/* Table: t_wx_pay                                              */
/*==============================================================*/
create table scan_code_mall.t_wx_pay
(
   id                   bigint not null,
   shopid               varchar(50) not null,
   openid               varchar(50),
   appid                varchar(50),
   orderno              varchar(50) not null,
   transaction_id       varchar(50),
   total_amt            numeric(18,4),
   paysate              char(1),
   operdate             datetime,
   status               varchar(50),
   ordertype            varchar(50),
   payway               char(1),
   primary key (id)
);

/*==============================================================*/
/* Table: t_wx_pay_log                                          */
/*==============================================================*/
create table scan_code_mall.t_wx_pay_log
(
   id                   bigint not null,
   shopid               varchar(50) not null,
   openid               varchar(50),
   appid                varchar(50),
   transaction_id       varchar(50),
   out_trade_no         varchar(50),
   total_amt            numeric(18,4),
   partner              varchar(50),
   time_end             datetime,
   trade_state          varchar(50),
   pay_info             varchar(200),
   operatedate          datetime,
   prepay_id            varchar(50),
   ordertype            varchar(50),
   primary key (id)
);

/*==============================================================*/
/* Table: t_wx_set                                              */
/*==============================================================*/
create table scan_code_mall.t_wx_set
(
   id                   bigint not null,
   shopid               varchar(50) not null,
   appid                varchar(50),
   branch_No            varchar(50),
   webUrl               varchar(100),
   appsecret            varchar(50),
   token                varchar(50),
   status_flag          char(1),
   operdate             datetime,
   welcomeinfo          varchar(1024),
   dogno                varchar(50),
   parentid             varchar(50),
   partnerkey           varchar(50),
   authorizer_refresh_token varchar(1024),
   authorizer_appid     varchar(255),
   wx_alias             varchar(255),
   wx_nick_name         varchar(255),
   wx_gh                varchar(255),
   service_type_info    varchar(255),
   verify_type_info     varchar(255),
   authorizer_access_token varchar(512),
   templateid           varchar(255),
   defaultreply         varchar(500),
   is_customservice     tinyint(1) default 0,
   mpqrcode             varchar(100),
   sub_mch_id           varchar(50),
   use_sub_mch          tinyint(1) default 0,
   qrurl                varchar(100),
   sisspaymch_id        varchar(100),
   sisspaykey           varchar(100),
   payway               char(1),
   coupontmpid          varchar(255),
   couponoutdatetmpid   varchar(255),
   viparrivaltmpid      varchar(255),
   tradefailtmpid       varchar(255),
   primary key (id)
);

/*==============================================================*/
/* Table: t_wxa_basicset                                        */
/*==============================================================*/
create table scan_code_mall.t_wxa_basicset
(
   id                   bigint not null,
   limitnum             int not null,
   shopid               varchar(50) not null,
   wxaname              varchar(50),
   inspect_minute       int not null default 3,
   tel                  varchar(50),
   changeprice          tinyint(1) not null default 0,
   wxpayactionreport    tinyint(1) not null default 0,
   paytypes             varchar(50) not null default '2',
   custombarcode        tinyint(1) not null default 0,
   shoppingbag          tinyint(1) not null default 0,
   underlinesaleplan    tinyint(1) not null default 0,
   goodstag             varchar(50),
   alipay_partnerid     varchar(50),
   category             varchar(50) default 'independent',
   sisspaymch           varchar(50),
   appid                varchar(50),
   is_open_register     tinyint(1) default 1,
   is_open_bind         tinyint(1) default 1,
   primary key (id)
);

/*==============================================================*/
/* Table: t_wxa_cart                                            */
/*==============================================================*/
create table scan_code_mall.t_wxa_cart
(
   id                   bigint not null,
   shopid               varchar(50) not null,
   openid               varchar(50) not null,
   cardid               varchar(50),
   branchno             varchar(50) not null,
   itemname             varchar(100) not null,
   cartno               varchar(50) not null,
   oldprice             decimal(18,4) not null,
   price                decimal(18,4) not null,
   num                  decimal(18,4) not null,
   amt                  decimal(18,4) not null,
   itemno               varchar(50) not null,
   barcode              varchar(50) not null,
   unit                 varchar(200),
   spec                 varchar(200),
   spec_flag            varchar(200),
   plan_no              varchar(200),
   isfreshgoods         varchar(2),
   goodstype            varchar(2),
   adddate              datetime not null,
   item_flow_id         int not null,
   is_promote           varchar(2),
   promote_detail       varchar(2000),
   primary key (id)
);

/*==============================================================*/
/* Table: t_wxa_codemanage                                      */
/*==============================================================*/
create table scan_code_mall.t_wxa_codemanage
(
   id                   bigint not null,
   shopid               varchar(50),
   templeteid           int,
   user_version         varchar(250),
   user_desc            varchar(250),
   codecommit_status    varchar(2),
   codecommit_date      datetime,
   codecommit_result    varchar(200),
   codeaudit_status     varchar(2),
   codeaudit_date       datetime,
   codeaudit_result     varchar(200),
   appid                varchar(50),
   codeaudit_id         varchar(50),
   audit_status         varchar(2),
   audit_reason         varchar(1000),
   release_status       varchar(10),
   release_reason       varchar(1000),
   wxatype              varchar(50) not null default 'saomagou',
   primary key (id)
);

/*==============================================================*/
/* Table: t_wxa_codetemplete                                    */
/*==============================================================*/
create table scan_code_mall.t_wxa_codetemplete
(
   id                   bigint not null,
   template_id          int not null,
   user_version         varchar(50),
   user_desc            varchar(1000),
   wxatype              varchar(50) not null default 'saomagou',
   primary key (id)
);


/*==============================================================*/
/* Table: t_wxa_ordercancel                                     */
/*==============================================================*/
create table scan_code_mall.t_wxa_ordercancel
(
   id                   bigint not null,
   shopid               varchar(50) not null,
   orderno              varchar(50) not null,
   need_refund_money    varchar(2) not null,
   cancel_from          varchar(2) not null,
   cancel_oper_id       varchar(50) not null,
   apply_date           datetime not null,
   cancel_date          datetime,
   refund_status        varchar(2),
   refund_date          datetime,
   memo                 varchar(200),
   audit_status         varchar(2),
   audit_date           datetime,
   openid               varchar(50),
   apply_reason         varchar(200),
   audit_result         varchar(50),
   refund_result        varchar(200),
   primary key (id)
);


/*==============================================================*/
/* Table: t_wxa_orderdetail                                     */
/*==============================================================*/
create table scan_code_mall.t_wxa_orderdetail
(
   id                   bigint not null,
   shopid               varchar(50) not null,
   orderno              varchar(50) not null,
   cardid               varchar(50),
   openid               varchar(50) not null,
   itembarcode          varchar(50),
   itemno               varchar(50),
   itemname             varchar(250),
   price                decimal(18,4) not null,
   oldprice             decimal(18,4) not null,
   unit                 varchar(200),
   spec                 varchar(200),
   num                  int not null,
   spec_flag            varchar(50),
   plan_no              varchar(50),
   primary key (id)
);


/*==============================================================*/
/* Table: t_wxa_ordermaster                                     */
/*==============================================================*/
create table scan_code_mall.t_wxa_ordermaster
(
   id                   bigint not null,
   shopid               varchar(50) not null,
   orderno              varchar(50) not null,
   branchno             varchar(50),
   branchname           varchar(200),
   cardid               varchar(50),
   openid               varchar(50) not null,
   payway               varchar(2) not null,
   paystatus            varchar(2) not null,
   amt                  decimal(18,4) not null,
   orderdesc            varchar(1000),
   ordertime            datetime not null,
   paytime              datetime,
   opertime             datetime,
   status               varchar(2),
   form_id              varchar(50),
   trade_state          varchar(250),
   primary key (id)
);
/*==============================================================*/
/* Table: t_wxa_qrcode                                          */
/*==============================================================*/
create table scan_code_mall.t_wxa_qrcode
(
   id                   bigint not null,
   shopid               varchar(50) not null,
   category             varchar(50) not null,
   config               varchar(1000) not null,
   imageurl             longtext,
   width                int not null,
   operdate             datetime not null,
   path                 varchar(200),
   primary key (id)
);


/*==============================================================*/
/* Table: t_wxa_send_templetemessage_record                     */
/*==============================================================*/
create table scan_code_mall.t_wxa_send_templetemessage_record
(
   id                   bigint not null,
   shopid               varchar(50) not null,
   openid               varchar(50) not null,
   templete_type        varchar(50) not null,
   message              varchar(1000),
   senddate             datetime not null,
   primary key (id)
);

/*==============================================================*/
/* Table: t_wxa_set                                             */
/*==============================================================*/
create table scan_code_mall.t_wxa_set
(
   id                   bigint not null,
   shopid               varchar(50) not null,
   appid                varchar(50),
   branch_No            varchar(50),
   webUrl               varchar(100),
   appsecret            varchar(50),
   token                varchar(50),
   status_flag          char(1),
   operdate             datetime,
   welcomeinfo          varchar(1024),
   dogno                varchar(50),
   parentid             varchar(50),
   partnerkey           varchar(50),
   authorizer_refresh_token varchar(1024),
   authorizer_appid     varchar(255),
   authorizer_access_token varchar(512),
   wx_alias             varchar(255),
   wx_nick_name         varchar(255),
   wx_gh                varchar(255),
   service_type_info    varchar(255),
   verify_type_info     varchar(255),
   templateid           varchar(255),
   defaultreply         varchar(500),
   is_customservice     tinyint(1) default 0,
   mpqrcode             varchar(100),
   sub_mch_id           varchar(50),
   use_sub_mch          tinyint(1) default 0,
   qrurl                varchar(100),
   sisspaymch_id        varchar(100),
   payway               varchar(10),
   coupontmpid          varchar(255),
   couponoutdatetmpid   varchar(255),
   domainserver_config  varchar(2) default '0',
   setwebviewdomain     varchar(2),
   domainserver_config_result varchar(500),
   setwebviewdomain_result varchar(500),
   wxa_openid           varchar(50),
   bind_wxa_openid_date datetime default 'getdate()',
   primary key (id)
);

/*==============================================================*/
/* Table: t_wxa_template_draf                                   */
/*==============================================================*/
create table scan_code_mall.t_wxa_template_draf
(
   id                   bigint not null,
   create_time          datetime not null,
   user_version         varchar(500),
   user_desc            varchar(500),
   draft_id             int not null,
   status               varchar(2),
   operdate             datetime,
   adddate              datetime not null,
   temptype             varchar(2),
   enable_date          datetime,
   enable_status        varchar(2),
   not_enable_date      datetime,
   select_tocodetemplete varchar(2),
   primary key (id)
);

/*==============================================================*/
/* Table: t_wxa_templete                                        */
/*==============================================================*/
create table scan_code_mall.t_wxa_templete
(
   id                   bigint not null,
   shopid               varchar(50) not null,
   templete_id          varchar(50) not null,
   templete_type        varchar(50) not null,
   operdate             datetime not null,
   keyword_id_list      varchar(50),
   primary key (id)
);

/*==============================================================*/
/* Table: t_wxa_tester                                          */
/*==============================================================*/
create table scan_code_mall.t_wxa_tester
(
   id                   bigint not null,
   shopid               varchar(50) not null,
   wechatid             varchar(100) not null,
   userstr              varchar(200) not null,
   status               varchar(2) not null,
   operdate             datetime not null,
   operlog              longtext,
   primary key (id)
);

/*==============================================================*/
/* Table: t_wxa_user                                            */
/*==============================================================*/
create table scan_code_mall.t_wxa_user
(
   id                   bigint not null,
   shopid               varchar(50) not null,
   openid               varchar(50) not null,
   phoneNumber          varchar(50),
   purePhoneNumber      varchar(50),
   countryCode          varchar(50),
   phoneTime            datetime,
   appid                varchar(50),
   addtime              datetime,
   cardid               varchar(50),
   oper                 varchar(2),
   realname             varchar(50),
   nickname             varchar(50),
   continuescan         tinyint(1) not null default 0,
   primary key (id)
);

/*==============================================================*/
/* Index: IX_shopid_openid                                      */
/*==============================================================*/
create unique index IX_shopid_openid on scan_code_mall.t_wxa_user
(
   shopid,
   openid
);

/*==============================================================*/
/* Table: t_wxa_user_log                                        */
/*==============================================================*/
create table scan_code_mall.t_wxa_user_log
(
   id                   bigint not null,
   shopid               varchar(50) not null,
   openid               varchar(50) not null,
   cardid               varchar(50),
   oper                 varchar(2),
   operdate             datetime,
   primary key (id)
);

/*==============================================================*/
/* Table: tb_sms                                                */
/*==============================================================*/
create table scan_code_mall.tb_sms
(
   id                   bigint not null,
   shopid               varchar(50),
   openid               varchar(100),
   phone                varchar(50),
   type                 varchar(50),
   code                 varchar(2000),
   detail_memo          char(10),
   sendtimer            datetime,
   primary key (id)
);
/*==============================================================*/
/* Table: wx_authorizer_access_token                            */
/*==============================================================*/
create table scan_code_mall.wx_authorizer_access_token
(
   id                   bigint not null,
   authorizer_appid     varchar(150),
   authorizer_access_token varchar(512),
   expires_in           int default 0,
   authorizer_refresh_token varchar(512),
   expires_time         datetime,
   call_num             int default 0,
   primary key (id)
);

/*==============================================================*/
/* Table: wx_component_access_token                             */
/*==============================================================*/
create table scan_code_mall.wx_component_access_token
(
   id                   bigint not null,
   component_appid      varchar(100),
   component_access_token varchar(250),
   expires_in           int,
   expires_time         datetime,
   call_num             int default 1,
   primary key (id)
);

/*==============================================================*/
/* Table: wx_jsapi_ticket                                       */
/*==============================================================*/
create table scan_code_mall.wx_jsapi_ticket
(
   id                   bigint not null,
   appid                varchar(150),
   ticket               varchar(512),
   expires_in           int default 0,
   expires_time         datetime,
   call_num             int default 1,
   primary key (id)
);

/*==============================================================*/
/* Table: wx_open_ticket                                        */
/*==============================================================*/
create table scan_code_mall.wx_open_ticket
(
   id                   bigint not null,
   Appid                varchar(50),
   CreateTime           datetime,
   InfoType             varchar(50) default 'getdate()',
   ComponentVerifyTicket varchar(250),
   ExpiresTime          datetime,
   primary key (id)
);