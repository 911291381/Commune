SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS DEPARTMENT;
CREATE TABLE DEPARTMENT
(
    ID                     VARCHAR(36)                      COMMENT 'PK',
    ROOMCODE               VARCHAR(50)                      COMMENT '房间代码',
    BUILDINGCODE           VARCHAR(50)                      COMMENT '楼栋代码',
    STATE                  VARCHAR(1) DEFAULT '0'           COMMENT '状态：0正常1删除',
    COMPANY_INFO_ID        VARCHAR(50)                      COMMENT '机构代码',
    COMPANY_NAME           VARCHAR(256)                     COMMENT '单位注册名称',
    BUSINESS_LICENSE_NO    VARCHAR(50)                      COMMENT '工商执照号码',
    ADDRESS                VARCHAR(255)                     COMMENT '注册地址',
    BUSINESS_DATE          DATE                             COMMENT '营业(开设)日期',
    COMPANY_CHARACTER      VARCHAR(5)                       COMMENT '重点单位(部位)类型',
    IS_TRINITY             VARCHAR(1) DEFAULT '0'           COMMENT '是否“三合一”单位',
    HAS_MONITOR_CAMERA     VARCHAR(1) DEFAULT '0'           COMMENT '是否对外安装监控探头',
    CAMERA_AMOUNT          INT                              COMMENT '监控探头数量',
    HAS_ALARM              VARCHAR(1) DEFAULT '0'           COMMENT '是否安装报警系统',
    HAS_SECURITY           VARCHAR(1) DEFAULT '0'           COMMENT '是否配备人防力量',
    LAW_PERON              VARCHAR(128)                     COMMENT '法人代表',
    LAW_PERON_PHONE        VARCHAR(50)                      COMMENT '法人联系电话',
    CONTRACTOR             VARCHAR(128)                     COMMENT '实际承包人',
    CONTRACTOR_PHONE       VARCHAR(50)                      COMMENT '承包人联系电话',
    OWNERSHIP              VARCHAR(2)                       COMMENT '单位性质：08股份04私营05合资06独资07有限01全民11公有02集体12私有03个体',
    COMPANY_TYPE           VARCHAR(5)                       COMMENT '单位类型',
    HAS_LICENCE            VARCHAR(1) DEFAULT '0'           COMMENT '是否有证',
    LOCATION_TYPE          VARCHAR(5)                       COMMENT '场地性质',
    LOCATION_OWNER         VARCHAR(255)                     COMMENT '产权单位',
    MEMO                   VARCHAR(1024)                    COMMENT '备注',
    IS_FIRE                VARCHAR(1) DEFAULT '0'           COMMENT '是否消防重点单位',
    UNIT_PHONE             VARCHAR(50)                      COMMENT '单位电话号码',
    LAW_PERON_IDCARD       VARCHAR(50)                      COMMENT '法人代表身份证号',
    QXDM                   VARCHAR(50)                      COMMENT '',
    XZJDDM                 VARCHAR(50)                      COMMENT '',
    SQDM                   VARCHAR(50)                      COMMENT '',
    FJDM                   VARCHAR(50)                      COMMENT '',
    PCSDM                  VARCHAR(50)                      COMMENT '',
    KYQK                   VARCHAR(1)                       COMMENT '开业情况：0不在此处1开在此处',
    HAS_UYGUR              VARCHAR(1) DEFAULT '0'           COMMENT '是否涉疆',
    HAS_TIBET              VARCHAR(1) DEFAULT '0'           COMMENT '是否涉藏',
    HAS_JAPAN              VARCHAR(1) DEFAULT '0'           COMMENT '是否涉日',
    HAS_UYGUR_SET          VARCHAR(1) DEFAULT '0'           COMMENT '是否维族人员开办',
    HAS_OFTEN_UYGUR_PEOPLE VARCHAR(1) DEFAULT '0'           COMMENT '是否维族人员频繁出入',
    HAS_HIRE_MORE_UYGUR    VARCHAR(1) DEFAULT '0'           COMMENT '是否雇佣大量维族人员',
    SZQY                   VARCHAR(1) DEFAULT '0'           COMMENT '三资企业',
    TZHY                   VARCHAR(1) DEFAULT '0'           COMMENT '特种行业',
    SKDW                   VARCHAR(1) DEFAULT '0'           COMMENT '涉恐单位',
    SJMC                   VARCHAR(256)                     COMMENT '实际名称',
    SJDZ                   VARCHAR(255)                     COMMENT '实际地址',
    WGDM                   VARCHAR(50)                      COMMENT '',
    JGLX                   VARCHAR(2)                       COMMENT '机构类型：1单位2店铺',
    ZDWJGDM                VARCHAR(50)                      COMMENT '主单位机构代码',
    XZ                     VARCHAR(50)                      COMMENT '社',
    SSGJ                   VARCHAR(50)                      COMMENT '所属国家',
    DWRS                   VARCHAR(50)                      COMMENT '单位人数',
    ISSWDZ                 VARCHAR(5) DEFAULT '0'           COMMENT '是否市外地址：0不是1是',
    XYDM                   VARCHAR(25)                      COMMENT '信用代码',
    NBDW                   VARCHAR(25) DEFAULT '0'          COMMENT '是否内保：0不是1是',
    YSBKQXCS               VARCHAR(5) DEFAULT '0'           COMMENT '容易受暴恐侵袭场所：0不是1是',
    DXQZXHD                VARCHAR(5) DEFAULT '0'           COMMENT '大型群众性活动单位',
    JZDW                   VARCHAR(5) DEFAULT '0'           COMMENT '经侦单位',
    HYDW                   VARCHAR(5) DEFAULT '0'           COMMENT '行业单位',
    DWZT                   VARCHAR(5) DEFAULT '0'           COMMENT '单位状态：0开业1歇业2停业3取缔',
    WZ                     VARCHAR(500)                     COMMENT '位置(层，号)',
    PCSMC                  VARCHAR(50)                      COMMENT '',
    LAW_PERON_ZJZL         VARCHAR(5)                       COMMENT '法人证件种类',
    DWLB                   VARCHAR(5)                       COMMENT '单位类别',
    JYLX                   VARCHAR(255)                     COMMENT '机构类别',
    IS_ZHUCE               VARCHAR(1)                       COMMENT '是否注册：0未注册1已注册2已注销',
    PRIMARY KEY(ID)
)    
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci
COMMENT='单位信息';
                                                        
DROP TABLE IF EXISTS RESIDENTINFO;
CREATE TABLE RESIDENTINFO
(
    ID                      VARCHAR(36)                     COMMENT 'PK',
    IDNUMBER                VARCHAR(255)                    COMMENT '身份证号',
    NAME                    VARCHAR(255)                    COMMENT '名字',
    XB                      VARCHAR(10)                     COMMENT '性别',
    TYPE                    VARCHAR(10)                     COMMENT '类型：1常口2暂口3境外人员4无证人员',
    HKSX                    VARCHAR(100)                    COMMENT '户口省县',
    HKXZ                    VARCHAR(255)                    COMMENT '户口详址',
    CSRQ                    VARCHAR(25)                     COMMENT '出生日期',
    MZ                      VARCHAR(10)                     COMMENT '民族',
    HYZK                    VARCHAR(25)                     COMMENT '婚姻状况',
    WHCD                    VARCHAR(25)                     COMMENT '文化程度',
    ZZDZ                    VARCHAR(255)                    COMMENT '暂住地址',
    GZCS                    VARCHAR(255)                    COMMENT '工作场所',
    FZXM                    VARCHAR(255)                    COMMENT '房主姓名',
    FZSFZH                  VARCHAR(255)                    COMMENT '房主身份证号',
    FZLXDH                  VARCHAR(255)                    COMMENT '房主联系电话',
    DHHM                    VARCHAR(255)                    COMMENT '电话号码',
    DJRQ                    VARCHAR(25)                     COMMENT '登记日期',
    DQRQ                    VARCHAR(25)                     COMMENT '到期日期',
    HISTORY                 VARCHAR(1) DEFAULT '0'          COMMENT '历史人员：0否1是',
    ROOMCODE                VARCHAR(100)                    COMMENT '',
    BUILDINGCODE            VARCHAR(100)                    COMMENT '',
    QXDM                    VARCHAR(25)                     COMMENT '',
    PCSDM                   VARCHAR(25)                     COMMENT '',
    XZJDDM                  VARCHAR(25)                     COMMENT '',
    SQDM                    VARCHAR(25)                     COMMENT '',
    BM                      VARCHAR(255)                    COMMENT '别名',
    JKZK                    VARCHAR(255)                    COMMENT '健康状况',
    ZJXY                    VARCHAR(50)                     COMMENT '宗教信仰',
    ZC                      VARCHAR(255)                    COMMENT '政治面貌：0群众1中共党员2其他党派民主人士',
    LXX                     VARCHAR(50)                     COMMENT '脸型',
    SG                      VARCHAR(50)                     COMMENT '身高',
    XH                      VARCHAR(50)                     COMMENT '鞋号',
    TX                      VARCHAR(50)                     COMMENT '体型',
    FJDM                    VARCHAR(25)                     COMMENT '',
    SFHZ                    VARCHAR(1) DEFAULT '0'          COMMENT '是否户主：0否1是',
    ZDRY                    VARCHAR(50)                     COMMENT '重点人员类型',
    SJLY                    VARCHAR(50)                     COMMENT '数据来源',
    CZRKTYPE                VARCHAR(1)                      COMMENT '房主关系：1人户一致2人在户不在3户在人不在',
    WGDM                    VARCHAR(50)                     COMMENT '',
    ZZRKTYPE                VARCHAR(50)                     COMMENT '暂住人员状态：1人证一致2人在证不在3证在人不在',
    UNITENAME               VARCHAR(255)                    COMMENT '单元名',
    ROOMNAME                VARCHAR(255)                    COMMENT '房间名',
    LX                      VARCHAR(50)                     COMMENT '经度',
    LY                      VARCHAR(50)                     COMMENT '维度',
    LYLX                    VARCHAR(100)                    COMMENT '',
    AGE                     VARCHAR(50)                     COMMENT '年龄',
    GJ                      VARCHAR(50)                     COMMENT '国籍，参考COUNTRY表',
    GJMC                    VARCHAR(50)                     COMMENT '国籍名称',
    ZJYXQ                   VARCHAR(250)                    COMMENT '证件有效期',
    ISZDGJ                  VARCHAR(50)                     COMMENT '是否重点国家：1是',
    JWRY_LXRSFZ             VARCHAR(20)                     COMMENT '境外人员联系人身份证',
    JWRY_LXRXM              VARCHAR(20)                     COMMENT '境外人员联系人姓名',
    JWRY_LXRSJ              VARCHAR(50)                     COMMENT '境外人员联系人手机',
    YHZGX                   VARCHAR(50)                     COMMENT '与户主关系',
    ZJZL                    VARCHAR(4)                      COMMENT '证件种类',
    WWX                     VARCHAR(50)                     COMMENT '外文姓',
    WWM                     VARCHAR(50)                     COMMENT '外文名',
    JWRYSF                  VARCHAR(50)                     COMMENT '境外人员身份',
    QZZL                    VARCHAR(4)                      COMMENT '签证种类',
    QZJG                    VARCHAR(4)                      COMMENT '签证机构',
    QZYXQ                   VARCHAR(50)                     COMMENT '签证有效截止日期',
    XYZNGS                  VARCHAR(255)                    COMMENT '现有子女个数',
    JDXX                    VARCHAR(255)                    COMMENT '就读学校',
    SFNY                    VARCHAR(1)                      COMMENT '是否捺印：0否1是',
    KY                      VARCHAR(50)                     COMMENT '口音',
    PRIMARY KEY(ID)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci
COMMENT='户口信息' ;

DROP TABLE IF EXISTS VEHICLE;
CREATE TABLE VEHICLE (
    ID                      VARCHAR(36)                     COMMENT 'PK',
    XH                      VARCHAR(100)                    COMMENT '机动车序号',
    HPZL                    VARCHAR(100)                    COMMENT '号牌种类',
    HPHM                    VARCHAR(100)                    COMMENT '号牌号码',
    CLPP1                   VARCHAR(100)                    COMMENT '中文品牌',
    CLXH                    VARCHAR(100)                    COMMENT '车辆型号',
    CLPP2                   VARCHAR(100)                    COMMENT '英文品牌',
    GCJK                    VARCHAR(1)                      COMMENT '国产/进口:0国产1进口',
    ZZG                     VARCHAR(100)                    COMMENT '制造国',
    ZZCMC                   VARCHAR(100)                    COMMENT '制造厂名称',
    CLSBDH                  VARCHAR(100)                    COMMENT '车辆识别代号',
    FDJH                    VARCHAR(100)                    COMMENT '发动机号',
    CLLX                    VARCHAR(100)                    COMMENT '车辆类型',
    CSYS                    VARCHAR(100)                    COMMENT '车身颜色',
    SYXZ                    VARCHAR(100)                    COMMENT '使用性质',
    SFZMHM                  VARCHAR(100)                    COMMENT '身份证明号码',
    SFZMMC                  VARCHAR(100)                    COMMENT '身份证明名称',
    SYR                     VARCHAR(100)                    COMMENT '机动车所有人',
    SYQ                     VARCHAR(100)                    COMMENT '所有权',
    CCDJRQ                  DATE                            COMMENT '初次登记日期',
    DJRQ                    DATE                            COMMENT '最近定检日期',
    YXQZ                    DATE                            COMMENT '检验有效期止',
    QZBFQZ                  DATE                            COMMENT '强制报废期止',
    FZJG                    VARCHAR(100)                    COMMENT '发证机关',
    GLBM                    VARCHAR(100)                    COMMENT '管理',
    FPRQ                    DATE                            COMMENT '发牌日期',
    FZRQ                    DATE                            COMMENT '发行驶证日期',
    FDJRQ                   DATE                            COMMENT '发登记证书日期',
    FHGZRQ                  DATE                            COMMENT '发合格证日期',
    BXZZRQ                  DATE                            COMMENT '保险终止日期',
    BPCS                    INT                             COMMENT '补领号牌次数',
    BZCS                    INT                             COMMENT '补领行驶证次数',
    BDJCS                   INT                             COMMENT '补/换领证书次数',
    DJZSBH                  VARCHAR(100)                    COMMENT '登记证书编号',
    ZDJZSHS                 INT                             COMMENT '制登记证书行数',
    DABH                    VARCHAR(100)                    COMMENT '档案编号',
    XZQH                    VARCHAR(100)                    COMMENT '管理辖区',
    ZT                      VARCHAR(100)                    COMMENT '机动车状态',
    DJBJ                    VARCHAR(1)                      COMMENT '抵押标记 0-未抵押，1-已抵押',
    JBR                     VARCHAR(100)                    COMMENT '经办人',
    CLLY                    VARCHAR(1)                      COMMENT '车辆来源 1注册2转入3过户',
    CCRQ                    DATE                            COMMENT '出厂日期',
    HDFS                    VARCHAR(100)                    COMMENT '获得方式',
    GXRQ                    DATE                            COMMENT '更新日期',
    BZ                      VARCHAR(100)                    COMMENT '备注',
    ZSXZQH                  VARCHAR(100)                    COMMENT '住所行政区划',
    ZSXXDZ                  VARCHAR(100)                    COMMENT '住所详细地址',
    YZBM1                   VARCHAR(100)                    COMMENT '住所邮政编码',
    LXDH                    VARCHAR(100)                    COMMENT '联系电话',
    ZZZ                     VARCHAR(100)                    COMMENT '暂住居住证明',
    ZZXZQH                  VARCHAR(100)                    COMMENT '暂住行政区划',
    ZZXXDZ                  VARCHAR(100)                    COMMENT '暂住详细地址',
    YZBM2                   VARCHAR(100)                    COMMENT '暂住邮政编码',
    ZDYZT                   VARCHAR(100)                    COMMENT '自定义状态',
    YXH                     VARCHAR(100)                    COMMENT '原机动车序号',
    DPHGZBH                 VARCHAR(100)                    COMMENT '底盘合格证编号',
    SQDM                    VARCHAR(100)                    COMMENT '社区代码',
    CLYT                    VARCHAR(100)                    COMMENT '车辆用途',
    YTSX                    VARCHAR(100)                    COMMENT '用途属性',
    DZYX                    VARCHAR(100)                    COMMENT '电子邮箱',
    XSZBH                   VARCHAR(100)                    COMMENT '行驶证证芯编号',
    SJHM                    VARCHAR(100)                    COMMENT '手机号码',
    JYHGBZBH                VARCHAR(100)                    COMMENT '检验合格标志',
    DWBH                    VARCHAR(100)                    COMMENT '单位编号',
    PRIMARY KEY(ID)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci
COMMENT='车辆信息' ;

-- ----------------------------
-- Table structure for lkbk
-- ----------------------------
DROP TABLE IF EXISTS `lkbk`;
CREATE TABLE `lkbk` (
  `ID_LKBK` varchar(36) NOT NULL DEFAULT '' COMMENT 'PK',
  `GMSFHM` varchar(18) DEFAULT NULL COMMENT '公民身份号码',
  `CLHP` varchar(256) DEFAULT NULL COMMENT '车辆号牌',
  `BKZT` varchar(1) DEFAULT '0' COMMENT '布控状态：0布控中1已撤控',
  `ZP` longblob COMMENT '照片',
  `BKSJQ` date DEFAULT NULL COMMENT '布控时间起',
  `BKSJZ` date DEFAULT NULL COMMENT '布控时间止',
  `TYPE_LKBK` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`ID_LKBK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='临控布控';

-- ----------------------------
-- Table structure for residentinfo
-- ----------------------------
DROP TABLE IF EXISTS `residentinfo`;
CREATE TABLE `residentinfo` (
  `ID` varchar(36) NOT NULL DEFAULT '' COMMENT 'PK',
  `IDNUMBER` varchar(255) DEFAULT NULL COMMENT '身份证号',
  `NAME` varchar(255) DEFAULT NULL COMMENT '名字',
  `XB` varchar(10) DEFAULT NULL COMMENT '性别',
  `TYPE` varchar(10) DEFAULT NULL COMMENT '类型：1常口2暂口3境外人员4无证人员',
  `HKSX` varchar(100) DEFAULT NULL COMMENT '户口省县',
  `HKXZ` varchar(255) DEFAULT NULL COMMENT '户口详址',
  `CSRQ` varchar(25) DEFAULT NULL COMMENT '出生日期',
  `MZ` varchar(10) DEFAULT NULL COMMENT '民族',
  `HYZK` varchar(25) DEFAULT NULL COMMENT '婚姻状况',
  `WHCD` varchar(25) DEFAULT NULL COMMENT '文化程度',
  `ZZDZ` varchar(255) DEFAULT NULL COMMENT '暂住地址',
  `GZCS` varchar(255) DEFAULT NULL COMMENT '工作场所',
  `FZXM` varchar(255) DEFAULT NULL COMMENT '房主姓名',
  `FZSFZH` varchar(255) DEFAULT NULL COMMENT '房主身份证号',
  `FZLXDH` varchar(255) DEFAULT NULL COMMENT '房主联系电话',
  `DHHM` varchar(255) DEFAULT NULL COMMENT '电话号码',
  `DJRQ` varchar(25) DEFAULT NULL COMMENT '登记日期',
  `DQRQ` varchar(25) DEFAULT NULL COMMENT '到期日期',
  `HISTORY` varchar(1) DEFAULT '0' COMMENT '历史人员：0否1是',
  `ROOMCODE` varchar(100) DEFAULT NULL,
  `BUILDINGCODE` varchar(100) DEFAULT NULL,
  `QXDM` varchar(25) DEFAULT NULL,
  `PCSDM` varchar(25) DEFAULT NULL,
  `XZJDDM` varchar(25) DEFAULT NULL,
  `SQDM` varchar(25) DEFAULT NULL,
  `BM` varchar(255) DEFAULT NULL COMMENT '别名',
  `JKZK` varchar(255) DEFAULT NULL COMMENT '健康状况',
  `ZJXY` varchar(50) DEFAULT NULL COMMENT '宗教信仰',
  `ZC` varchar(255) DEFAULT NULL COMMENT '政治面貌：0群众1中共党员2其他党派民主人士',
  `LXX` varchar(50) DEFAULT NULL COMMENT '脸型',
  `SG` varchar(50) DEFAULT NULL COMMENT '身高',
  `XH` varchar(50) DEFAULT NULL COMMENT '鞋号',
  `TX` varchar(50) DEFAULT NULL COMMENT '体型',
  `FJDM` varchar(25) DEFAULT NULL,
  `SFHZ` varchar(1) DEFAULT '0' COMMENT '是否户主：0否1是',
  `ZDRY` varchar(50) DEFAULT NULL COMMENT '重点人员类型',
  `SJLY` varchar(50) DEFAULT NULL COMMENT '数据来源',
  `CZRKTYPE` varchar(1) DEFAULT NULL COMMENT '房主关系：1人户一致2人在户不在3户在人不在',
  `WGDM` varchar(50) DEFAULT NULL,
  `ZZRKTYPE` varchar(50) DEFAULT NULL COMMENT '暂住人员状态：1人证一致2人在证不在3证在人不在',
  `UNITENAME` varchar(255) DEFAULT NULL COMMENT '单元名',
  `ROOMNAME` varchar(255) DEFAULT NULL COMMENT '房间名',
  `LX` varchar(50) DEFAULT NULL COMMENT '经度',
  `LY` varchar(50) DEFAULT NULL COMMENT '维度',
  `LYLX` varchar(100) DEFAULT NULL,
  `AGE` varchar(50) DEFAULT NULL COMMENT '年龄',
  `GJ` varchar(50) DEFAULT NULL COMMENT '国籍，参考COUNTRY表',
  `GJMC` varchar(50) DEFAULT NULL COMMENT '国籍名称',
  `ZJYXQ` varchar(250) DEFAULT NULL COMMENT '证件有效期',
  `ISZDGJ` varchar(50) DEFAULT NULL COMMENT '是否重点国家：1是',
  `JWRY_LXRSFZ` varchar(20) DEFAULT NULL COMMENT '境外人员联系人身份证',
  `JWRY_LXRXM` varchar(20) DEFAULT NULL COMMENT '境外人员联系人姓名',
  `JWRY_LXRSJ` varchar(50) DEFAULT NULL COMMENT '境外人员联系人手机',
  `YHZGX` varchar(50) DEFAULT NULL COMMENT '与户主关系',
  `ZJZL` varchar(4) DEFAULT NULL COMMENT '证件种类',
  `WWX` varchar(50) DEFAULT NULL COMMENT '外文姓',
  `WWM` varchar(50) DEFAULT NULL COMMENT '外文名',
  `JWRYSF` varchar(50) DEFAULT NULL COMMENT '境外人员身份',
  `QZZL` varchar(4) DEFAULT NULL COMMENT '签证种类',
  `QZJG` varchar(4) DEFAULT NULL COMMENT '签证机构',
  `QZYXQ` varchar(50) DEFAULT NULL COMMENT '签证有效截止日期',
  `XYZNGS` varchar(255) DEFAULT NULL COMMENT '现有子女个数',
  `JDXX` varchar(255) DEFAULT NULL COMMENT '就读学校',
  `SFNY` varchar(1) DEFAULT NULL COMMENT '是否捺印：0否1是',
  `KY` varchar(50) DEFAULT NULL COMMENT '口音',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='车辆信息';

-- ----------------------------
-- Table structure for vehicle
-- ----------------------------
DROP TABLE IF EXISTS `vehicle`;
CREATE TABLE `vehicle` (
  `ID` varchar(36) NOT NULL DEFAULT '' COMMENT 'PK',
  `XH` varchar(100) DEFAULT NULL COMMENT '机动车序号',
  `HPZL` varchar(100) DEFAULT NULL COMMENT '号牌种类',
  `HPHM` varchar(100) DEFAULT NULL COMMENT '号牌号码',
  `CLPP1` varchar(100) DEFAULT NULL COMMENT '中文品牌',
  `CLXH` varchar(100) DEFAULT NULL COMMENT '车辆型号',
  `CLPP2` varchar(100) DEFAULT NULL COMMENT '英文品牌',
  `GCJK` varchar(1) DEFAULT NULL COMMENT '国产/进口:0国产1进口',
  `ZZG` varchar(100) DEFAULT NULL COMMENT '制造国',
  `ZZCMC` varchar(100) DEFAULT NULL COMMENT '制造厂名称',
  `CLSBDH` varchar(100) DEFAULT NULL COMMENT '车辆识别代号',
  `FDJH` varchar(100) DEFAULT NULL COMMENT '发动机号',
  `CLLX` varchar(100) DEFAULT NULL COMMENT '车辆类型',
  `CSYS` varchar(100) DEFAULT NULL COMMENT '车身颜色',
  `SYXZ` varchar(100) DEFAULT NULL COMMENT '使用性质',
  `SFZMHM` varchar(100) DEFAULT NULL COMMENT '身份证明号码',
  `SFZMMC` varchar(100) DEFAULT NULL COMMENT '身份证明名称',
  `SYR` varchar(100) DEFAULT NULL COMMENT '机动车所有人',
  `SYQ` varchar(100) DEFAULT NULL COMMENT '所有权',
  `CCDJRQ` date DEFAULT NULL COMMENT '初次登记日期',
  `DJRQ` date DEFAULT NULL COMMENT '最近定检日期',
  `YXQZ` date DEFAULT NULL COMMENT '检验有效期止',
  `QZBFQZ` date DEFAULT NULL COMMENT '强制报废期止',
  `FZJG` varchar(100) DEFAULT NULL COMMENT '发证机关',
  `GLBM` varchar(100) DEFAULT NULL COMMENT '管理',
  `FPRQ` date DEFAULT NULL COMMENT '发牌日期',
  `FZRQ` date DEFAULT NULL COMMENT '发行驶证日期',
  `FDJRQ` date DEFAULT NULL COMMENT '发登记证书日期',
  `FHGZRQ` date DEFAULT NULL COMMENT '发合格证日期',
  `BXZZRQ` date DEFAULT NULL COMMENT '保险终止日期',
  `BPCS` int(11) DEFAULT NULL COMMENT '补领号牌次数',
  `BZCS` int(11) DEFAULT NULL COMMENT '补领行驶证次数',
  `BDJCS` int(11) DEFAULT NULL COMMENT '补/换领证书次数',
  `DJZSBH` varchar(100) DEFAULT NULL COMMENT '登记证书编号',
  `ZDJZSHS` int(11) DEFAULT NULL COMMENT '制登记证书行数',
  `DABH` varchar(100) DEFAULT NULL COMMENT '档案编号',
  `XZQH` varchar(100) DEFAULT NULL COMMENT '管理辖区',
  `ZT` varchar(100) DEFAULT NULL COMMENT '机动车状态',
  `DJBJ` varchar(1) DEFAULT NULL COMMENT '抵押标记 0-未抵押，1-已抵押',
  `JBR` varchar(100) DEFAULT NULL COMMENT '经办人',
  `CLLY` varchar(1) DEFAULT NULL COMMENT '车辆来源 1注册2转入3过户',
  `CCRQ` date DEFAULT NULL COMMENT '出厂日期',
  `HDFS` varchar(100) DEFAULT NULL COMMENT '获得方式',
  `GXRQ` date DEFAULT NULL COMMENT '更新日期',
  `BZ` varchar(100) DEFAULT NULL COMMENT '备注',
  `ZSXZQH` varchar(100) DEFAULT NULL COMMENT '住所行政区划',
  `ZSXXDZ` varchar(100) DEFAULT NULL COMMENT '住所详细地址',
  `YZBM1` varchar(100) DEFAULT NULL COMMENT '住所邮政编码',
  `LXDH` varchar(100) DEFAULT NULL COMMENT '联系电话',
  `ZZZ` varchar(100) DEFAULT NULL COMMENT '暂住居住证明',
  `ZZXZQH` varchar(100) DEFAULT NULL COMMENT '暂住行政区划',
  `ZZXXDZ` varchar(100) DEFAULT NULL COMMENT '暂住详细地址',
  `YZBM2` varchar(100) DEFAULT NULL COMMENT '暂住邮政编码',
  `ZDYZT` varchar(100) DEFAULT NULL COMMENT '自定义状态',
  `YXH` varchar(100) DEFAULT NULL COMMENT '原机动车序号',
  `DPHGZBH` varchar(100) DEFAULT NULL COMMENT '底盘合格证编号',
  `SQDM` varchar(100) DEFAULT NULL COMMENT '社区代码',
  `CLYT` varchar(100) DEFAULT NULL COMMENT '车辆用途',
  `YTSX` varchar(100) DEFAULT NULL COMMENT '用途属性',
  `DZYX` varchar(100) DEFAULT NULL COMMENT '电子邮箱',
  `XSZBH` varchar(100) DEFAULT NULL COMMENT '行驶证证芯编号',
  `SJHM` varchar(100) DEFAULT NULL COMMENT '手机号码',
  `JYHGBZBH` varchar(100) DEFAULT NULL COMMENT '检验合格标志',
  `DWBH` varchar(100) DEFAULT NULL COMMENT '单位编号',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='车辆信息';



DROP TABLE IF EXISTS `bjbw`; 
CREATE TABLE `bjbw` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '默认主键，自增序号',
  `alarmid` varchar(100) DEFAULT NULL COMMENT '智能分析报警ID',
  `devicetype` varchar(100) DEFAULT NULL COMMENT '设备类型',
  `devicename` varchar(100) DEFAULT NULL COMMENT '设备名称',
  `cameraid` varchar(100) DEFAULT NULL COMMENT '摄像头ID',
  `channelname` varchar(100) DEFAULT NULL COMMENT '通道名称',
  `coding` varchar(100) DEFAULT NULL COMMENT '编码',
  `message` varchar(100) DEFAULT NULL COMMENT '报警信息',
  `alarmtype` varchar(100) DEFAULT NULL COMMENT '报警类型',
  `eventtype` varchar(100) DEFAULT NULL COMMENT '发生类型',
  `level` varchar(100) DEFAULT NULL COMMENT '报警等级',
  `time` varchar(100) DEFAULT NULL COMMENT '报警时间',
  `picname` varchar(100) DEFAULT NULL COMMENT '报警图片名称',
  `state` char(10) DEFAULT '0' COMMENT '推送状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11064 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `bjtp` ;
CREATE TABLE `bjtp` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键，自增序号',
  `picname` varchar(100) DEFAULT NULL COMMENT '报警图片名称',
  `piccontext` longtext COMMENT '图片内容，base64位码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10977 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `cameradata` ;
CREATE TABLE `cameradata` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键，自增序号',
  `channelname` varchar(100) DEFAULT NULL COMMENT '设备通道名称',
  `cameraid` varchar(100) DEFAULT NULL COMMENT '设备ID(等同于channelid)',
  `ldh` varchar(100) DEFAULT NULL COMMENT '摄像头楼栋信息',
  `jingdu` varchar(100) DEFAULT NULL COMMENT '摄像头经度',
  `weidu` varchar(100) DEFAULT NULL COMMENT '摄像头纬度',
  `rstp` varchar(255) DEFAULT NULL COMMENT 'rstp地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `clbw` ;
CREATE TABLE `clbw` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键，自增序号',
  `deviceid` varchar(100) DEFAULT NULL COMMENT '设备ID',
  `devchnid` varchar(100) DEFAULT NULL COMMENT '通道号',
  `channelid` varchar(100) DEFAULT NULL COMMENT '通道ID',
  `devicename` varchar(100) DEFAULT NULL COMMENT '设备名称',
  `devicechnname` varchar(100) DEFAULT NULL COMMENT '通道名称',
  `carnum` varchar(100) DEFAULT NULL COMMENT '车牌号码',
  `carpicname` varchar(100) DEFAULT NULL COMMENT '车辆图片名称',
  `img0path` varchar(255) DEFAULT NULL COMMENT '图片存储地址',
  `img1path` varchar(255) DEFAULT NULL,
  `img2path` varchar(255) DEFAULT NULL,
  `img3path` varchar(255) DEFAULT NULL,
  `img4path` varchar(255) DEFAULT NULL,
  `img5path` varchar(255) DEFAULT NULL,
  `lCaptureTime` varchar(100) DEFAULT NULL COMMENT '抓拍时间',
  `state` char(10) DEFAULT '0' COMMENT '推送状态(未推送为0，推送过的为1)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12915 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `cltp` ;
CREATE TABLE `cltp` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键，自增序号',
  `picname` varchar(100) DEFAULT NULL COMMENT '图片名称',
  `piccontext` longtext COMMENT '图片内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12922 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `loufangpos` ;
CREATE TABLE `loufangpos` (
  `ldNum` int(20) DEFAULT NULL COMMENT '楼房名称',
  `jingdu` varchar(255) DEFAULT NULL COMMENT '楼房经度',
  `weidu` varchar(255) DEFAULT NULL COMMENT '楼房纬度'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `rlsj` ;
CREATE TABLE `rlsj` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channelname` varchar(100) DEFAULT NULL,
  `picname` varchar(100) DEFAULT NULL,
  `xm` varchar(100) DEFAULT NULL,
  `xb` varchar(100) DEFAULT NULL,
  `sfzh` varchar(100) DEFAULT NULL,
  `csrq` varchar(100) DEFAULT NULL,
  `mz` varchar(100) DEFAULT NULL,
  `hjqh` varchar(100) DEFAULT NULL,
  `hjdz` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `rltp` ;
CREATE TABLE `rltp` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键，自增ID',
  `channelname` varchar(100) DEFAULT NULL COMMENT '摄像机名称',
  `picname` varchar(100) DEFAULT NULL COMMENT '图片名称',
  `piccontext` longtext COMMENT '图片内容',
  `pichd` int COMMENT '高清标记，0：原始高清图',
  `pictime` varchar(100) DEFAULT NULL COMMENT '图片拍摄时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15757 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sqdw 三区单位
-- ----------------------------
DROP TABLE IF EXISTS `sqdw`;
CREATE TABLE `sqdw` (
  `ID` varchar(255) NOT NULL,
  `ROOMCODE` varchar(255) DEFAULT NULL,
  `BUILDINGCODE` varchar(255) DEFAULT NULL,
  `STATE` varchar(255) DEFAULT NULL,
  `COMPANY_INFO_ID` varchar(255) DEFAULT NULL,
  `COMPANY_NAME` varchar(255) DEFAULT NULL,
  `BUSINESS_LICENSE_NO` varchar(255) DEFAULT NULL,
  `ADDRESS` varchar(255) DEFAULT NULL,
  `BUSINESS_DATE` varchar(255) DEFAULT NULL,
  `COMPANY_CHARACTER` varchar(255) DEFAULT NULL,
  `IS_TRINITY` varchar(255) DEFAULT NULL,
  `HAS_MONITOR_CAMERA` varchar(255) DEFAULT NULL,
  `CAMERA_AMOUNT` varchar(255) DEFAULT NULL,
  `HAS_ALARM` varchar(255) DEFAULT NULL,
  `HAS_SECURITY` varchar(255) DEFAULT NULL,
  `LAW_PERON` varchar(255) DEFAULT NULL,
  `LAW_PERON_PHONE` varchar(255) DEFAULT NULL,
  `CONTRACTOR` varchar(255) DEFAULT NULL,
  `CONTRACTOR_PHONE` varchar(255) DEFAULT NULL,
  `OWNERSHIP` varchar(255) DEFAULT NULL,
  `COMPANY_TYPE` varchar(255) DEFAULT NULL,
  `HAS_LICENCE` varchar(255) DEFAULT NULL,
  `LOCATION_TYPE` varchar(255) DEFAULT NULL,
  `LOCATION_OWNER` varchar(255) DEFAULT NULL,
  `MEMO` varchar(255) DEFAULT NULL,
  `IS_FIRE` varchar(255) DEFAULT NULL,
  `UNIT_PHONE` varchar(255) DEFAULT NULL,
  `LAW_PERON_IDCARD` varchar(255) DEFAULT NULL,
  `QXDM` varchar(255) DEFAULT NULL,
  `XZJDDM` varchar(255) DEFAULT NULL,
  `SQDM` varchar(255) DEFAULT NULL,
  `FJDM` varchar(255) DEFAULT NULL,
  `PCSDM` varchar(255) DEFAULT NULL,
  `JYLX` varchar(255) DEFAULT NULL,
  `IS_ZHUCE` varchar(255) DEFAULT NULL,
  `KYQK` varchar(255) DEFAULT NULL,
  `HAS_UYGUR` varchar(255) DEFAULT NULL,
  `HAS_TIBET` varchar(255) DEFAULT NULL,
  `HAS_JAPAN` varchar(255) DEFAULT NULL,
  `HAS_UYGUR_SET` varchar(255) DEFAULT NULL,
  `HAS_OFTEN_UYGUR_PEOPLE` varchar(255) DEFAULT NULL,
  `HAS_HIRE_MORE_UYGUR` varchar(255) DEFAULT NULL,
  `SZQY` varchar(255) DEFAULT NULL,
  `TZHY` varchar(255) DEFAULT NULL,
  `SKDW` varchar(255) DEFAULT NULL,
  `SJMC` varchar(255) DEFAULT NULL,
  `SJDZ` varchar(255) DEFAULT NULL,
  `WGDM` varchar(255) DEFAULT NULL,
  `JGLX` varchar(255) DEFAULT NULL,
  `ZDWJGDM` varchar(255) DEFAULT NULL,
  `XZ` varchar(255) DEFAULT NULL,
  `SSGJ` varchar(255) DEFAULT NULL,
  `DWRS` varchar(255) DEFAULT NULL,
  `ISSWDZ` varchar(255) DEFAULT NULL,
  `XYDM` varchar(255) DEFAULT NULL,
  `NBDW` varchar(255) DEFAULT NULL,
  `YSBKQXCS` varchar(255) DEFAULT NULL,
  `DXQZXHD` varchar(255) DEFAULT NULL,
  `JZDW` varchar(255) DEFAULT NULL,
  `HYDW` varchar(255) DEFAULT NULL,
  `DWZT` varchar(255) DEFAULT NULL,
  `ADDIP` varchar(255) DEFAULT NULL,
  `UPDATEIP` varchar(255) DEFAULT NULL,
  `DELETEIP` varchar(255) DEFAULT NULL,
  `WZ` varchar(255) DEFAULT NULL,
  `PCSMC` varchar(255) DEFAULT NULL,
  `LAW_PERON_ZJZL` varchar(255) DEFAULT NULL,
  `DWLB` varchar(255) DEFAULT NULL,
  `ADDTIME` varchar(255) DEFAULT NULL,
  `UPDATETIME` varchar(255) DEFAULT NULL,
  `DELETETIME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sqfw 三区房屋
-- ----------------------------
DROP TABLE IF EXISTS `sqfw`;
CREATE TABLE `sqfw` (
  `ID` varchar(255) NOT NULL,
  `ROOMNAME` varchar(255) DEFAULT NULL,
  `USAGE` varchar(255) DEFAULT NULL,
  `LOCATION` varchar(255) DEFAULT NULL,
  `FLOOR` varchar(255) DEFAULT NULL,
  `UNITE` varchar(255) DEFAULT NULL,
  `FLOORSHOWNAME` varchar(255) DEFAULT NULL,
  `UNITESHOWNAME` varchar(255) DEFAULT NULL,
  `BUILDINGCODE` varchar(255) DEFAULT NULL,
  `ROOMCODE` varchar(255) DEFAULT NULL,
  `QXDM` varchar(255) DEFAULT NULL,
  `PCSDM` varchar(255) DEFAULT NULL,
  `XZJDDM` varchar(255) DEFAULT NULL,
  `SQDM` varchar(255) DEFAULT NULL,
  `FJDM` varchar(255) DEFAULT NULL,
  `WGDM` varchar(255) DEFAULT NULL,
  `STATE` varchar(255) DEFAULT NULL,
  `ADDTIME` varchar(255) DEFAULT NULL,
  `UPDATETIME` varchar(255) DEFAULT NULL,
  `DELETETIME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sqld 三区楼栋
-- ----------------------------
DROP TABLE IF EXISTS `sqld`;
CREATE TABLE `sqld` (
  `ID` varchar(255) NOT NULL,
  `QXDM` varchar(255) DEFAULT NULL,
  `PCSDM` varchar(255) DEFAULT NULL,
  `XZJDDM` varchar(255) DEFAULT NULL,
  `SQDM` varchar(255) DEFAULT NULL,
  `COUNTRY` varchar(255) DEFAULT NULL,
  `PRONVINCE` varchar(255) DEFAULT NULL,
  `CITY` varchar(255) DEFAULT NULL,
  `QX` varchar(255) DEFAULT NULL,
  `XZJD` varchar(255) DEFAULT NULL,
  `CJWH` varchar(255) DEFAULT NULL,
  `CZ` varchar(255) DEFAULT NULL,
  `JLX` varchar(255) DEFAULT NULL,
  `JLXBC1` varchar(255) DEFAULT NULL,
  `MPH` varchar(255) DEFAULT NULL,
  `XQBZW` varchar(255) DEFAULT NULL,
  `XQBZWBC1` varchar(255) DEFAULT NULL,
  `LZ` varchar(255) DEFAULT NULL,
  `STANDARDADDRESS` varchar(255) DEFAULT NULL,
  `LX` varchar(255) DEFAULT NULL,
  `LY` varchar(255) DEFAULT NULL,
  `LYLX` varchar(255) DEFAULT NULL,
  `BUILDINGCODE` varchar(255) DEFAULT NULL,
  `STATE` varchar(255) DEFAULT NULL,
  `STATE_MARK` varchar(255) DEFAULT NULL,
  `ISHISTORY` varchar(255) DEFAULT NULL,
  `SPCADDR` varchar(255) DEFAULT NULL,
  `ISBZDZ` varchar(255) DEFAULT NULL,
  `PCSMC` varchar(255) DEFAULT NULL,
  `FJDM` varchar(255) DEFAULT NULL,
  `FJMC` varchar(255) DEFAULT NULL,
  `WGDM` varchar(255) DEFAULT NULL,
  `FWYT` varchar(255) DEFAULT NULL,
  `FWLB` varchar(255) DEFAULT NULL,
  `JLXDM` varchar(255) DEFAULT NULL,
  `ADDTIME` varchar(255) DEFAULT NULL,
  `UPDATETIME` varchar(255) DEFAULT NULL,
  `DELETETIME` varchar(255) DEFAULT NULL,
  `CS` varchar(255) DEFAULT NULL COMMENT '层数',
  `HS` varchar(255) DEFAULT NULL COMMENT '户数',
  PRIMARY KEY (`ID`),
  KEY `sqld_BUILDINGCODE` (`BUILDINGCODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sqrk 三区人口
-- ----------------------------
DROP TABLE IF EXISTS `sqrk`;
CREATE TABLE `sqrk` (
  `ID` varchar(255) NOT NULL,
  `IDNUMBER` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `XB` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `HKSX` varchar(255) DEFAULT NULL,
  `HKXZ` varchar(255) DEFAULT NULL,
  `CSRQ` varchar(255) DEFAULT NULL,
  `MZ` varchar(255) DEFAULT NULL,
  `HYZK` varchar(255) DEFAULT NULL,
  `WHCD` varchar(255) DEFAULT NULL,
  `ZZDZ` varchar(255) DEFAULT NULL,
  `GZCS` varchar(255) DEFAULT NULL,
  `FZXM` varchar(255) DEFAULT NULL,
  `FZSFZH` varchar(255) DEFAULT NULL,
  `FZLXDH` varchar(255) DEFAULT NULL,
  `DHHM` varchar(255) DEFAULT NULL,
  `DJRQ` varchar(255) DEFAULT NULL,
  `DQRQ` varchar(255) DEFAULT NULL,
  `HISTORY` varchar(255) DEFAULT NULL,
  `ROOMCODE` varchar(255) DEFAULT NULL,
  `BUILDINGCODE` varchar(255) DEFAULT NULL,
  `QXDM` varchar(255) DEFAULT NULL,
  `PCSDM` varchar(255) DEFAULT NULL,
  `XZJDDM` varchar(255) DEFAULT NULL,
  `SQDM` varchar(255) DEFAULT NULL,
  `BM` varchar(255) DEFAULT NULL,
  `JKZK` varchar(255) DEFAULT NULL,
  `ZJXY` varchar(255) DEFAULT NULL,
  `ZC` varchar(255) DEFAULT NULL,
  `LXX` varchar(255) DEFAULT NULL,
  `SG` varchar(255) DEFAULT NULL,
  `XH` varchar(255) DEFAULT NULL,
  `KY` varchar(255) DEFAULT NULL,
  `SFNY` varchar(255) DEFAULT NULL,
  `TX` varchar(255) DEFAULT NULL,
  `FJDM` varchar(255) DEFAULT NULL,
  `SFHZ` varchar(255) DEFAULT NULL,
  `ZDRY` varchar(255) DEFAULT NULL,
  `SJLY` varchar(255) DEFAULT NULL,
  `CZRKTYPE` varchar(255) DEFAULT NULL,
  `WGDM` varchar(255) DEFAULT NULL,
  `ZZRKTYPE` varchar(255) DEFAULT NULL,
  `UNITENAME` varchar(255) DEFAULT NULL,
  `ROOMNAME` varchar(255) DEFAULT NULL,
  `LX` varchar(255) DEFAULT NULL,
  `LY` varchar(255) DEFAULT NULL,
  `LYLX` varchar(255) DEFAULT NULL,
  `AGE` varchar(255) DEFAULT NULL,
  `GJ` varchar(255) DEFAULT NULL,
  `GJMC` varchar(255) DEFAULT NULL,
  `ZJYXQ` varchar(255) DEFAULT NULL,
  `ISZDGJ` varchar(255) DEFAULT NULL,
  `JWRY_LXRSFZ` varchar(255) DEFAULT NULL,
  `JWRY_LXRXM` varchar(255) DEFAULT NULL,
  `JWRY_LXRSJ` varchar(255) DEFAULT NULL,
  `YHZGX` varchar(255) DEFAULT NULL,
  `ZJZL` varchar(255) DEFAULT NULL,
  `WWX` varchar(255) DEFAULT NULL,
  `WWM` varchar(255) DEFAULT NULL,
  `JWRYSF` varchar(255) DEFAULT NULL,
  `QZZL` varchar(255) DEFAULT NULL,
  `QZJG` varchar(255) DEFAULT NULL,
  `QZYXQ` varchar(255) DEFAULT NULL,
  `XYZNGS` varchar(255) DEFAULT NULL,
  `JDXX` varchar(255) DEFAULT NULL,
  `ADDTIME` varchar(255) DEFAULT NULL,
  `UPDATETIME` varchar(255) DEFAULT NULL,
  `DELETETIME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sqsh 三区商户
-- ----------------------------
DROP TABLE IF EXISTS `sqsh`;
CREATE TABLE `sqsh` (
  `ID` varchar(255) NOT NULL,
  `QXDM` varchar(255) DEFAULT NULL,
  `PCSDM` varchar(255) DEFAULT NULL,
  `XZJDDM` varchar(255) DEFAULT NULL,
  `SQDM` varchar(255) DEFAULT NULL,
  `COUNTRY` varchar(255) DEFAULT NULL,
  `PRONVINCE` varchar(255) DEFAULT NULL,
  `CITY` varchar(255) DEFAULT NULL,
  `QX` varchar(255) DEFAULT NULL,
  `XZJD` varchar(255) DEFAULT NULL,
  `CJWH` varchar(255) DEFAULT NULL,
  `CZ` varchar(255) DEFAULT NULL,
  `JLX` varchar(255) DEFAULT NULL,
  `JLXBC1` varchar(255) DEFAULT NULL,
  `MPH` varchar(255) DEFAULT NULL,
  `XQBZW` varchar(255) DEFAULT NULL,
  `XQBZWBC1` varchar(255) DEFAULT NULL,
  `LZ` varchar(255) DEFAULT NULL,
  `STANDARDADDRESS` varchar(255) DEFAULT NULL,
  `LX` varchar(255) DEFAULT NULL,
  `LY` varchar(255) DEFAULT NULL,
  `LYLX` varchar(255) DEFAULT NULL,
  `BUILDINGCODE` varchar(255) DEFAULT NULL,
  `STATE` varchar(255) DEFAULT NULL,
  `STATE_MARK` varchar(255) DEFAULT NULL,
  `ISHISTORY` varchar(255) DEFAULT NULL,
  `SPCADDR` varchar(255) DEFAULT NULL,
  `ISBZDZ` varchar(255) DEFAULT NULL,
  `PCSMC` varchar(255) DEFAULT NULL,
  `FJDM` varchar(255) DEFAULT NULL,
  `FJMC` varchar(255) DEFAULT NULL,
  `WGDM` varchar(255) DEFAULT NULL,
  `FWYT` varchar(255) DEFAULT NULL,
  `FWLB` varchar(255) DEFAULT NULL,
  `JLXDM` varchar(255) DEFAULT NULL,
  `ADDTIME` varchar(255) DEFAULT NULL,
  `UPDATETIME` varchar(255) DEFAULT NULL,
  `DELETETIME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for clxx 车辆信息
-- ----------------------------
DROP TABLE IF EXISTS `clxx`;
CREATE TABLE `clxx` (
  `id` varchar(255) DEFAULT NULL COMMENT '序号',
  `cwh` varchar(255) DEFAULT NULL COMMENT '车位号',
  `mph` varchar(255) DEFAULT NULL COMMENT '门牌号',
  `name` varchar(255) DEFAULT NULL COMMENT '姓名',
  `sfz` varchar(255) DEFAULT NULL COMMENT '身份证',
  `lxdh` varchar(255) DEFAULT NULL COMMENT '联系电话',
  `cph` varchar(255) DEFAULT NULL COMMENT '车牌号',
  `jfrq` varchar(255) DEFAULT NULL COMMENT '缴费日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS lkbk;
CREATE TABLE lkbk (
  `ID_LKBK` varchar(36) NOT NULL DEFAULT '' COMMENT 'PK',
  `GMSFHM` varchar(18) DEFAULT NULL COMMENT '公民身份号码',
  `CLHP` varchar(256) DEFAULT NULL COMMENT '车辆号牌',
  `BKZT` varchar(1) DEFAULT '0' COMMENT '布控状态：0布控中1已撤控',
  `ZP` longblob COMMENT '照片',
  `BKSJQ` date DEFAULT NULL COMMENT '布控时间起',
  `BKSJZ` date DEFAULT NULL COMMENT '布控时间止',
  `TYPE_LKBK` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`ID_LKBK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='临控布控';

DROP TABLE IF EXISTS PERSON_SURVEILLANCE;
CREATE TABLE PERSON_SURVEILLANCE
(
    ID              VARCHAR(36)     COMMENT 'PK',
    ID_NUM          VARCHAR(18)     COMMENT '公民身份号码',
    START_TIME      DATETIME        COMMENT '开始时间',
    END_TIME        DATETIME        COMMENT '结束时间',
    STATUS          INT             COMMENT '布控状态：1布控中0已撤控',
    PICTURE         LONGTEXT        COMMENT 'BASE64图片数据',
    FACE_ID         INT             COMMENT '人脸ID',
    PRIMARY KEY(ID)
)    
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci
COMMENT='人员监控';

DROP TABLE IF EXISTS VEHICLE_SURVEILLANCE;
CREATE TABLE VEHICLE_SURVEILLANCE
(
    ID              VARCHAR(36)     COMMENT 'PK',
    LICENSE         VARCHAR(10)     COMMENT '车牌号',
    START_TIME      DATETIME        COMMENT '开始时间',
    END_TIME        DATETIME        COMMENT '结束时间',
    STATUS          INT             COMMENT '布控状态：1布控中0已撤控',
    PICTURE         LONGTEXT        COMMENT 'BASE64图片数据',
    PRIMARY KEY(ID)
)    
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci
COMMENT='车辆监控';

-- ----------------------------
-- v_fw 视图
-- ----------------------------
CREATE VIEW `v_fw` AS 
SELECT
	`t`.`IDNUMBER` AS `SFZ`,
	`t`.`NAME` AS `NAME`,
	(
		YEAR (curdate()) -
		IF (
			(length(`t`.`IDNUMBER`) = 18),
			substr(`t`.`IDNUMBER`, 7, 4),

		IF (
			(length(`t`.`IDNUMBER`) = 15),
			concat(
				'19',
				substr(`t`.`IDNUMBER`, 7, 2)
			),
			NULL
		)
		)
	) AS `AGE`,
	`t`.`XB` AS `XB`,
	`t`.`DHHM` AS `DHHM`,
	`t`.`HKSX` AS `HKSX`,
	`t2`.`LZ` AS `LD`,
	`t1`.`FLOOR` AS `CS`,
	`t1`.`LOCATION` AS `HS`
FROM
	(
		(
			`sqrk` `t`
			LEFT JOIN `sqfw` `t1` ON (
				(
					`t`.`ROOMCODE` = `t1`.`ROOMCODE`
				)
			)
		)
		LEFT JOIN `sqld` `t2` ON (
			(
				`t2`.`BUILDINGCODE` = `t1`.`BUILDINGCODE`
			)
		)
	) ;

-- ----------------------------
-- Table structure for rytp 人员照片底库
-- ----------------------------
DROP TABLE IF EXISTS `rytp`;
CREATE TABLE `rytp` (
  `SFZ` varchar(100) NOT NULL,
  `PHOTO` blob,
  PRIMARY KEY (`SFZ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for unittoshow 需要展示的商户信息
-- ----------------------------
DROP TABLE IF EXISTS `unittoshow`;
CREATE TABLE `unittoshow` (
  `fullname` varchar(255) DEFAULT NULL COMMENT '单位全称',
  `abbreviation` varchar(255) DEFAULT NULL COMMENT '单位简称',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `jingdu` varchar(255) DEFAULT NULL COMMENT '经度',
  `weidu` varchar(255) DEFAULT NULL COMMENT '维度',
  `legalpersonname` varchar(255) DEFAULT NULL COMMENT '法人姓名',
  `telephonenum` varchar(255) DEFAULT NULL COMMENT '单位电话',
  `unittype` varchar(255) DEFAULT NULL COMMENT '单位类别',
  `photo` mediumblob COMMENT '照片',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for buildinglayerhouse 楼栋户数信息
-- ----------------------------
DROP TABLE IF EXISTS `buildinglayerhouse`;
CREATE TABLE `buildinglayerhouse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `LD` varchar(255) DEFAULT NULL,
  `CS` varchar(255) DEFAULT NULL,
  `HS` varchar(255) DEFAULT NULL,
  `MaxCS` varchar(255) DEFAULT NULL,
  `MaxHS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2911 DEFAULT CHARSET=utf8;

-- ----------------------------
-- 视图v_ld_ishousenull 关联楼栋信息表与人员信息表，左连接
-- ----------------------------
CREATE VIEW `v_ld_ishousenull` AS SELECT
	`a`.`LD` AS `LD`,
	`a`.`CS` AS `CS`,
	`a`.`HS` AS `HS`,
	`a`.`MaxCS` AS `MaxCS`,
	`a`.`MaxHS` AS `MaxHS`,
	`b`.`SFZ` AS `SFZ`,
	`b`.`NAME` AS `NAME`,
	`b`.`AGE` AS `AGE`,
	`b`.`XB` AS `XB`,
	`b`.`DHHM` AS `DHHM`,
	`b`.`HKSX` AS `HKSX`
FROM
	(
		`buildinglayerhouse` `a`
		LEFT JOIN `v_fw` `b` ON (
			(
				(`a`.`HS` = `b`.`HS`)
				AND (`a`.`CS` = `b`.`CS`)
				AND (`a`.`LD` = `b`.`LD`)
			)
		)
	);
	
-- ----------------------------
-- Table structure for cameraaddressall 实有安防设施：摄像机的全量表
-- ----------------------------
DROP TABLE IF EXISTS `cameraaddressall`;
CREATE TABLE `cameraaddressall` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SXJWZ` varchar(255) DEFAULT NULL COMMENT '摄像机位置',
  `SBLX` varchar(255) DEFAULT NULL COMMENT '设备类型',
  `IP` varchar(255) DEFAULT NULL,
  `TDH` varchar(255) DEFAULT NULL COMMENT '通道号',
  `JD` varchar(255) DEFAULT NULL COMMENT '经度',
  `WD` varchar(255) DEFAULT NULL COMMENT '纬度',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=184 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for unitaddress 商铺全量表
-- ----------------------------
DROP TABLE IF EXISTS `unitaddress`;
CREATE TABLE `unitaddress` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `JGMC` varchar(255) DEFAULT NULL COMMENT '机构名称',
  `SJMC` varchar(255) DEFAULT NULL COMMENT '实际名称',
  `SJDZ` varchar(255) DEFAULT NULL COMMENT '实际地址',
  `DJDZ` varchar(255) DEFAULT NULL COMMENT '登记地址',
  `FRDB` varchar(255) DEFAULT NULL COMMENT '法人代表',
  `JDLB` varchar(255) DEFAULT NULL COMMENT '机构类别',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for securitypeople 实有力量与装备
-- ----------------------------
DROP TABLE IF EXISTS `securitypeople`;
CREATE TABLE `securitypeople` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '姓名',
  `peopletype` varchar(255) DEFAULT NULL COMMENT '人员类别 ',
  `telephone` varchar(255) DEFAULT NULL COMMENT '联系电话',
  `state` varchar(255) DEFAULT '0' COMMENT '人员状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for employee 雇员表
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '雇员姓名',
  `sex` varchar(255) DEFAULT NULL COMMENT '雇员性别',
  `nationality` varchar(255) DEFAULT NULL COMMENT '雇员民族',
  `idNum` varchar(255) DEFAULT NULL COMMENT '雇员身份证',
  `telephone` varchar(255) DEFAULT NULL COMMENT '雇员电话',
  `workPlaceName` varchar(255) DEFAULT NULL COMMENT '雇员 工作单位名',
  `workAddress` varchar(255) DEFAULT NULL COMMENT '雇员工作地址 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;