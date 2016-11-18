--------------------------------------------------------
--  ������ ������ - ������-11��-16-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table GRADE_INFO
--------------------------------------------------------

  CREATE TABLE "GRADE_INFO" 
   (	"CODE" NUMBER, 
	"YEAR" NUMBER, 
	"SEMESTER" NUMBER, 
	"ID" VARCHAR2(6 BYTE), 
	"GRADE" VARCHAR2(2 BYTE) DEFAULT 'F'
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
 

   COMMENT ON COLUMN "GRADE_INFO"."CODE" IS '�����ڵ�';
 
   COMMENT ON COLUMN "GRADE_INFO"."YEAR" IS '������ �⵵';
 
   COMMENT ON COLUMN "GRADE_INFO"."SEMESTER" IS '�б�';
 
   COMMENT ON COLUMN "GRADE_INFO"."ID" IS '�й�';
 
   COMMENT ON COLUMN "GRADE_INFO"."GRADE" IS '�� ���� ����';
--REM INSERTING into GRADE_INFO
--SET DEFINE OFF;
Insert into GRADE_INFO (CODE,YEAR,SEMESTER,ID,GRADE) values (3,2015,2,'111001','B');
Insert into GRADE_INFO (CODE,YEAR,SEMESTER,ID,GRADE) values (13,2016,2,'111001','F');
Insert into GRADE_INFO (CODE,YEAR,SEMESTER,ID,GRADE) values (1,2016,1,'111003','A');
Insert into GRADE_INFO (CODE,YEAR,SEMESTER,ID,GRADE) values (1,2016,1,'111004','B+');
Insert into GRADE_INFO (CODE,YEAR,SEMESTER,ID,GRADE) values (1,2015,1,'111003','D');
Insert into GRADE_INFO (CODE,YEAR,SEMESTER,ID,GRADE) values (16,2016,2,'111001','B');
--------------------------------------------------------
--  Constraints for Table GRADE_INFO
--------------------------------------------------------

  ALTER TABLE "GRADE_INFO" MODIFY ("YEAR" NOT NULL ENABLE);
 
  ALTER TABLE "GRADE_INFO" MODIFY ("SEMESTER" NOT NULL ENABLE);
 
  ALTER TABLE "GRADE_INFO" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "GRADE_INFO" MODIFY ("GRADE" NOT NULL ENABLE);
