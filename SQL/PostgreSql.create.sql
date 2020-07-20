




CREATE TABLE productCatalog (

 primaryKey UUID NOT NULL,

 spec_id INT NOT NULL,

 name VARCHAR(255) NOT NULL,

 description TEXT NULL,

 version INT NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE dba (

 primaryKey UUID NOT NULL,

 dt_upgrade TIMESTAMP(3) NOT NULL,

 description VARCHAR(255) NULL,

 script VARCHAR(255) NOT NULL,

 prev_version UUID NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE orderState (

 primaryKey UUID NOT NULL,

 description VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE user_role (

 primaryKey UUID NOT NULL,

 role_id_m0 UUID NOT NULL,

 user_id_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE dictionary (

 primaryKey UUID NOT NULL,

 name VARCHAR(255) NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE order_state (

 primaryKey UUID NOT NULL,

 description VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE product_catalog (

 primaryKey UUID NOT NULL,

 spec_id INT NULL,

 name VARCHAR(255) NULL,

 description TEXT NULL,

 version INT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE resourceLog (

 primaryKey UUID NOT NULL,

 resource_id INT NOT NULL,

 parent_id INT NULL,

 cfs_id INT NULL,

 parent_service_id INT NULL,

 resource_shared_id INT NULL,

 contragent_id INT NULL,

 customer_id INT NULL,

 resource_spec_id INT NULL,

 name VARCHAR(255) NULL,

 description TEXT NULL,

 external_id TEXT NULL,

 start_time TIMESTAMP(3) NOT NULL,

 end_time TIMESTAMP(3) NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE userResourceSpec (

 primaryKey UUID NOT NULL,

 action TEXT NOT NULL,

 dt_action TIMESTAMP(3) NOT NULL,

 user_id UUID NOT NULL,

 resource_spec_id UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE serviceSpec (

 primaryKey UUID NOT NULL,

 version INT NOT NULL,

 enum TEXT NOT NULL,

 category TEXT NOT NULL,

 name VARCHAR(255) NOT NULL,

 description TEXT NULL,

 dt_created TIMESTAMP(3) NOT NULL,

 dt_modified TIMESTAMP(3) NOT NULL,

 catalog_key UUID NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE serviceOrder (

 primaryKey UUID NOT NULL,

 description TEXT NULL,

 dt_completed TIMESTAMP(3) NULL,

 dt_created TIMESTAMP(3) NOT NULL,

 dt_modified TIMESTAMP(3) NOT NULL,

 dt_started TIMESTAMP(3) NULL,

 external_id UUID NULL,

 price DOUBLE PRECISION NOT NULL,

 modifier_id UUID NULL,

 creator_id UUID NULL,

 contragent_id UUID NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE dictionaryValue (

 primaryKey UUID NOT NULL,

 value VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE usr (

 primaryKey UUID NOT NULL,

 login VARCHAR(255) NOT NULL,

 password TEXT NULL,

 locked BOOLEAN NOT NULL,

 email VARCHAR(255) NOT NULL,

 domain VARCHAR(255) NULL,

 last_name VARCHAR(255) NOT NULL,

 first_name VARCHAR(255) NULL,

 middle_name VARCHAR(255) NULL,

 phone TEXT NULL,

 phone_work TEXT NULL,

 phone_mobile TEXT NULL,

 position VARCHAR(255) NULL,

 department VARCHAR(255) NULL,

 photo TEXT NULL,

 thumbnail TEXT NULL,

 dt_created TIMESTAMP(3) NOT NULL,

 dt_locked TIMESTAMP(3) NULL,

 dt_modified TIMESTAMP(3) NULL,

 dt_lastlogin TIMESTAMP(3) NULL,

 full_name TEXT NULL,

 short_name TEXT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE serviceSpecAcl (

 primaryKey UUID NOT NULL,

 a_create BOOLEAN NOT NULL,

 a_read BOOLEAN NOT NULL,

 a_update BOOLEAN NOT NULL,

 a_delete BOOLEAN NOT NULL,

 service_spec_id UUID NOT NULL,

 group_id UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE service_characteristic_log (

 primaryKey UUID NOT NULL,

 service_characteristic_id INT NULL,

 name VARCHAR(255) NULL,

 value VARCHAR(255) NULL,

 service_id INT NULL,

 start_time TIMESTAMP(3) NULL,

 end_time TIMESTAMP(3) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE resource (

 primaryKey UUID NOT NULL,

 name VARCHAR(255) NOT NULL,

 description TEXT NULL,

 external_id TEXT NULL,

 customer_id UUID NOT NULL,

 contragent_id UUID NULL,

 parent_id UUID NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE resourceCharacteristicLog (

 primaryKey UUID NOT NULL,

 resource_characteristic_id INT NOT NULL,

 name VARCHAR(255) NULL,

 value VARCHAR(255) NULL,

 resource_id INT NULL,

 start_time TIMESTAMP(3) NOT NULL,

 end_time TIMESTAMP(3) NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE resourceUsageSpec (

 primaryKey UUID NOT NULL,

 name VARCHAR(255) NOT NULL,

 value VARCHAR(255) NULL,

 map BOOLEAN NOT NULL,

 unit TEXT NULL,

 resource_spec_id UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE customer (

 primaryKey UUID NOT NULL,

 name TEXT NOT NULL,

 descr TEXT NULL,

 service_manager_id INT NULL,

 creator_id INT NULL,

 modifier_id INT NULL,

 dt_created TIMESTAMP(3) NOT NULL,

 dt_modified TIMESTAMP(3) NOT NULL,

 archive BOOLEAN NOT NULL,

 dt_archive TIMESTAMP(3) NULL,

 archiver_id INT NULL,

 archive_reason_id INT NULL,

 internal BOOLEAN NOT NULL,

 telco BOOLEAN NOT NULL,

 office BOOLEAN NOT NULL,

 barrier BOOLEAN NOT NULL,

 pci_dss BOOLEAN NULL,

 federal_low_152 BOOLEAN NULL,

 account_manager_id INT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE resource_characteristic_log (

 primaryKey UUID NOT NULL,

 resource_characteristic_id INT NULL,

 name VARCHAR(255) NULL,

 value VARCHAR(255) NULL,

 resource_id INT NULL,

 start_time TIMESTAMP(3) NULL,

 end_time TIMESTAMP(3) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE resource_common (

 primaryKey UUID NOT NULL,

 external_id TEXT NULL,

 name VARCHAR(255) NULL,

 description TEXT NULL,

 category TEXT NULL,

 type TEXT NULL,

 dt_created TIMESTAMP(3) NULL,

 dt_modified TIMESTAMP(3) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE service_log (

 primaryKey UUID NOT NULL,

 service_id INT NULL,

 cfs_id INT NULL,

 parent_id INT NULL,

 contragent_id INT NULL,

 customer_id INT NULL,

 service_spec_id INT NULL,

 state TEXT NULL,

 name VARCHAR(255) NULL,

 description TEXT NULL,

 dt_created TIMESTAMP(3) NULL,

 dt_started TIMESTAMP(3) NULL,

 dt_ended TIMESTAMP(3) NULL,

 start_time TIMESTAMP(3) NULL,

 end_time TIMESTAMP(3) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE service_order (

 primaryKey UUID NOT NULL,

 description TEXT NULL,

 dt_completed TIMESTAMP(3) NULL,

 dt_created TIMESTAMP(3) NULL,

 dt_modified TIMESTAMP(3) NULL,

 dt_started TIMESTAMP(3) NULL,

 external_id UUID NULL,

 price DOUBLE PRECISION NULL,

 modifier_id_m0 UUID NULL,

 contragent_id_m0 UUID NULL,

 creator_id_m0 UUID NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE serviceLog (

 primaryKey UUID NOT NULL,

 service_id INT NOT NULL,

 cfs_id INT NULL,

 parent_id INT NULL,

 contragent_id INT NULL,

 customer_id INT NULL,

 service_spec_id INT NULL,

 state TEXT NULL,

 name VARCHAR(255) NULL,

 description TEXT NULL,

 dt_created TIMESTAMP(3) NULL,

 dt_started TIMESTAMP(3) NULL,

 dt_ended TIMESTAMP(3) NULL,

 start_time TIMESTAMP(3) NOT NULL,

 end_time TIMESTAMP(3) NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE service_state (

 primaryKey UUID NOT NULL,

 description VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE characteristicType (

 primaryKey UUID NOT NULL,

 regex VARCHAR(255) NULL,

 description VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE role (

 primaryKey UUID NOT NULL,

 name TEXT NOT NULL,

 description VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE userGroup (

 primaryKey UUID NOT NULL,

 user_id UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE serviceUsageSpec (

 primaryKey UUID NOT NULL,

 name VARCHAR(255) NOT NULL,

 value VARCHAR(255) NULL,

 map BOOLEAN NOT NULL,

 unit TEXT NULL,

 service_spec_id UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE orderItem (

 primaryKey UUID NOT NULL,

 action TEXT NOT NULL,

 price DOUBLE PRECISION NOT NULL,

 dt_created TIMESTAMP(3) NOT NULL,

 dt_modified TIMESTAMP(3) NOT NULL,

 log TEXT NULL,

 service_order_id UUID NOT NULL,

 parent_id UUID NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE resource_shared (

 primaryKey UUID NOT NULL,

 external_id TEXT NULL,

 existent BOOLEAN NULL,

 name VARCHAR(255) NULL,

 description TEXT NULL,

 category TEXT NULL,

 type TEXT NULL,

 dt_created TIMESTAMP(3) NULL,

 dt_modified TIMESTAMP(3) NULL,

 customer_id_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE characteristic_type (

 primaryKey UUID NOT NULL,

 regex VARCHAR(255) NULL,

 description VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE userServiceOrder (

 primaryKey UUID NOT NULL,

 action TEXT NOT NULL,

 dt_action TIMESTAMP(3) NOT NULL,

 service_order_id UUID NOT NULL,

 user_id UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE catalog (

 primaryKey UUID NOT NULL,

 code TEXT NOT NULL,

 svc TEXT NOT NULL,

 svc_type TEXT NULL,

 data_version TEXT NULL,

 dt_sync TIMESTAMP(3) NULL,

 descr TEXT NULL,

 vat TEXT NULL,

 is_actual BOOLEAN NOT NULL,

 dt_creation TIMESTAMP(3) NULL,

 parent_key UUID NULL,

 measure TEXT NULL,

 measure_key UUID NULL,

 status TEXT NULL,

 formula_key UUID NULL,

 billing_object_type_guid UUID NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE cardinalityType (

 primaryKey UUID NOT NULL,

 description VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE serviceSpecCharacteristic (

 primaryKey UUID NOT NULL,

 name VARCHAR(255) NOT NULL,

 value VARCHAR(255) NULL,

 can_be_overridden BOOLEAN NOT NULL,

 label VARCHAR(255) NULL,

 list INT NULL,

 type UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE resource_characteristic (

 primaryKey UUID NOT NULL,

 name VARCHAR(255) NULL,

 value VARCHAR(255) NULL,

 resource_id_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE service_characteristic (

 primaryKey UUID NOT NULL,

 name VARCHAR(255) NULL,

 value VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE grp (

 primaryKey UUID NOT NULL,

 name VARCHAR(255) NOT NULL,

 description VARCHAR(255) NULL,

 imported BOOLEAN NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE resource_log (

 primaryKey UUID NOT NULL,

 resource_id INT NULL,

 parent_id INT NULL,

 cfs_id INT NULL,

 parent_service_id INT NULL,

 resource_shared_id INT NULL,

 contragent_id INT NULL,

 customer_id INT NULL,

 resource_spec_id INT NULL,

 name VARCHAR(255) NULL,

 description TEXT NULL,

 external_id TEXT NULL,

 start_time TIMESTAMP(3) NULL,

 end_time TIMESTAMP(3) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE resourceShared (

 primaryKey UUID NOT NULL,

 external_id TEXT NULL,

 existent BOOLEAN NOT NULL,

 name VARCHAR(255) NOT NULL,

 description TEXT NULL,

 category TEXT NOT NULL,

 type TEXT NOT NULL,

 dt_created TIMESTAMP(3) NOT NULL,

 dt_modified TIMESTAMP(3) NOT NULL,

 customer_id UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE resourceCommon (

 primaryKey UUID NOT NULL,

 external_id TEXT NULL,

 name VARCHAR(255) NOT NULL,

 description TEXT NULL,

 category TEXT NOT NULL,

 type TEXT NOT NULL,

 dt_created TIMESTAMP(3) NOT NULL,

 dt_modified TIMESTAMP(3) NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE userServiceSpec (

 primaryKey UUID NOT NULL,

 action TEXT NOT NULL,

 dt_action TIMESTAMP(3) NOT NULL,

 service_spec_id UUID NOT NULL,

 user_id UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE serviceCharacteristic (

 primaryKey UUID NOT NULL,

 name VARCHAR(255) NOT NULL,

 value VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE resourceCharacteristic (

 primaryKey UUID NOT NULL,

 name VARCHAR(255) NOT NULL,

 value VARCHAR(255) NULL,

 resource_id UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE userRole (

 primaryKey UUID NOT NULL,

 user_id UUID NOT NULL,

 role_id UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE resourceSpec (

 primaryKey UUID NOT NULL,

 enum TEXT NOT NULL,

 type TEXT NOT NULL,

 existent BOOLEAN NOT NULL,

 shared BOOLEAN NOT NULL,

 version INT NOT NULL,

 name VARCHAR(255) NOT NULL,

 description TEXT NULL,

 category TEXT NOT NULL,

 dt_created TIMESTAMP(3) NOT NULL,

 dt_modified TIMESTAMP(3) NOT NULL,

 parent_id UUID NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE serviceState (

 primaryKey UUID NOT NULL,

 description VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE resourceSpecCharacteristic (

 primaryKey UUID NOT NULL,

 name VARCHAR(255) NOT NULL,

 value VARCHAR(255) NULL,

 can_be_overridden BOOLEAN NOT NULL,

 label VARCHAR(255) NULL,

 list INT NULL,

 type UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE customerAcl (

 primaryKey UUID NOT NULL,

 a_create BOOLEAN NOT NULL,

 a_read BOOLEAN NOT NULL,

 a_update BOOLEAN NOT NULL,

 a_delete BOOLEAN NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE service (

 primaryKey UUID NOT NULL,

 name VARCHAR(255) NOT NULL,

 description TEXT NULL,

 dt_created TIMESTAMP(3) NOT NULL,

 dt_started TIMESTAMP(3) NULL,

 dt_ended TIMESTAMP(3) NULL,

 service_spec_id UUID NOT NULL,

 customer_id UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE cardinality_type (

 primaryKey UUID NOT NULL,

 description VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE contragent (

 primaryKey UUID NOT NULL,

 name VARCHAR(255) NOT NULL,

 descr TEXT NULL,

 official_name VARCHAR(255) NULL,

 creator_id INT NULL,

 modifier_id INT NULL,

 dt_created TIMESTAMP(3) NULL,

 dt_modified TIMESTAMP(3) NULL,

 INN TEXT NULL,

 guid1c UUID NULL,

 archive BOOLEAN NULL,

 dt_archive TIMESTAMP(3) NULL,

 archiver_id INT NULL,

 archive_reason_id INT NULL,

 customer_id UUID NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE serviceCharacteristicLog (

 primaryKey UUID NOT NULL,

 service_characteristic_id INT NOT NULL,

 name VARCHAR(255) NULL,

 value VARCHAR(255) NULL,

 service_id INT NULL,

 start_time TIMESTAMP(3) NOT NULL,

 end_time TIMESTAMP(3) NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE STORMNETLOCKDATA (

 LockKey VARCHAR(300) NOT NULL,

 UserName VARCHAR(300) NOT NULL,

 LockDate TIMESTAMP(3) NULL,

 PRIMARY KEY (LockKey));



CREATE TABLE STORMSETTINGS (

 primaryKey UUID NOT NULL,

 Module VARCHAR(1000) NULL,

 Name VARCHAR(255) NULL,

 Value TEXT NULL,

 "User" VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE STORMAdvLimit (

 primaryKey UUID NOT NULL,

 "User" VARCHAR(255) NULL,

 Published BOOLEAN NULL,

 Module VARCHAR(255) NULL,

 Name VARCHAR(255) NULL,

 Value TEXT NULL,

 HotKeyData INT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE STORMFILTERSETTING (

 primaryKey UUID NOT NULL,

 Name VARCHAR(255) NOT NULL,

 DataObjectView VARCHAR(255) NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE STORMWEBSEARCH (

 primaryKey UUID NOT NULL,

 Name VARCHAR(255) NOT NULL,

 "Order" INT NOT NULL,

 PresentView VARCHAR(255) NOT NULL,

 DetailedView VARCHAR(255) NOT NULL,

 FilterSetting_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE STORMFILTERDETAIL (

 primaryKey UUID NOT NULL,

 Caption VARCHAR(255) NOT NULL,

 DataObjectView VARCHAR(255) NOT NULL,

 ConnectMasterProp VARCHAR(255) NOT NULL,

 OwnerConnectProp VARCHAR(255) NULL,

 FilterSetting_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE STORMFILTERLOOKUP (

 primaryKey UUID NOT NULL,

 DataObjectType VARCHAR(255) NOT NULL,

 Container VARCHAR(255) NULL,

 ContainerTag VARCHAR(255) NULL,

 FieldsToView VARCHAR(255) NULL,

 FilterSetting_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE UserSetting (

 primaryKey UUID NOT NULL,

 AppName VARCHAR(256) NULL,

 UserName VARCHAR(512) NULL,

 UserGuid UUID NULL,

 ModuleName VARCHAR(1024) NULL,

 ModuleGuid UUID NULL,

 SettName VARCHAR(256) NULL,

 SettGuid UUID NULL,

 SettLastAccessTime TIMESTAMP(3) NULL,

 StrVal VARCHAR(256) NULL,

 TxtVal TEXT NULL,

 IntVal INT NULL,

 BoolVal BOOLEAN NULL,

 GuidVal UUID NULL,

 DecimalVal DECIMAL(20,10) NULL,

 DateTimeVal TIMESTAMP(3) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE ApplicationLog (

 primaryKey UUID NOT NULL,

 Category VARCHAR(64) NULL,

 EventId INT NULL,

 Priority INT NULL,

 Severity VARCHAR(32) NULL,

 Title VARCHAR(256) NULL,

 Timestamp TIMESTAMP(3) NULL,

 MachineName VARCHAR(32) NULL,

 AppDomainName VARCHAR(512) NULL,

 ProcessId VARCHAR(256) NULL,

 ProcessName VARCHAR(512) NULL,

 ThreadName VARCHAR(512) NULL,

 Win32ThreadId VARCHAR(128) NULL,

 Message VARCHAR(2500) NULL,

 FormattedMessage TEXT NULL,

 PRIMARY KEY (primaryKey));




 ALTER TABLE dba ADD CONSTRAINT FK01d39eb4ab13470bbeb10ffaf16617b4 FOREIGN KEY (prev_version) REFERENCES dba; 
CREATE INDEX Indexeef6992f2af131451b1e7b43ac4e4976eabd6c17 on dba (prev_version); 

 ALTER TABLE user_role ADD CONSTRAINT FKd7f334193775490d955bb9ebd424ce22 FOREIGN KEY (role_id_m0) REFERENCES role; 
CREATE INDEX Index0f584c0ee45d7950f21b9b74248dcc4ef788b670 on user_role (role_id_m0); 

 ALTER TABLE user_role ADD CONSTRAINT FK4827e4e48a224ecc982b708d4c0eaad2 FOREIGN KEY (user_id_m0) REFERENCES usr; 
CREATE INDEX Index70ebedd333567dcadc51c0ff37deec919d543abe on user_role (user_id_m0); 

 ALTER TABLE userResourceSpec ADD CONSTRAINT FKcd06fdc8c57145b2a289c3faf27a72de FOREIGN KEY (user_id) REFERENCES usr; 
CREATE INDEX Index5f4c1ed2e00a1b62f520496b2c70eb9683bb9435 on userResourceSpec (user_id); 

 ALTER TABLE userResourceSpec ADD CONSTRAINT FK2aeac66b7b5f4d91bb521a2e82dc0c79 FOREIGN KEY (resource_spec_id) REFERENCES resourceSpec; 
CREATE INDEX Indexd93919ead73c43ac4af728fe8c02259ae4d418fe on userResourceSpec (resource_spec_id); 

 ALTER TABLE serviceSpec ADD CONSTRAINT FKaafe7243cf1b4503a3114826125fe6fb FOREIGN KEY (catalog_key) REFERENCES catalog; 
CREATE INDEX Indexd28cc147b8dacb1e0573c0802cf87b1a758ad237 on serviceSpec (catalog_key); 

 ALTER TABLE serviceOrder ADD CONSTRAINT FK4e8d95140b5549a1880c2364f0c55cdb FOREIGN KEY (modifier_id) REFERENCES usr; 
CREATE INDEX Index6fa4b80ff6ebc8a2e2d66814f7665196a34b2d46 on serviceOrder (modifier_id); 

 ALTER TABLE serviceOrder ADD CONSTRAINT FK5e767cf1fc6f4391b8fe53cda5550aa6 FOREIGN KEY (creator_id) REFERENCES usr; 
CREATE INDEX Index4c4ed74859cb4d6bd1da25027ea0ad1263b239ba on serviceOrder (creator_id); 

 ALTER TABLE serviceOrder ADD CONSTRAINT FK40988bf5988b442088e5b7b2d276e441 FOREIGN KEY (contragent_id) REFERENCES contragent; 
CREATE INDEX Index2e7cd913f7674c263e3c6bb1f7be0f2d1f26fe8e on serviceOrder (contragent_id); 

 ALTER TABLE serviceSpecAcl ADD CONSTRAINT FK9d5c07108d61498685d4a724da43197d FOREIGN KEY (service_spec_id) REFERENCES serviceSpec; 
CREATE INDEX Indexda713f6b96425deec50f6ec091045c3821f23ac8 on serviceSpecAcl (service_spec_id); 

 ALTER TABLE serviceSpecAcl ADD CONSTRAINT FKb62292f9d07b4bea9a6a8725cd59bf6b FOREIGN KEY (group_id) REFERENCES grp; 
CREATE INDEX Index1ceb5484f40f248de7dc995465d1e93e4cccfa7e on serviceSpecAcl (group_id); 

 ALTER TABLE resource ADD CONSTRAINT FK535b9f0dbdef4fbab8b6393c7cc9f77a FOREIGN KEY (customer_id) REFERENCES customer; 
CREATE INDEX Index0244133346102636ec228151987606344c30b2ff on resource (customer_id); 

 ALTER TABLE resource ADD CONSTRAINT FK3c85d77a69b7408ab1e70b27d00b14da FOREIGN KEY (contragent_id) REFERENCES contragent; 
CREATE INDEX Indexecd426ee81aee8a0ef1badbc4a8e41d6e08e6e63 on resource (contragent_id); 

 ALTER TABLE resource ADD CONSTRAINT FK5e05ac230f7b4c96abed9d80f4b6d084 FOREIGN KEY (parent_id) REFERENCES resource; 
CREATE INDEX Index51c1f00ce24bb0a3af2ed85facf7dc46cd790910 on resource (parent_id); 

 ALTER TABLE resourceUsageSpec ADD CONSTRAINT FK0b8e3996598041678f0b3f42144e82b2 FOREIGN KEY (resource_spec_id) REFERENCES resourceSpec; 
CREATE INDEX Indexfcbbd50ae33dd0e95d5ea07af8e29733cc22f424 on resourceUsageSpec (resource_spec_id); 

 ALTER TABLE service_order ADD CONSTRAINT FK70fced71e1eb4a228b330721a9a8bb9a FOREIGN KEY (modifier_id_m0) REFERENCES usr; 
CREATE INDEX Indexb011fc9ac03e28ca0c8b04abb0c83d0675fd0a88 on service_order (modifier_id_m0); 

 ALTER TABLE service_order ADD CONSTRAINT FK5ed6d510fc2b4401a31b6eb245a03374 FOREIGN KEY (contragent_id_m0) REFERENCES contragent; 
CREATE INDEX Indexe7dab6de66c365220358551dc78208ad7bbe9f79 on service_order (contragent_id_m0); 

 ALTER TABLE service_order ADD CONSTRAINT FK5e3c8265a1af4db0965075acd87cf831 FOREIGN KEY (creator_id_m0) REFERENCES usr; 
CREATE INDEX Index336e72e3be19e002515d3ea15ce1f045fb930822 on service_order (creator_id_m0); 

 ALTER TABLE userGroup ADD CONSTRAINT FKd3433f837cc54565bd18182751d76185 FOREIGN KEY (user_id) REFERENCES usr; 
CREATE INDEX Indexb88c4e55d82e726e91be1f1dccd7988277a4068b on userGroup (user_id); 

 ALTER TABLE serviceUsageSpec ADD CONSTRAINT FKc79315b4672e4dcaa887a07ced4518c2 FOREIGN KEY (service_spec_id) REFERENCES serviceSpec; 
CREATE INDEX Indexcfaf289587e522a7d1559464104186f657b55898 on serviceUsageSpec (service_spec_id); 

 ALTER TABLE orderItem ADD CONSTRAINT FK92139839c04a40429010b3c97dd9398c FOREIGN KEY (service_order_id) REFERENCES serviceOrder; 
CREATE INDEX Index6fe5903e2d5eecc411a5bd06d47e7484474257e8 on orderItem (service_order_id); 

 ALTER TABLE orderItem ADD CONSTRAINT FKa281b17c3d3b459c9fde08e1f6e3ca80 FOREIGN KEY (parent_id) REFERENCES orderItem; 
CREATE INDEX Index042a49ed7854a03725351551a71b42b5c1adcd68 on orderItem (parent_id); 

 ALTER TABLE resource_shared ADD CONSTRAINT FK168c7b9f8e394fbca9e2c5be91083e52 FOREIGN KEY (customer_id_m0) REFERENCES customer; 
CREATE INDEX Index9c3b5c1cc1cf0aa574e0905eafc47ca971e2973f on resource_shared (customer_id_m0); 

 ALTER TABLE userServiceOrder ADD CONSTRAINT FKfe298ca3a6654633ac12af46385a8787 FOREIGN KEY (service_order_id) REFERENCES serviceOrder; 
CREATE INDEX Index360e3b82cef3e2c199ff69bfce913710892ea670 on userServiceOrder (service_order_id); 

 ALTER TABLE userServiceOrder ADD CONSTRAINT FK0e727ce1c2784c1abf6501af30239e40 FOREIGN KEY (user_id) REFERENCES usr; 
CREATE INDEX Indexddaaa440bcf8ed2a72f83bf4b3bad1394001428e on userServiceOrder (user_id); 

 ALTER TABLE serviceSpecCharacteristic ADD CONSTRAINT FK5eff863bc8a2432c81342adcbfe03de5 FOREIGN KEY (type) REFERENCES characteristicType; 
CREATE INDEX Index6f746b2690d49d90cdb6b36240d8fca2ac8356ce on serviceSpecCharacteristic (type); 

 ALTER TABLE resource_characteristic ADD CONSTRAINT FK86aba84f4be04f41aee38d76636df837 FOREIGN KEY (resource_id_m0) REFERENCES resource; 
CREATE INDEX Indexff80fd380b31a44017eb7fcb5ae3c319d4f2187a on resource_characteristic (resource_id_m0); 

 ALTER TABLE resourceShared ADD CONSTRAINT FK1570c43b8a0b4f50811f9cd52900ac84 FOREIGN KEY (customer_id) REFERENCES customer; 
CREATE INDEX Index8d079f1d77126e3fc79596f724f5c6fece4af740 on resourceShared (customer_id); 

 ALTER TABLE userServiceSpec ADD CONSTRAINT FKc4f2ddbba84a401ead1cc90cb3ced291 FOREIGN KEY (service_spec_id) REFERENCES serviceSpec; 
CREATE INDEX Index8706df7ae0579631e8292e273ed2226a86ade4bd on userServiceSpec (service_spec_id); 

 ALTER TABLE userServiceSpec ADD CONSTRAINT FKa4e771b09c1c400589c0ca19cee0c7c5 FOREIGN KEY (user_id) REFERENCES usr; 
CREATE INDEX Index5a713f4fbda8e32b0d2942ad8f0a6b76c0632296 on userServiceSpec (user_id); 

 ALTER TABLE resourceCharacteristic ADD CONSTRAINT FKb7188e9380d344678b2b4e84d9a7589f FOREIGN KEY (resource_id) REFERENCES resource; 
CREATE INDEX Index9c1fd59d65fc4fa085f08f448cebc282f690870c on resourceCharacteristic (resource_id); 

 ALTER TABLE userRole ADD CONSTRAINT FK9355c14bcc8f417ab53cc7b55d474e78 FOREIGN KEY (user_id) REFERENCES usr; 
CREATE INDEX Index492c80ed7b4334405a76c95383b32915a2ad8a98 on userRole (user_id); 

 ALTER TABLE userRole ADD CONSTRAINT FK28a6c036ef4f457195ea4dd38b220cda FOREIGN KEY (role_id) REFERENCES role; 
CREATE INDEX Index2b7915036cb40f8c85a0df39275a2627713de435 on userRole (role_id); 

 ALTER TABLE resourceSpec ADD CONSTRAINT FKfb2d68ccc8034c1b947a9c4d7e577d01 FOREIGN KEY (parent_id) REFERENCES resourceSpec; 
CREATE INDEX Index706e80e85d920b3c3dbf2216f07f566a216b3a11 on resourceSpec (parent_id); 

 ALTER TABLE resourceSpecCharacteristic ADD CONSTRAINT FKf0424c85c19440e78a60db86acd0adaf FOREIGN KEY (type) REFERENCES characteristicType; 
CREATE INDEX Index064fce63aa42a22401edb75c9a37e991274f88b7 on resourceSpecCharacteristic (type); 

 ALTER TABLE service ADD CONSTRAINT FKdea63420fc7d41a0a9d382655e3065e7 FOREIGN KEY (service_spec_id) REFERENCES serviceSpec; 
CREATE INDEX Index45ae593ac4cf11e5bd51ba8948d6f8b98162d70e on service (service_spec_id); 

 ALTER TABLE service ADD CONSTRAINT FK7565e12469734adfb7b86ed0d5ab1278 FOREIGN KEY (customer_id) REFERENCES customer; 
CREATE INDEX Index9a06f29c5d70767d0051ca3c539fda04d0b8061e on service (customer_id); 

 ALTER TABLE contragent ADD CONSTRAINT FK22c736f69aa14ea2a110ac093116c052 FOREIGN KEY (customer_id) REFERENCES customer; 
CREATE INDEX Index6bbeb4d626ee16cada264df4c6fbc5667a32f5c3 on contragent (customer_id); 

 ALTER TABLE STORMWEBSEARCH ADD CONSTRAINT FK7ba2ff802a624ef4a7abd269be9443ea FOREIGN KEY (FilterSetting_m0) REFERENCES STORMFILTERSETTING; 

 ALTER TABLE STORMFILTERDETAIL ADD CONSTRAINT FKd6d11e39879d4092b36405e9788fda61 FOREIGN KEY (FilterSetting_m0) REFERENCES STORMFILTERSETTING; 

 ALTER TABLE STORMFILTERLOOKUP ADD CONSTRAINT FKa4b4ebaba5a0497e97410b6d87d08863 FOREIGN KEY (FilterSetting_m0) REFERENCES STORMFILTERSETTING; 

