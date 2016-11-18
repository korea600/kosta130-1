--------------------------------------------------------
--  파일이 생성됨 - 수요일-11월-16-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table BET_DATA
--------------------------------------------------------

  CREATE TABLE "BET_DATA" 
   (	"ID" VARCHAR2(6 BYTE), 
	"CODE" NUMBER, 
	"BET" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
 

   COMMENT ON COLUMN "BET_DATA"."ID" IS '학번';
 
   COMMENT ON COLUMN "BET_DATA"."CODE" IS '과목코드';
 
   COMMENT ON COLUMN "BET_DATA"."BET" IS '배팅점수';
-- REM INSERTING into BET_DATA
-- SET DEFINE OFF;
Insert into BET_DATA (ID,CODE,BET) values ('111001',13,30);
Insert into BET_DATA (ID,CODE,BET) values ('111001',31,30);
Insert into BET_DATA (ID,CODE,BET) values ('111001',1,50);
--------------------------------------------------------
--  Constraints for Table BET_DATA
--------------------------------------------------------

  ALTER TABLE "BET_DATA" MODIFY ("BET" NOT NULL ENABLE);
