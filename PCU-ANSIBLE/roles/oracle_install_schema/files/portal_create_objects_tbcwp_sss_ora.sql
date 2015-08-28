spool LOG_portal_create_objects_tbcwp_sss_ora.txt;

-- Tesco Bank PCU Oracle Database Scripts.
--------------------------------------------------------

-- V1 May 2015

-- SEQUENCES
-- TABLES
-- INDEXES
-- VIEWS
-- PACKAGES
-- TRIGGERS


--- START SCRIPT ---
--------------------------------------------------------
--  DDL for Sequence TBCWP_ASSERTION_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TBCWP_SSS"."TBCWP_ASSERTION_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 121 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence TBCWP_CI_REQUEST_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TBCWP_SSS"."TBCWP_CI_REQUEST_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence TBCWP_MESSAGE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TBCWP_SSS"."TBCWP_MESSAGE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 241 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence TBCWP_REDIRECT_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TBCWP_SSS"."TBCWP_REDIRECT_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence TBCWP_XPATH_ALIAS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TBCWP_SSS"."TBCWP_XPATH_ALIAS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence TBCWP_XPATH_ENTRY_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TBCWP_SSS"."TBCWP_XPATH_ENTRY_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 121 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table TBCWP_ASSERTION
--------------------------------------------------------

  CREATE TABLE "TBCWP_SSS"."TBCWP_ASSERTION" 
   (	"ID" NUMBER(*,0), 
	"ASSERTION_ID" VARCHAR2(50 BYTE), 
	"STATUS" NUMBER(*,0), 
	"ASSERTION" CLOB, 
	"ASSERTION_EXPIRY" DATE, 
	"SESSION_INDEX" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SSS_DATA" 
 LOB ("ASSERTION") STORE AS BASICFILE (
  TABLESPACE "SSS_DATA" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table TBCWP_MESSAGE
--------------------------------------------------------

  CREATE TABLE "TBCWP_SSS"."TBCWP_MESSAGE" 
   (	"ID" NUMBER(*,0), 
	"MESSAGE_ID" VARCHAR2(33 BYTE), 
	"CREATE_DATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SSS_DATA" ;
--------------------------------------------------------
--  DDL for Table TBCWP_REDIRECT
--------------------------------------------------------

  CREATE TABLE "TBCWP_SSS"."TBCWP_REDIRECT" 
   (	"ID" NUMBER(*,0), 
	"SOURCE" VARCHAR2(300 BYTE), 
	"DESTINATION" VARCHAR2(300 BYTE), 
	"HTTP_CODE" NUMBER(*,0), 
	"REDIRECT_TO_HTTPS" VARCHAR2(1 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SSS_DATA" ;
--------------------------------------------------------
--  DDL for Table TBCWP_XPATH_ALIAS
--------------------------------------------------------

  CREATE TABLE "TBCWP_SSS"."TBCWP_XPATH_ALIAS" 
   (	"ID" NUMBER(*,0), 
	"ALIAS_NAME" VARCHAR2(300 BYTE), 
	"ALIAS_DESCRIPTION" VARCHAR2(1000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SSS_DATA" ;
--------------------------------------------------------
--  DDL for Table TBCWP_XPATH_ENTRY
--------------------------------------------------------

  CREATE TABLE "TBCWP_SSS"."TBCWP_XPATH_ENTRY" 
   (	"ID" NUMBER(*,0), 
	"ALIAS_ID" NUMBER(*,0), 
	"EXPRESSION" VARCHAR2(300 BYTE), 
	"KEY" VARCHAR2(300 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SSS_DATA" ;

REM INSERTING into TBCWP_SSS.TBCWP_REDIRECT
SET DEFINE OFF;
Insert into TBCWP_SSS.TBCWP_REDIRECT (ID,SOURCE,DESTINATION,HTTP_CODE,REDIRECT_TO_HTTPS) values (1,'PortalInfo',null,404,null);
Insert into TBCWP_SSS.TBCWP_REDIRECT (ID,SOURCE,DESTINATION,HTTP_CODE,REDIRECT_TO_HTTPS) values (2,'/acs$','/portal/auth/portal/agent',307,null);
Insert into TBCWP_SSS.TBCWP_REDIRECT (ID,SOURCE,DESTINATION,HTTP_CODE,REDIRECT_TO_HTTPS) values (3,'/admin$','/portal/auth/portal/admin',307,null);
Insert into TBCWP_SSS.TBCWP_REDIRECT (ID,SOURCE,DESTINATION,HTTP_CODE,REDIRECT_TO_HTTPS) values (4,'(.*)\.jsp(.*)','$1.html$2',301,null);
Insert into TBCWP_SSS.TBCWP_REDIRECT (ID,SOURCE,DESTINATION,HTTP_CODE,REDIRECT_TO_HTTPS) values (5,'home.jsp$','home.html',301,null);
Insert into TBCWP_SSS.TBCWP_REDIRECT (ID,SOURCE,DESTINATION,HTTP_CODE,REDIRECT_TO_HTTPS) values (6,'finance/?$','home.html',301,null);
Insert into TBCWP_SSS.TBCWP_REDIRECT (ID,SOURCE,DESTINATION,HTTP_CODE,REDIRECT_TO_HTTPS) values (7,'register_insecure','servicing',301,null);
Insert into TBCWP_SSS.TBCWP_REDIRECT (ID,SOURCE,DESTINATION,HTTP_CODE,REDIRECT_TO_HTTPS) values (8,'finance/travelmoney','travel/travelmoney',301,null);
Insert into TBCWP_SSS.TBCWP_REDIRECT (ID,SOURCE,DESTINATION,HTTP_CODE,REDIRECT_TO_HTTPS) values (9,'insurance/travelins/elh/what-to-do-when-you-fall(\+|\s|%20)ill-abroad.html','insurance/travelins/elh/what-to-do-when-you-fall-ill-abroad.html',301,null);
Insert into TBCWP_SSS.TBCWP_REDIRECT (ID,SOURCE,DESTINATION,HTTP_CODE,REDIRECT_TO_HTTPS) values (10,'insurance/([^\/]+)/([^\/]+/)*([^\/]+\.pdf)','assets/sections/$1/pdf/$3',301,null);
Insert into TBCWP_SSS.TBCWP_REDIRECT (ID,SOURCE,DESTINATION,HTTP_CODE,REDIRECT_TO_HTTPS) values (11,'.*servicing/bus_card/redirect.*','https://cardsonline-commercial.com/RBSG_Commercial/Login.do?promoCode=TPF',302,null);
Insert into TBCWP_SSS.TBCWP_REDIRECT (ID,SOURCE,DESTINATION,HTTP_CODE,REDIRECT_TO_HTTPS) values (12,'.*servicing/insurance/redirect.*','http://www.tesco-insurance.co.uk/insurance/startaction.do?entrypoint=0004&operation=0002',302,null);
Insert into TBCWP_SSS.TBCWP_REDIRECT (ID,SOURCE,DESTINATION,HTTP_CODE,REDIRECT_TO_HTTPS) values (13,'.*insurance/carins/value/redirect-quote.*','https://generalins.tescobank.com/tesco/quote/rtp/pc/disclaimer.launch?PolicyType=PC&CompanyName=tesco&brandName=rtp',302,null);
Insert into TBCWP_SSS.TBCWP_REDIRECT (ID,SOURCE,DESTINATION,HTTP_CODE,REDIRECT_TO_HTTPS) values (14,'.*insurance/lifeins/callback.*','https://life.tescofinance.com/service/tb/callback',302,null);
Insert into TBCWP_SSS.TBCWP_REDIRECT (ID,SOURCE,DESTINATION,HTTP_CODE,REDIRECT_TO_HTTPS) values (15,'.*servicing/credit_card_online/redirect.*','https://cardservicing.tescofinance.com/RBSG_Consumer/Login.do?promoCode=TESCO',302,null);
Insert into TBCWP_SSS.TBCWP_REDIRECT (ID,SOURCE,DESTINATION,HTTP_CODE,REDIRECT_TO_HTTPS) values (16,'servicing/accs_pols/redirect.*','sss/auth',302,null);
Insert into TBCWP_SSS.TBCWP_REDIRECT (ID,SOURCE,DESTINATION,HTTP_CODE,REDIRECT_TO_HTTPS) values (17,'.*insurance/lifeins/retrievequote.html','https://secure.life.tescobank.com/capps/auth_entry_point.htm?appId=TPF&appType=50&Action=retrievequote',301,null);
Insert into TBCWP_SSS.TBCWP_REDIRECT (ID,SOURCE,DESTINATION,HTTP_CODE,REDIRECT_TO_HTTPS) values (18,'.*insurance/carins/redirect-retrieve.html','https://generalins.tescobank.com/tesco/quote/rtp/pc/startquote.launch?PolicyType=PC&amp;amp;CompanyName=tesco&amp;amp;brandName=rtp',301,null);
Insert into TBCWP_SSS.TBCWP_REDIRECT (ID,SOURCE,DESTINATION,HTTP_CODE,REDIRECT_TO_HTTPS) values (19,'.*insurance/carins/value/redirect-quote.*','https://generalins.tescobank.com/tesco/quote/rtp/pc/disclaimer.launch?PolicyType=PC&CompanyName=tesco&brandName=rtp',302,null);
Insert into TBCWP_SSS.TBCWP_REDIRECT (ID,SOURCE,DESTINATION,HTTP_CODE,REDIRECT_TO_HTTPS) values (20,'.*insurance/homeins/redirect-retrieve.html','https://generalins.tescobank.com/tesco/quote/rtp/hc/startquote.launch?PolicyType=HC&amp;CompanyName=tesco&amp;brandName=rtp',301,null);
Insert into TBCWP_SSS.TBCWP_REDIRECT (ID,SOURCE,DESTINATION,HTTP_CODE,REDIRECT_TO_HTTPS) values (21,'.*insurance/petins/redirect-retrieve.html','https://pet.tescobank.com/initial.aspx?type=webuser',301,null);
Insert into TBCWP_SSS.TBCWP_REDIRECT (ID,SOURCE,DESTINATION,HTTP_CODE,REDIRECT_TO_HTTPS) values (22,'savings/important-info.html\?ProdCode=InstantAccess','assets/sections/savings/pdf/tesco-instant-access-terms-and-conditions.pdf',302,null);
Insert into TBCWP_SSS.TBCWP_REDIRECT (ID,SOURCE,DESTINATION,HTTP_CODE,REDIRECT_TO_HTTPS) values (23,'savings/important-info.html\?ProdCode=InternetSaver','assets/sections/savings/pdf/tesco-internet-saver-terms-and-conditions.pdf',302,null);
Insert into TBCWP_SSS.TBCWP_REDIRECT (ID,SOURCE,DESTINATION,HTTP_CODE,REDIRECT_TO_HTTPS) values (24,'savings/important-info.html\?ProdCode=FixedRateSaver','assets/sections/savings/pdf/tesco-fixed-rate-saver-terms-and-conditions.pdf',302,null);
Insert into TBCWP_SSS.TBCWP_REDIRECT (ID,SOURCE,DESTINATION,HTTP_CODE,REDIRECT_TO_HTTPS) values (25,'onlinebanking/login-error.html','errors/login-error.html',301,'1');
Insert into TBCWP_SSS.TBCWP_REDIRECT (ID,SOURCE,DESTINATION,HTTP_CODE,REDIRECT_TO_HTTPS) values (26,'onlinebanking/pdfs/([^\/]+\.pdf)','assets/sections/onlinebanking/pdf/$1',301,null);
Insert into TBCWP_SSS.TBCWP_REDIRECT (ID,SOURCE,DESTINATION,HTTP_CODE,REDIRECT_TO_HTTPS) values (27,'insurance/([^\/]+)/([^\/]+/)*([^\/]+\.pdf)','assets/sections/$1/pdf/$3',301,null);
Insert into TBCWP_SSS.TBCWP_REDIRECT (ID,SOURCE,DESTINATION,HTTP_CODE,REDIRECT_TO_HTTPS) values (28,'.*insurance/travelins/redirect-retrieve.html','https://travel.tescobank.com/try_login.php?from=quote',301,null);
Insert into TBCWP_SSS.TBCWP_REDIRECT (ID,SOURCE,DESTINATION,HTTP_CODE,REDIRECT_TO_HTTPS) values (29,'onlinebanking/pdfs/([^\/]+\.pdf)','assets/sections/onlinebanking/pdf/$1',301,null);
Insert into TBCWP_SSS.TBCWP_REDIRECT (ID,SOURCE,DESTINATION,HTTP_CODE,REDIRECT_TO_HTTPS) values (30,'help/community','community',301,null);
Insert into TBCWP_SSS.TBCWP_REDIRECT (ID,SOURCE,DESTINATION,HTTP_CODE,REDIRECT_TO_HTTPS) values (31,'ecd_demo/default.html','demos/index.html',301,null);
Insert into TBCWP_SSS.TBCWP_REDIRECT (ID,SOURCE,DESTINATION,HTTP_CODE,REDIRECT_TO_HTTPS) values (32,'smarter_money/index.html','loans/elh/budgeting.html',301,null);
Insert into TBCWP_SSS.TBCWP_REDIRECT (ID,SOURCE,DESTINATION,HTTP_CODE,REDIRECT_TO_HTTPS) values (33,'finance/creditcards/([^\/]+)/([^\/]+/)*([^\/]+\.pdf)','assets/sections/credit-cards/pdf/$3',301,null);
Insert into TBCWP_SSS.TBCWP_REDIRECT (ID,SOURCE,DESTINATION,HTTP_CODE,REDIRECT_TO_HTTPS) values (34,'onlinebankingtroubleshooting$','change/online-banking-troubleshooting.html',301,null);
Insert into TBCWP_SSS.TBCWP_REDIRECT (ID,SOURCE,DESTINATION,HTTP_CODE,REDIRECT_TO_HTTPS) values (35,'onlinebankingrequirements$','change/minimum-requirements.html',301,null);
Insert into TBCWP_SSS.TBCWP_REDIRECT (ID,SOURCE,DESTINATION,HTTP_CODE,REDIRECT_TO_HTTPS) values (36,'sec/?$','sec/home.html',301,null);
Insert into TBCWP_SSS.TBCWP_REDIRECT (ID,SOURCE,DESTINATION,HTTP_CODE,REDIRECT_TO_HTTPS) values (37,'sec/index.html$','sec/home.html',301,null);
Insert into TBCWP_SSS.TBCWP_REDIRECT (ID,SOURCE,DESTINATION,HTTP_CODE,REDIRECT_TO_HTTPS) values (38,'sec/home.jsp$','sec/home.html',301,null);
Insert into TBCWP_SSS.TBCWP_REDIRECT (ID,SOURCE,DESTINATION,HTTP_CODE,REDIRECT_TO_HTTPS) values (39,'sec/finance/?$','sec/home.html',301,null);
REM INSERTING into TBCWP_SSS.TBCWP_XPATH_ALIAS
SET DEFINE OFF;
Insert into TBCWP_SSS.TBCWP_XPATH_ALIAS (ID,ALIAS_NAME,ALIAS_DESCRIPTION) values (1,'calculator','Mappings for calculator pages.');
Insert into TBCWP_SSS.TBCWP_XPATH_ALIAS (ID,ALIAS_NAME,ALIAS_DESCRIPTION) values (2,'normal','Mappings for general brochureware pages.');
Insert into TBCWP_SSS.TBCWP_XPATH_ALIAS (ID,ALIAS_NAME,ALIAS_DESCRIPTION) values (3,'sec','Mappings for secure brochureware pages.');
Insert into TBCWP_SSS.TBCWP_XPATH_ALIAS (ID,ALIAS_NAME,ALIAS_DESCRIPTION) values (4,'apply-online','Mappings for credit-cards apply-online pages.');
Insert into TBCWP_SSS.TBCWP_XPATH_ALIAS (ID,ALIAS_NAME,ALIAS_DESCRIPTION) values (5,'pcao','Mappings for PCAO pages.');
Insert into TBCWP_SSS.TBCWP_XPATH_ALIAS (ID,ALIAS_NAME,ALIAS_DESCRIPTION) values (6,'pcao-progress-bar','Mappings for PCAO progress bar');
Insert into TBCWP_SSS.TBCWP_XPATH_ALIAS (ID,ALIAS_NAME,ALIAS_DESCRIPTION) values (7,'ccola','Mappings for credit-cards online apply pages.');
Insert into TBCWP_SSS.TBCWP_XPATH_ALIAS (ID,ALIAS_NAME,ALIAS_DESCRIPTION) values (8,'ccola-messages','Mappings for credit-cards online apply content managed messages');
Insert into TBCWP_SSS.TBCWP_XPATH_ALIAS (ID,ALIAS_NAME,ALIAS_DESCRIPTION) values (9,'passthrough','Mapping for passthrough layout.');
Insert into TBCWP_SSS.TBCWP_XPATH_ALIAS (ID,ALIAS_NAME,ALIAS_DESCRIPTION) values (10,'login','Mappings for login page.');
Insert into TBCWP_SSS.TBCWP_XPATH_ALIAS (ID,ALIAS_NAME,ALIAS_DESCRIPTION) values (11,'scv','Mappings for SCV pages.');
Insert into TBCWP_SSS.TBCWP_XPATH_ALIAS (ID,ALIAS_NAME,ALIAS_DESCRIPTION) values (12,'scv-error','Mappings for PSP error messages.');
Insert into TBCWP_SSS.TBCWP_XPATH_ALIAS (ID,ALIAS_NAME,ALIAS_DESCRIPTION) values (13,'scv-messages','Mappings for PSP messages.');
Insert into TBCWP_SSS.TBCWP_XPATH_ALIAS (ID,ALIAS_NAME,ALIAS_DESCRIPTION) values (14,'sv','Mappings for SV pages.');
Insert into TBCWP_SSS.TBCWP_XPATH_ALIAS (ID,ALIAS_NAME,ALIAS_DESCRIPTION) values (15,'loan-messages','Mappings for loan calculator messages.');
Insert into TBCWP_SSS.TBCWP_XPATH_ALIAS (ID,ALIAS_NAME,ALIAS_DESCRIPTION) values (16,'eligibility','Mappings for loan calculator eligibility page');
Insert into TBCWP_SSS.TBCWP_XPATH_ALIAS (ID,ALIAS_NAME,ALIAS_DESCRIPTION) values (17,'authentication-status-content','Top right div which changes if a user is logged in or not');
Insert into TBCWP_SSS.TBCWP_XPATH_ALIAS (ID,ALIAS_NAME,ALIAS_DESCRIPTION) values (18,'sss-overlay','Mappings for the upgrade choice popup');
REM INSERTING into TBCWP_SSS.TBCWP_XPATH_ENTRY
SET DEFINE OFF;
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (1,1,'//div[@id=''preheader'']','preHeader');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (2,1,'//div[@id=''heading'']','header');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (3,1,'/html/head','xhtmlHead');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (4,1,'//div[@id=''row-footer'']','footer');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (5,1,'//div[@id=''above-calculator-row'']','aboveCalculator');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (6,1,'//div[@id=''area-left-col'']','leftColumn');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (7,1,'//div[@id=''area-type1'']','rightColumn');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (8,1,'//div[@id=''below-calculator-row'']','belowCalculator');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (9,1,'//div[@id=''col-subheading'']','subheader');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (10,1,'//div[@id=''postfooter'']','postFooter');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (11,2,'//div[@id=''heading'']','header');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (12,2,'/html/head','xhtmlHead');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (13,2,'//div[@id=''row-footer'']','footer');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (14,2,'//div[@id=''maincontent'']','mainContent');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (15,2,'//div[@id=''preheader'']','preHeader');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (16,2,'//div[@id=''postfooter'']','postFooter');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (17,2,'//div[@id=''col-subheading'']','subheader');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (18,3,'//div[@id=''postfooter'']','postFooter');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (19,3,'//div[@id=''row-footer'']','footer');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (20,3,'//div[@id=''col-subheading'']','subheader');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (21,3,'//div[@id=''preheader'']','preHeader');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (22,3,'/html/head','xhtmlHead');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (23,3,'//div[@id=''maincontent'']','mainContent');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (24,3,'//div[@id=''heading'']','header');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (25,4,'//div[@id=''heading'']','header');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (26,4,'//div[@id=''right-col-area'']','helpArea');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (27,4,'//div[@id=''preheader'']','preHeader');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (28,4,'/html/head','xhtmlHead');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (29,4,'//div[@id=''breadcrumb'']','breadcrumb');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (30,4,'//div[@id=''row-footer'']','footer');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (31,4,'//div[@id=''postfooter'']','postFooter');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (32,5,'//div[@id=''postfooter'']','postFooter');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (33,5,'//div[@class=''page-content stretch'']','replacementArea');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (34,5,'/html/head','htmlHead');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (35,5,'//footer','footer');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (36,6,'//div[@id=''joint'']','progressBarJoint');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (37,6,'//div[@id=''single'']','progressBarSingle');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (38,7,'//div[@class=''page-content stretch'']','replacementArea');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (39,7,'//footer','footer');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (40,7,'//div[@id=''postfooter'']','postFooter');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (41,7,'//header','header');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (42,7,'/html/head','htmlHead');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (43,8,'//div[@id=''sidebar-general'']','sidebar-general');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (44,8,'//div[@id=''sidebar-step1'']','sidebar-step1');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (45,8,'//div[@id=''sidebar-exp-decisioning'']','sidebar-exp-decisioning');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (46,8,'//div[@id=''sidebar-step2'']','sidebar-step2');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (47,8,'//div[@id=''sidebar-exp-completion'']','sidebar-exp-completion');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (48,8,'//div[@id=''sidebar-decline'']','sidebar-decline');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (49,8,'//div[@id=''sidebar-completion'']','sidebar-completion');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (50,9,'/html','xhtml');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (51,10,'//div[@id=''the-slideshow'']','loginHeader');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (52,10,'/html/head','xhtmlHead');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (53,10,'//div[@id=''postfooter'']','postFooter');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (54,10,'//div[@id=''login-help-area'']','loginFooter');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (55,10,'//div[@id=''login-sidebar'']','loginSidebar');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (56,10,'//div[@id=''above-replacement-row'']','aboveReplacement');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (57,10,'//div[@id=''right-col-area'']','rightColumn');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (58,10,'//div[@id=''below-replacement-row'']','belowReplacement');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (59,10,'//div[@id=''heading'']','header');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (60,10,'//div[@id=''row-footer'']','footer');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (61,10,'//div[@id=''subheading'']','subHeader');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (62,10,'//div[@id=''preheader'']','preHeader');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (63,11,'/html/head','xhtmlHead');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (64,11,'//div[@id=''area-type1'']','rightColumn');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (65,11,'//div[@id=''lob-content'']','centreColumn');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (66,11,'//div[@id=''area-left-col'']','leftColumn');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (67,11,'//div[@id=''breadcrumb'']','breadcrumb');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (68,11,'//div[@id=''area-heading'']','header');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (69,11,'//div[@id=''postfooter'']','postFooter');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (70,11,'//div[@id=''row-footer'']','footer');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (71,12,'//div[@id=''psp-no-initial-data-error'']','psp-no-initial-data-error');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (72,12,'//div[@id=''psp-product-type-error'']','psp-product-type-error');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (73,12,'//div[@id=''psp-banking-navigate-error'']','psp-banking-navigate-error');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (74,12,'//div[@id=''psp-cc-navigate-error'']','psp-cc-navigate-error');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (75,12,'//div[@id=''psp-cc-general-error'']','psp-cc-general-error');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (76,12,'//div[@id=''psp-banking-general-error'']','psp-banking-general-error');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (77,13,'//div[@class=''psp-cc-application-pending-message'']','psp-cc-application-pending-message');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (78,13,'//div[@id=''psp-banking-important-message'']','psp-banking-important-message');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (79,13,'//div[@id=''psp-cc-important-message'']','psp-cc-important-message');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (80,14,'//div[@class=''logged-area'']','logged-area');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (81,14,'//div[@id=''sub-content-2'']','sub-content-2');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (82,14,'//div[@id=''sub-content-4'']','sub-content-4');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (83,14,'/html/head','xhtmlHead');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (84,14,'//div[@id=''sub-content-1'']','sub-content-1');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (85,14,'/html/body//footer','footer');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (86,14,'//div[@id=''brand'']','brand');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (87,14,'//div[@id=''metafaq'']','metafaq');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (88,14,'//div[@id=''global-navigation-container'']','global-navigation');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (89,14,'//div[@id=''postfooter'']','postFooter');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (90,14,'//div[@id=''sub-content-3'']','sub-content-3');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (91,15,'//div[@id=''above-loan-results'']','above-loan-results');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (92,15,'//div[@id=''calculator-legal-text'']','calculator-legal-text');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (93,15,'//div[@id=''below-loan-results'']','below-loan-results');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (94,15,'//div[@id=''results-nonClubCard-Title'']','results-nonClubCard-Title');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (95,15,'//div[@id=''results-clubCard-Title'']','results-clubCard-Title');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (96,15,'//div[@id=''results-legal-text'']','results-legal-text');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (97,15,'//div[@id=''below-loan-calculator'']','below-loan-calculator');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (98,15,'//div[@id=''above-loan-calculator'']','above-loan-calculator');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (99,16,'//div[@id=''validate'']','mainContent');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (100,17,'//div[@id=''authenticated-content-psp'']','authenticated-psp');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (101,17,'//div[@id=''unauthenticated-content'']','unauthenticated-customer');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (102,17,'//div[@id=''unauthenticated-content'']','unauthenticated');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (103,17,'//div[@id=''unauthenticated-content-accounts'']','unauthenticated-accounts');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (104,17,'//div[@id=''authenticated-content-brochureware'']','authenticated-customer');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (105,17,'//div[@id=''authenticated-content-accounts'']','authenticated-accounts');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (106,17,'//div[@id=''authenticated-content-brochureware'']','authenticated-brochureware');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (107,18,'//div[@id=''completePageContainer'']','mainContent');
Insert into TBCWP_SSS.TBCWP_XPATH_ENTRY (ID,ALIAS_ID,EXPRESSION,KEY) values (108,18,'/html/head','xhtmlHead');
--------------------------------------------------------
--  DDL for Index TBCWP_ASN_STATUS_AND_ASN_ID
--------------------------------------------------------

  CREATE INDEX "TBCWP_SSS"."TBCWP_ASN_STATUS_AND_ASN_ID" ON "TBCWP_SSS"."TBCWP_ASSERTION" ("STATUS", "ASSERTION_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SSS_INDEX" ;
--------------------------------------------------------
--  DDL for Index TBCWP_ASN_STATUS_AND_ASN_SIDX
--------------------------------------------------------

  CREATE INDEX "TBCWP_SSS"."TBCWP_ASN_STATUS_AND_ASN_SIDX" ON "TBCWP_SSS"."TBCWP_ASSERTION" ("STATUS", "SESSION_INDEX") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SSS_INDEX" ;
--------------------------------------------------------
--  DDL for Index TBCWP_ASSERTION_UNIQUE
--------------------------------------------------------

  CREATE UNIQUE INDEX "TBCWP_SSS"."TBCWP_ASSERTION_UNIQUE" ON "TBCWP_SSS"."TBCWP_ASSERTION" ("ASSERTION_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SSS_INDEX" ;
--------------------------------------------------------
--  DDL for Index TBCWP_XPATH_ENTRY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TBCWP_SSS"."TBCWP_XPATH_ENTRY_PK" ON "TBCWP_SSS"."TBCWP_XPATH_ENTRY" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SSS_INDEX" ;
--------------------------------------------------------
--  DDL for Index TBCWP_ASSERTION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TBCWP_SSS"."TBCWP_ASSERTION_PK" ON "TBCWP_SSS"."TBCWP_ASSERTION" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SSS_INDEX" ;
--------------------------------------------------------
--  DDL for Index TBCWP_REDIRECT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TBCWP_SSS"."TBCWP_REDIRECT_PK" ON "TBCWP_SSS"."TBCWP_REDIRECT" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SSS_INDEX" ;
--------------------------------------------------------
--  DDL for Index TBCWP_MESSAGES_ID_CONSTRAINT
--------------------------------------------------------

  CREATE UNIQUE INDEX "TBCWP_SSS"."TBCWP_MESSAGES_ID_CONSTRAINT" ON "TBCWP_SSS"."TBCWP_MESSAGE" ("MESSAGE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SSS_INDEX" ;
--------------------------------------------------------
--  DDL for Index TBCWP_XPATH_ALIAS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TBCWP_SSS"."TBCWP_XPATH_ALIAS_PK" ON "TBCWP_SSS"."TBCWP_XPATH_ALIAS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SSS_INDEX" ;
--------------------------------------------------------
--  DDL for Index TBCWP_MSG_CREATE_DATE
--------------------------------------------------------

  CREATE INDEX "TBCWP_SSS"."TBCWP_MSG_CREATE_DATE" ON "TBCWP_SSS"."TBCWP_MESSAGE" ("CREATE_DATE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SSS_INDEX" ;
--------------------------------------------------------
--  DDL for Index TBCWP_ASN_SIDX
--------------------------------------------------------

  CREATE INDEX "TBCWP_SSS"."TBCWP_ASN_SIDX" ON "TBCWP_SSS"."TBCWP_ASSERTION" ("SESSION_INDEX") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SSS_INDEX" ;
--------------------------------------------------------
--  Constraints for Table TBCWP_ASSERTION
--------------------------------------------------------

  ALTER TABLE "TBCWP_SSS"."TBCWP_ASSERTION" ADD CONSTRAINT "TBCWP_ASSERTION_UNIQUE" UNIQUE ("ASSERTION_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SSS_INDEX"  ENABLE;
  ALTER TABLE "TBCWP_SSS"."TBCWP_ASSERTION" ADD CONSTRAINT "TBCWP_ASSERTION_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SSS_INDEX"  ENABLE;
  ALTER TABLE "TBCWP_SSS"."TBCWP_ASSERTION" MODIFY ("SESSION_INDEX" NOT NULL ENABLE);
  ALTER TABLE "TBCWP_SSS"."TBCWP_ASSERTION" MODIFY ("ASSERTION_EXPIRY" NOT NULL ENABLE);
  ALTER TABLE "TBCWP_SSS"."TBCWP_ASSERTION" MODIFY ("ASSERTION" NOT NULL ENABLE);
  ALTER TABLE "TBCWP_SSS"."TBCWP_ASSERTION" MODIFY ("STATUS" NOT NULL ENABLE);
  ALTER TABLE "TBCWP_SSS"."TBCWP_ASSERTION" MODIFY ("ASSERTION_ID" NOT NULL ENABLE);
  ALTER TABLE "TBCWP_SSS"."TBCWP_ASSERTION" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBCWP_XPATH_ENTRY
--------------------------------------------------------

  ALTER TABLE "TBCWP_SSS"."TBCWP_XPATH_ENTRY" ADD CONSTRAINT "TBCWP_XPATH_ENTRY_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SSS_INDEX"  ENABLE;
  ALTER TABLE "TBCWP_SSS"."TBCWP_XPATH_ENTRY" MODIFY ("KEY" NOT NULL ENABLE);
  ALTER TABLE "TBCWP_SSS"."TBCWP_XPATH_ENTRY" MODIFY ("EXPRESSION" NOT NULL ENABLE);
  ALTER TABLE "TBCWP_SSS"."TBCWP_XPATH_ENTRY" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBCWP_REDIRECT
--------------------------------------------------------

  ALTER TABLE "TBCWP_SSS"."TBCWP_REDIRECT" ADD CONSTRAINT "TBCWP_REDIRECT_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SSS_INDEX"  ENABLE;
  ALTER TABLE "TBCWP_SSS"."TBCWP_REDIRECT" MODIFY ("HTTP_CODE" NOT NULL ENABLE);
  ALTER TABLE "TBCWP_SSS"."TBCWP_REDIRECT" MODIFY ("SOURCE" NOT NULL ENABLE);
  ALTER TABLE "TBCWP_SSS"."TBCWP_REDIRECT" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBCWP_MESSAGE
--------------------------------------------------------

  ALTER TABLE "TBCWP_SSS"."TBCWP_MESSAGE" ADD CONSTRAINT "TBCWP_MESSAGES_ID_CONSTRAINT" UNIQUE ("MESSAGE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SSS_INDEX"  ENABLE;
  ALTER TABLE "TBCWP_SSS"."TBCWP_MESSAGE" MODIFY ("CREATE_DATE" NOT NULL ENABLE);
  ALTER TABLE "TBCWP_SSS"."TBCWP_MESSAGE" MODIFY ("MESSAGE_ID" NOT NULL ENABLE);
  ALTER TABLE "TBCWP_SSS"."TBCWP_MESSAGE" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBCWP_XPATH_ALIAS
--------------------------------------------------------

  ALTER TABLE "TBCWP_SSS"."TBCWP_XPATH_ALIAS" ADD CONSTRAINT "TBCWP_XPATH_ALIAS_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SSS_INDEX"  ENABLE;
  ALTER TABLE "TBCWP_SSS"."TBCWP_XPATH_ALIAS" MODIFY ("ALIAS_NAME" NOT NULL ENABLE);
  ALTER TABLE "TBCWP_SSS"."TBCWP_XPATH_ALIAS" MODIFY ("ID" NOT NULL ENABLE);


spool off;
