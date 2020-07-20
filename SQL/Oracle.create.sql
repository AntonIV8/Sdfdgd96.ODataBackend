



CREATE TABLE "productCatalog"
(

	"primaryKey" RAW(16) NOT NULL,

	"spec_id" NUMBER(10) NOT NULL,

	"name" NVARCHAR2(255) NOT NULL,

	"description" NVARCHAR2(255) NULL,

	"version" NUMBER(10) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "dba"
(

	"primaryKey" RAW(16) NOT NULL,

	"dt_upgrade" DATE NOT NULL,

	"description" NVARCHAR2(255) NULL,

	"script" NVARCHAR2(255) NOT NULL,

	"prev_version" RAW(16) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "orderState"
(

	"primaryKey" RAW(16) NOT NULL,

	"description" NVARCHAR2(255) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "user_role"
(

	"primaryKey" RAW(16) NOT NULL,

	"role_id_m0" RAW(16) NOT NULL,

	"user_id_m0" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "dictionary"
(

	"primaryKey" RAW(16) NOT NULL,

	"name" NVARCHAR2(255) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "order_state"
(

	"primaryKey" RAW(16) NOT NULL,

	"description" NVARCHAR2(255) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "product_catalog"
(

	"primaryKey" RAW(16) NOT NULL,

	"spec_id" NUMBER(10) NULL,

	"name" NVARCHAR2(255) NULL,

	"description" NVARCHAR2(255) NULL,

	"version" NUMBER(10) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "resourceLog"
(

	"primaryKey" RAW(16) NOT NULL,

	"resource_id" NUMBER(10) NOT NULL,

	"parent_id" NUMBER(10) NULL,

	"cfs_id" NUMBER(10) NULL,

	"parent_service_id" NUMBER(10) NULL,

	"resource_shared_id" NUMBER(10) NULL,

	"contragent_id" NUMBER(10) NULL,

	"customer_id" NUMBER(10) NULL,

	"resource_spec_id" NUMBER(10) NULL,

	"name" NVARCHAR2(255) NULL,

	"description" NVARCHAR2(255) NULL,

	"external_id" NVARCHAR2(255) NULL,

	"start_time" DATE NOT NULL,

	"end_time" DATE NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "userResourceSpec"
(

	"primaryKey" RAW(16) NOT NULL,

	"action" NVARCHAR2(255) NOT NULL,

	"dt_action" DATE NOT NULL,

	"user_id" RAW(16) NOT NULL,

	"resource_spec_id" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "serviceSpec"
(

	"primaryKey" RAW(16) NOT NULL,

	"version" NUMBER(10) NOT NULL,

	"enum" NVARCHAR2(255) NOT NULL,

	"category" NVARCHAR2(255) NOT NULL,

	"name" NVARCHAR2(255) NOT NULL,

	"description" NVARCHAR2(255) NULL,

	"dt_created" DATE NOT NULL,

	"dt_modified" DATE NOT NULL,

	"catalog_key" RAW(16) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "serviceOrder"
(

	"primaryKey" RAW(16) NOT NULL,

	"description" NVARCHAR2(255) NULL,

	"dt_completed" DATE NULL,

	"dt_created" DATE NOT NULL,

	"dt_modified" DATE NOT NULL,

	"dt_started" DATE NULL,

	"external_id" RAW(16) NULL,

	"price" FLOAT(126) NOT NULL,

	"modifier_id" RAW(16) NULL,

	"creator_id" RAW(16) NULL,

	"contragent_id" RAW(16) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "dictionaryValue"
(

	"primaryKey" RAW(16) NOT NULL,

	"value" NVARCHAR2(255) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "usr"
(

	"primaryKey" RAW(16) NOT NULL,

	"login" NVARCHAR2(255) NOT NULL,

	"password" NVARCHAR2(255) NULL,

	"locked" NUMBER(1) NOT NULL,

	"email" NVARCHAR2(255) NOT NULL,

	"domain" NVARCHAR2(255) NULL,

	"last_name" NVARCHAR2(255) NOT NULL,

	"first_name" NVARCHAR2(255) NULL,

	"middle_name" NVARCHAR2(255) NULL,

	"phone" NVARCHAR2(255) NULL,

	"phone_work" NVARCHAR2(255) NULL,

	"phone_mobile" NVARCHAR2(255) NULL,

	"position" NVARCHAR2(255) NULL,

	"department" NVARCHAR2(255) NULL,

	"photo" NVARCHAR2(255) NULL,

	"thumbnail" NVARCHAR2(255) NULL,

	"dt_created" DATE NOT NULL,

	"dt_locked" DATE NULL,

	"dt_modified" DATE NULL,

	"dt_lastlogin" DATE NULL,

	"full_name" NVARCHAR2(255) NULL,

	"short_name" NVARCHAR2(255) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "serviceSpecAcl"
(

	"primaryKey" RAW(16) NOT NULL,

	"a_create" NUMBER(1) NOT NULL,

	"a_read" NUMBER(1) NOT NULL,

	"a_update" NUMBER(1) NOT NULL,

	"a_delete" NUMBER(1) NOT NULL,

	"service_spec_id" RAW(16) NOT NULL,

	"group_id" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "service_characteristic_log"
(

	"primaryKey" RAW(16) NOT NULL,

	"service_characteristic_id" NUMBER(10) NULL,

	"name" NVARCHAR2(255) NULL,

	"value" NVARCHAR2(255) NULL,

	"service_id" NUMBER(10) NULL,

	"start_time" DATE NULL,

	"end_time" DATE NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "resource"
(

	"primaryKey" RAW(16) NOT NULL,

	"name" NVARCHAR2(255) NOT NULL,

	"description" NVARCHAR2(255) NULL,

	"external_id" NVARCHAR2(255) NULL,

	"customer_id" RAW(16) NOT NULL,

	"contragent_id" RAW(16) NULL,

	"parent_id" RAW(16) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "resourceCharacteristicLog"
(

	"primaryKey" RAW(16) NOT NULL,

	"resource_characteristic_id" NUMBER(10) NOT NULL,

	"name" NVARCHAR2(255) NULL,

	"value" NVARCHAR2(255) NULL,

	"resource_id" NUMBER(10) NULL,

	"start_time" DATE NOT NULL,

	"end_time" DATE NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "resourceUsageSpec"
(

	"primaryKey" RAW(16) NOT NULL,

	"name" NVARCHAR2(255) NOT NULL,

	"value" NVARCHAR2(255) NULL,

	"map" NUMBER(1) NOT NULL,

	"unit" NVARCHAR2(255) NULL,

	"resource_spec_id" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "customer"
(

	"primaryKey" RAW(16) NOT NULL,

	"name" NVARCHAR2(255) NOT NULL,

	"descr" NVARCHAR2(255) NULL,

	"service_manager_id" NUMBER(10) NULL,

	"creator_id" NUMBER(10) NULL,

	"modifier_id" NUMBER(10) NULL,

	"dt_created" DATE NOT NULL,

	"dt_modified" DATE NOT NULL,

	"archive" NUMBER(1) NOT NULL,

	"dt_archive" DATE NULL,

	"archiver_id" NUMBER(10) NULL,

	"archive_reason_id" NUMBER(10) NULL,

	"internal" NUMBER(1) NOT NULL,

	"telco" NUMBER(1) NOT NULL,

	"office" NUMBER(1) NOT NULL,

	"barrier" NUMBER(1) NOT NULL,

	"pci_dss" NUMBER(1) NULL,

	"federal_low_152" NUMBER(1) NULL,

	"account_manager_id" NUMBER(10) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "resource_characteristic_log"
(

	"primaryKey" RAW(16) NOT NULL,

	"resource_characteristic_id" NUMBER(10) NULL,

	"name" NVARCHAR2(255) NULL,

	"value" NVARCHAR2(255) NULL,

	"resource_id" NUMBER(10) NULL,

	"start_time" DATE NULL,

	"end_time" DATE NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "resource_common"
(

	"primaryKey" RAW(16) NOT NULL,

	"external_id" NVARCHAR2(255) NULL,

	"name" NVARCHAR2(255) NULL,

	"description" NVARCHAR2(255) NULL,

	"category" NVARCHAR2(255) NULL,

	"type" NVARCHAR2(255) NULL,

	"dt_created" DATE NULL,

	"dt_modified" DATE NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "service_log"
(

	"primaryKey" RAW(16) NOT NULL,

	"service_id" NUMBER(10) NULL,

	"cfs_id" NUMBER(10) NULL,

	"parent_id" NUMBER(10) NULL,

	"contragent_id" NUMBER(10) NULL,

	"customer_id" NUMBER(10) NULL,

	"service_spec_id" NUMBER(10) NULL,

	"state" NVARCHAR2(255) NULL,

	"name" NVARCHAR2(255) NULL,

	"description" NVARCHAR2(255) NULL,

	"dt_created" DATE NULL,

	"dt_started" DATE NULL,

	"dt_ended" DATE NULL,

	"start_time" DATE NULL,

	"end_time" DATE NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "service_order"
(

	"primaryKey" RAW(16) NOT NULL,

	"description" NVARCHAR2(255) NULL,

	"dt_completed" DATE NULL,

	"dt_created" DATE NULL,

	"dt_modified" DATE NULL,

	"dt_started" DATE NULL,

	"external_id" RAW(16) NULL,

	"price" FLOAT(126) NULL,

	"modifier_id_m0" RAW(16) NULL,

	"contragent_id_m0" RAW(16) NULL,

	"creator_id_m0" RAW(16) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "serviceLog"
(

	"primaryKey" RAW(16) NOT NULL,

	"service_id" NUMBER(10) NOT NULL,

	"cfs_id" NUMBER(10) NULL,

	"parent_id" NUMBER(10) NULL,

	"contragent_id" NUMBER(10) NULL,

	"customer_id" NUMBER(10) NULL,

	"service_spec_id" NUMBER(10) NULL,

	"state" NVARCHAR2(255) NULL,

	"name" NVARCHAR2(255) NULL,

	"description" NVARCHAR2(255) NULL,

	"dt_created" DATE NULL,

	"dt_started" DATE NULL,

	"dt_ended" DATE NULL,

	"start_time" DATE NOT NULL,

	"end_time" DATE NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "service_state"
(

	"primaryKey" RAW(16) NOT NULL,

	"description" NVARCHAR2(255) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "characteristicType"
(

	"primaryKey" RAW(16) NOT NULL,

	"regex" NVARCHAR2(255) NULL,

	"description" NVARCHAR2(255) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "role"
(

	"primaryKey" RAW(16) NOT NULL,

	"name" NVARCHAR2(255) NOT NULL,

	"description" NVARCHAR2(255) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "userGroup"
(

	"primaryKey" RAW(16) NOT NULL,

	"user_id" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "serviceUsageSpec"
(

	"primaryKey" RAW(16) NOT NULL,

	"name" NVARCHAR2(255) NOT NULL,

	"value" NVARCHAR2(255) NULL,

	"map" NUMBER(1) NOT NULL,

	"unit" NVARCHAR2(255) NULL,

	"service_spec_id" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "orderItem"
(

	"primaryKey" RAW(16) NOT NULL,

	"action" NVARCHAR2(255) NOT NULL,

	"price" FLOAT(126) NOT NULL,

	"dt_created" DATE NOT NULL,

	"dt_modified" DATE NOT NULL,

	"log" NVARCHAR2(255) NULL,

	"service_order_id" RAW(16) NOT NULL,

	"parent_id" RAW(16) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "resource_shared"
(

	"primaryKey" RAW(16) NOT NULL,

	"external_id" NVARCHAR2(255) NULL,

	"existent" NUMBER(1) NULL,

	"name" NVARCHAR2(255) NULL,

	"description" NVARCHAR2(255) NULL,

	"category" NVARCHAR2(255) NULL,

	"type" NVARCHAR2(255) NULL,

	"dt_created" DATE NULL,

	"dt_modified" DATE NULL,

	"customer_id_m0" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "characteristic_type"
(

	"primaryKey" RAW(16) NOT NULL,

	"regex" NVARCHAR2(255) NULL,

	"description" NVARCHAR2(255) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "userServiceOrder"
(

	"primaryKey" RAW(16) NOT NULL,

	"action" NVARCHAR2(255) NOT NULL,

	"dt_action" DATE NOT NULL,

	"service_order_id" RAW(16) NOT NULL,

	"user_id" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "catalog"
(

	"primaryKey" RAW(16) NOT NULL,

	"code" NVARCHAR2(255) NOT NULL,

	"svc" NVARCHAR2(255) NOT NULL,

	"svc_type" NVARCHAR2(255) NULL,

	"data_version" NVARCHAR2(255) NULL,

	"dt_sync" DATE NULL,

	"descr" NVARCHAR2(255) NULL,

	"vat" NVARCHAR2(255) NULL,

	"is_actual" NUMBER(1) NOT NULL,

	"dt_creation" DATE NULL,

	"parent_key" RAW(16) NULL,

	"measure" NVARCHAR2(255) NULL,

	"measure_key" RAW(16) NULL,

	"status" NVARCHAR2(255) NULL,

	"formula_key" RAW(16) NULL,

	"billing_object_type_guid" RAW(16) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "cardinalityType"
(

	"primaryKey" RAW(16) NOT NULL,

	"description" NVARCHAR2(255) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "serviceSpecCharacteristic"
(

	"primaryKey" RAW(16) NOT NULL,

	"name" NVARCHAR2(255) NOT NULL,

	"value" NVARCHAR2(255) NULL,

	"can_be_overridden" NUMBER(1) NOT NULL,

	"label" NVARCHAR2(255) NULL,

	"list" NUMBER(10) NULL,

	"type" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "resource_characteristic"
(

	"primaryKey" RAW(16) NOT NULL,

	"name" NVARCHAR2(255) NULL,

	"value" NVARCHAR2(255) NULL,

	"resource_id_m0" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "service_characteristic"
(

	"primaryKey" RAW(16) NOT NULL,

	"name" NVARCHAR2(255) NULL,

	"value" NVARCHAR2(255) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "grp"
(

	"primaryKey" RAW(16) NOT NULL,

	"name" NVARCHAR2(255) NOT NULL,

	"description" NVARCHAR2(255) NULL,

	"imported" NUMBER(1) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "resource_log"
(

	"primaryKey" RAW(16) NOT NULL,

	"resource_id" NUMBER(10) NULL,

	"parent_id" NUMBER(10) NULL,

	"cfs_id" NUMBER(10) NULL,

	"parent_service_id" NUMBER(10) NULL,

	"resource_shared_id" NUMBER(10) NULL,

	"contragent_id" NUMBER(10) NULL,

	"customer_id" NUMBER(10) NULL,

	"resource_spec_id" NUMBER(10) NULL,

	"name" NVARCHAR2(255) NULL,

	"description" NVARCHAR2(255) NULL,

	"external_id" NVARCHAR2(255) NULL,

	"start_time" DATE NULL,

	"end_time" DATE NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "resourceShared"
(

	"primaryKey" RAW(16) NOT NULL,

	"external_id" NVARCHAR2(255) NULL,

	"existent" NUMBER(1) NOT NULL,

	"name" NVARCHAR2(255) NOT NULL,

	"description" NVARCHAR2(255) NULL,

	"category" NVARCHAR2(255) NOT NULL,

	"type" NVARCHAR2(255) NOT NULL,

	"dt_created" DATE NOT NULL,

	"dt_modified" DATE NOT NULL,

	"customer_id" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "resourceCommon"
(

	"primaryKey" RAW(16) NOT NULL,

	"external_id" NVARCHAR2(255) NULL,

	"name" NVARCHAR2(255) NOT NULL,

	"description" NVARCHAR2(255) NULL,

	"category" NVARCHAR2(255) NOT NULL,

	"type" NVARCHAR2(255) NOT NULL,

	"dt_created" DATE NOT NULL,

	"dt_modified" DATE NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "userServiceSpec"
(

	"primaryKey" RAW(16) NOT NULL,

	"action" NVARCHAR2(255) NOT NULL,

	"dt_action" DATE NOT NULL,

	"service_spec_id" RAW(16) NOT NULL,

	"user_id" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "serviceCharacteristic"
(

	"primaryKey" RAW(16) NOT NULL,

	"name" NVARCHAR2(255) NOT NULL,

	"value" NVARCHAR2(255) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "resourceCharacteristic"
(

	"primaryKey" RAW(16) NOT NULL,

	"name" NVARCHAR2(255) NOT NULL,

	"value" NVARCHAR2(255) NULL,

	"resource_id" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "userRole"
(

	"primaryKey" RAW(16) NOT NULL,

	"user_id" RAW(16) NOT NULL,

	"role_id" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "resourceSpec"
(

	"primaryKey" RAW(16) NOT NULL,

	"enum" NVARCHAR2(255) NOT NULL,

	"type" NVARCHAR2(255) NOT NULL,

	"existent" NUMBER(1) NOT NULL,

	"shared" NUMBER(1) NOT NULL,

	"version" NUMBER(10) NOT NULL,

	"name" NVARCHAR2(255) NOT NULL,

	"description" NVARCHAR2(255) NULL,

	"category" NVARCHAR2(255) NOT NULL,

	"dt_created" DATE NOT NULL,

	"dt_modified" DATE NOT NULL,

	"parent_id" RAW(16) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "serviceState"
(

	"primaryKey" RAW(16) NOT NULL,

	"description" NVARCHAR2(255) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "resourceSpecCharacteristic"
(

	"primaryKey" RAW(16) NOT NULL,

	"name" NVARCHAR2(255) NOT NULL,

	"value" NVARCHAR2(255) NULL,

	"can_be_overridden" NUMBER(1) NOT NULL,

	"label" NVARCHAR2(255) NULL,

	"list" NUMBER(10) NULL,

	"type" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "customerAcl"
(

	"primaryKey" RAW(16) NOT NULL,

	"a_create" NUMBER(1) NOT NULL,

	"a_read" NUMBER(1) NOT NULL,

	"a_update" NUMBER(1) NOT NULL,

	"a_delete" NUMBER(1) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "service"
(

	"primaryKey" RAW(16) NOT NULL,

	"name" NVARCHAR2(255) NOT NULL,

	"description" NVARCHAR2(255) NULL,

	"dt_created" DATE NOT NULL,

	"dt_started" DATE NULL,

	"dt_ended" DATE NULL,

	"service_spec_id" RAW(16) NOT NULL,

	"customer_id" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "cardinality_type"
(

	"primaryKey" RAW(16) NOT NULL,

	"description" NVARCHAR2(255) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "contragent"
(

	"primaryKey" RAW(16) NOT NULL,

	"name" NVARCHAR2(255) NOT NULL,

	"descr" NVARCHAR2(255) NULL,

	"official_name" NVARCHAR2(255) NULL,

	"creator_id" NUMBER(10) NULL,

	"modifier_id" NUMBER(10) NULL,

	"dt_created" DATE NULL,

	"dt_modified" DATE NULL,

	"INN" NVARCHAR2(255) NULL,

	"guid1c" RAW(16) NULL,

	"archive" NUMBER(1) NULL,

	"dt_archive" DATE NULL,

	"archiver_id" NUMBER(10) NULL,

	"archive_reason_id" NUMBER(10) NULL,

	"customer_id" RAW(16) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "serviceCharacteristicLog"
(

	"primaryKey" RAW(16) NOT NULL,

	"service_characteristic_id" NUMBER(10) NOT NULL,

	"name" NVARCHAR2(255) NULL,

	"value" NVARCHAR2(255) NULL,

	"service_id" NUMBER(10) NULL,

	"start_time" DATE NOT NULL,

	"end_time" DATE NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "STORMNETLOCKDATA"
(

	"LockKey" NVARCHAR2(300) NOT NULL,

	"UserName" NVARCHAR2(300) NOT NULL,

	"LockDate" DATE NULL,

	 PRIMARY KEY ("LockKey")
) ;


CREATE TABLE "STORMSETTINGS"
(

	"primaryKey" RAW(16) NOT NULL,

	"Module" nvarchar2(1000) NULL,

	"Name" nvarchar2(255) NULL,

	"Value" CLOB NULL,

	"User" nvarchar2(255) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "STORMAdvLimit"
(

	"primaryKey" RAW(16) NOT NULL,

	"User" nvarchar2(255) NULL,

	"Published" NUMBER(1) NULL,

	"Module" nvarchar2(255) NULL,

	"Name" nvarchar2(255) NULL,

	"Value" CLOB NULL,

	"HotKeyData" NUMBER(10) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "STORMFILTERSETTING"
(

	"primaryKey" RAW(16) NOT NULL,

	"Name" nvarchar2(255) NOT NULL,

	"DataObjectView" nvarchar2(255) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "STORMWEBSEARCH"
(

	"primaryKey" RAW(16) NOT NULL,

	"Name" nvarchar2(255) NOT NULL,

	"Order" NUMBER(10) NOT NULL,

	"PresentView" nvarchar2(255) NOT NULL,

	"DetailedView" nvarchar2(255) NOT NULL,

	"FilterSetting_m0" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "STORMFILTERDETAIL"
(

	"primaryKey" RAW(16) NOT NULL,

	"Caption" nvarchar2(255) NOT NULL,

	"DataObjectView" nvarchar2(255) NOT NULL,

	"ConnectMasterProp" nvarchar2(255) NOT NULL,

	"OwnerConnectProp" nvarchar2(255) NULL,

	"FilterSetting_m0" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "STORMFILTERLOOKUP"
(

	"primaryKey" RAW(16) NOT NULL,

	"DataObjectType" nvarchar2(255) NOT NULL,

	"Container" nvarchar2(255) NULL,

	"ContainerTag" nvarchar2(255) NULL,

	"FieldsToView" nvarchar2(255) NULL,

	"FilterSetting_m0" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "UserSetting"
(

	"primaryKey" RAW(16) NOT NULL,

	"AppName" nvarchar2(256) NULL,

	"UserName" nvarchar2(512) NULL,

	"UserGuid" RAW(16) NULL,

	"ModuleName" nvarchar2(1024) NULL,

	"ModuleGuid" RAW(16) NULL,

	"SettName" nvarchar2(256) NULL,

	"SettGuid" RAW(16) NULL,

	"SettLastAccessTime" DATE NULL,

	"StrVal" nvarchar2(256) NULL,

	"TxtVal" CLOB NULL,

	"IntVal" NUMBER(10) NULL,

	"BoolVal" NUMBER(1) NULL,

	"GuidVal" RAW(16) NULL,

	"DecimalVal" NUMBER(20,10) NULL,

	"DateTimeVal" DATE NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "ApplicationLog"
(

	"primaryKey" RAW(16) NOT NULL,

	"Category" nvarchar2(64) NULL,

	"EventId" NUMBER(10) NULL,

	"Priority" NUMBER(10) NULL,

	"Severity" nvarchar2(32) NULL,

	"Title" nvarchar2(256) NULL,

	"Timestamp" DATE NULL,

	"MachineName" nvarchar2(32) NULL,

	"AppDomainName" nvarchar2(512) NULL,

	"ProcessId" nvarchar2(256) NULL,

	"ProcessName" nvarchar2(512) NULL,

	"ThreadName" nvarchar2(512) NULL,

	"Win32ThreadId" nvarchar2(128) NULL,

	"Message" nvarchar2(2000) NULL,

	"FormattedMessage" nvarchar2(2000) NULL,

	 PRIMARY KEY ("primaryKey")
) ;



ALTER TABLE "dba"
	ADD CONSTRAINT "dba_Fdba_0" FOREIGN KEY ("prev_version") REFERENCES "dba" ("primaryKey");

CREATE INDEX "dba_Iprev_version" on "dba" ("prev_version");

ALTER TABLE "user_role"
	ADD CONSTRAINT "user_role_Frole_0" FOREIGN KEY ("role_id_m0") REFERENCES "role" ("primaryKey");

CREATE INDEX "user_role_Irole_id_m0" on "user_role" ("role_id_m0");

ALTER TABLE "user_role"
	ADD CONSTRAINT "user_role_Fusr_0" FOREIGN KEY ("user_id_m0") REFERENCES "usr" ("primaryKey");

CREATE INDEX "user_role_Iuser_id_m0" on "user_role" ("user_id_m0");

ALTER TABLE "userResourceSpec"
	ADD CONSTRAINT "userResourceSpec_Fusr_0" FOREIGN KEY ("user_id") REFERENCES "usr" ("primaryKey");

CREATE INDEX "userResourceSpec_Iuser_id" on "userResourceSpec" ("user_id");

ALTER TABLE "userResourceSpec"
	ADD CONSTRAINT "userResourceSpec_Fresourc_9298" FOREIGN KEY ("resource_spec_id") REFERENCES "resourceSpec" ("primaryKey");

CREATE INDEX "userResourceSpec_Iresourc_2593" on "userResourceSpec" ("resource_spec_id");

ALTER TABLE "serviceSpec"
	ADD CONSTRAINT "serviceSpec_Fcatalog_0" FOREIGN KEY ("catalog_key") REFERENCES "catalog" ("primaryKey");

CREATE INDEX "serviceSpec_Icatalog_key" on "serviceSpec" ("catalog_key");

ALTER TABLE "serviceOrder"
	ADD CONSTRAINT "serviceOrder_Fusr_0" FOREIGN KEY ("modifier_id") REFERENCES "usr" ("primaryKey");

CREATE INDEX "serviceOrder_Imodifier_id" on "serviceOrder" ("modifier_id");

ALTER TABLE "serviceOrder"
	ADD CONSTRAINT "serviceOrder_Fusr_1" FOREIGN KEY ("creator_id") REFERENCES "usr" ("primaryKey");

CREATE INDEX "serviceOrder_Icreator_id" on "serviceOrder" ("creator_id");

ALTER TABLE "serviceOrder"
	ADD CONSTRAINT "serviceOrder_Fcontragent_0" FOREIGN KEY ("contragent_id") REFERENCES "contragent" ("primaryKey");

CREATE INDEX "serviceOrder_Icontragent_id" on "serviceOrder" ("contragent_id");

ALTER TABLE "serviceSpecAcl"
	ADD CONSTRAINT "serviceSpecAcl_FserviceSpec_0" FOREIGN KEY ("service_spec_id") REFERENCES "serviceSpec" ("primaryKey");

CREATE INDEX "serviceSpecAcl_Iservice_s_9139" on "serviceSpecAcl" ("service_spec_id");

ALTER TABLE "serviceSpecAcl"
	ADD CONSTRAINT "serviceSpecAcl_Fgrp_0" FOREIGN KEY ("group_id") REFERENCES "grp" ("primaryKey");

CREATE INDEX "serviceSpecAcl_Igroup_id" on "serviceSpecAcl" ("group_id");

ALTER TABLE "resource"
	ADD CONSTRAINT "resource_Fcustomer_0" FOREIGN KEY ("customer_id") REFERENCES "customer" ("primaryKey");

CREATE INDEX "resource_Icustomer_id" on "resource" ("customer_id");

ALTER TABLE "resource"
	ADD CONSTRAINT "resource_Fcontragent_0" FOREIGN KEY ("contragent_id") REFERENCES "contragent" ("primaryKey");

CREATE INDEX "resource_Icontragent_id" on "resource" ("contragent_id");

ALTER TABLE "resource"
	ADD CONSTRAINT "resource_Fresource_0" FOREIGN KEY ("parent_id") REFERENCES "resource" ("primaryKey");

CREATE INDEX "resource_Iparent_id" on "resource" ("parent_id");

ALTER TABLE "resourceUsageSpec"
	ADD CONSTRAINT "resourceUsageSpec_Fresour_3553" FOREIGN KEY ("resource_spec_id") REFERENCES "resourceSpec" ("primaryKey");

CREATE INDEX "resourceUsageSpec_Iresour_4429" on "resourceUsageSpec" ("resource_spec_id");

ALTER TABLE "service_order"
	ADD CONSTRAINT "service_order_Fusr_0" FOREIGN KEY ("modifier_id_m0") REFERENCES "usr" ("primaryKey");

CREATE INDEX "service_order_Imodifier_id_m0" on "service_order" ("modifier_id_m0");

ALTER TABLE "service_order"
	ADD CONSTRAINT "service_order_Fcontragent_0" FOREIGN KEY ("contragent_id_m0") REFERENCES "contragent" ("primaryKey");

CREATE INDEX "service_order_Icontragent__497" on "service_order" ("contragent_id_m0");

ALTER TABLE "service_order"
	ADD CONSTRAINT "service_order_Fusr_1" FOREIGN KEY ("creator_id_m0") REFERENCES "usr" ("primaryKey");

CREATE INDEX "service_order_Icreator_id_m0" on "service_order" ("creator_id_m0");

ALTER TABLE "userGroup"
	ADD CONSTRAINT "userGroup_Fusr_0" FOREIGN KEY ("user_id") REFERENCES "usr" ("primaryKey");

CREATE INDEX "userGroup_Iuser_id" on "userGroup" ("user_id");

ALTER TABLE "serviceUsageSpec"
	ADD CONSTRAINT "serviceUsageSpec_Fservice_8984" FOREIGN KEY ("service_spec_id") REFERENCES "serviceSpec" ("primaryKey");

CREATE INDEX "serviceUsageSpec_Iservice_8943" on "serviceUsageSpec" ("service_spec_id");

ALTER TABLE "orderItem"
	ADD CONSTRAINT "orderItem_FserviceOrder_0" FOREIGN KEY ("service_order_id") REFERENCES "serviceOrder" ("primaryKey");

CREATE INDEX "orderItem_Iservice_order_id" on "orderItem" ("service_order_id");

ALTER TABLE "orderItem"
	ADD CONSTRAINT "orderItem_ForderItem_0" FOREIGN KEY ("parent_id") REFERENCES "orderItem" ("primaryKey");

CREATE INDEX "orderItem_Iparent_id" on "orderItem" ("parent_id");

ALTER TABLE "resource_shared"
	ADD CONSTRAINT "resource_shared_Fcustomer_0" FOREIGN KEY ("customer_id_m0") REFERENCES "customer" ("primaryKey");

CREATE INDEX "resource_shared_Icustomer_9945" on "resource_shared" ("customer_id_m0");

ALTER TABLE "userServiceOrder"
	ADD CONSTRAINT "userServiceOrder_Fservice_9309" FOREIGN KEY ("service_order_id") REFERENCES "serviceOrder" ("primaryKey");

CREATE INDEX "userServiceOrder_Iservice_2711" on "userServiceOrder" ("service_order_id");

ALTER TABLE "userServiceOrder"
	ADD CONSTRAINT "userServiceOrder_Fusr_0" FOREIGN KEY ("user_id") REFERENCES "usr" ("primaryKey");

CREATE INDEX "userServiceOrder_Iuser_id" on "userServiceOrder" ("user_id");

ALTER TABLE "serviceSpecCharacteristic"
	ADD CONSTRAINT "serviceSpecCharacteristic_9536" FOREIGN KEY ("type") REFERENCES "characteristicType" ("primaryKey");

CREATE INDEX "serviceSpecCharacteristic_2968" on "serviceSpecCharacteristic" ("type");

ALTER TABLE "resource_characteristic"
	ADD CONSTRAINT "resource_characteristic_F_4295" FOREIGN KEY ("resource_id_m0") REFERENCES "resource" ("primaryKey");

CREATE INDEX "resource_characteristic_I_8844" on "resource_characteristic" ("resource_id_m0");

ALTER TABLE "resourceShared"
	ADD CONSTRAINT "resourceShared_Fcustomer_0" FOREIGN KEY ("customer_id") REFERENCES "customer" ("primaryKey");

CREATE INDEX "resourceShared_Icustomer_id" on "resourceShared" ("customer_id");

ALTER TABLE "userServiceSpec"
	ADD CONSTRAINT "userServiceSpec_FserviceSpec_0" FOREIGN KEY ("service_spec_id") REFERENCES "serviceSpec" ("primaryKey");

CREATE INDEX "userServiceSpec_Iservice__9271" on "userServiceSpec" ("service_spec_id");

ALTER TABLE "userServiceSpec"
	ADD CONSTRAINT "userServiceSpec_Fusr_0" FOREIGN KEY ("user_id") REFERENCES "usr" ("primaryKey");

CREATE INDEX "userServiceSpec_Iuser_id" on "userServiceSpec" ("user_id");

ALTER TABLE "resourceCharacteristic"
	ADD CONSTRAINT "resourceCharacteristic_Fr_7313" FOREIGN KEY ("resource_id") REFERENCES "resource" ("primaryKey");

CREATE INDEX "resourceCharacteristic_Ir_7003" on "resourceCharacteristic" ("resource_id");

ALTER TABLE "userRole"
	ADD CONSTRAINT "userRole_Fusr_0" FOREIGN KEY ("user_id") REFERENCES "usr" ("primaryKey");

CREATE INDEX "userRole_Iuser_id" on "userRole" ("user_id");

ALTER TABLE "userRole"
	ADD CONSTRAINT "userRole_Frole_0" FOREIGN KEY ("role_id") REFERENCES "role" ("primaryKey");

CREATE INDEX "userRole_Irole_id" on "userRole" ("role_id");

ALTER TABLE "resourceSpec"
	ADD CONSTRAINT "resourceSpec_FresourceSpec_0" FOREIGN KEY ("parent_id") REFERENCES "resourceSpec" ("primaryKey");

CREATE INDEX "resourceSpec_Iparent_id" on "resourceSpec" ("parent_id");

ALTER TABLE "resourceSpecCharacteristic"
	ADD CONSTRAINT "resourceSpecCharacteristi_9568" FOREIGN KEY ("type") REFERENCES "characteristicType" ("primaryKey");

CREATE INDEX "resourceSpecCharacteristi_7709" on "resourceSpecCharacteristic" ("type");

ALTER TABLE "service"
	ADD CONSTRAINT "service_FserviceSpec_0" FOREIGN KEY ("service_spec_id") REFERENCES "serviceSpec" ("primaryKey");

CREATE INDEX "service_Iservice_spec_id" on "service" ("service_spec_id");

ALTER TABLE "service"
	ADD CONSTRAINT "service_Fcustomer_0" FOREIGN KEY ("customer_id") REFERENCES "customer" ("primaryKey");

CREATE INDEX "service_Icustomer_id" on "service" ("customer_id");

ALTER TABLE "contragent"
	ADD CONSTRAINT "contragent_Fcustomer_0" FOREIGN KEY ("customer_id") REFERENCES "customer" ("primaryKey");

CREATE INDEX "contragent_Icustomer_id" on "contragent" ("customer_id");

ALTER TABLE "STORMWEBSEARCH"
	ADD CONSTRAINT "STORMWEBSEARCH_FSTORMFILT_6521" FOREIGN KEY ("FilterSetting_m0") REFERENCES "STORMFILTERSETTING" ("primaryKey");

ALTER TABLE "STORMFILTERDETAIL"
	ADD CONSTRAINT "STORMFILTERDETAIL_FSTORMF_2900" FOREIGN KEY ("FilterSetting_m0") REFERENCES "STORMFILTERSETTING" ("primaryKey");

ALTER TABLE "STORMFILTERLOOKUP"
	ADD CONSTRAINT "STORMFILTERLOOKUP_FSTORMF_1583" FOREIGN KEY ("FilterSetting_m0") REFERENCES "STORMFILTERSETTING" ("primaryKey");


