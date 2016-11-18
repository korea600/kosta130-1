--------------------------------------------------------
--  ������ ������ - ������-11��-16-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table REGISTER
--------------------------------------------------------

  CREATE TABLE "REGISTER" 
   (	"ID" VARCHAR2(6 BYTE), 
	"REQUEST" VARCHAR2(10 BYTE), 
	"REASON" VARCHAR2(300 BYTE), 
	"TIMES" DATE, 
	"CHECKED" VARCHAR2(15 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
 

   COMMENT ON COLUMN "REGISTER"."ID" IS '�й�';
 
   COMMENT ON COLUMN "REGISTER"."REQUEST" IS '��û����';
 
   COMMENT ON COLUMN "REGISTER"."REASON" IS '��û����';
 
   COMMENT ON COLUMN "REGISTER"."TIMES" IS '��û�ð�';
 
   COMMENT ON COLUMN "REGISTER"."CHECKED" IS 'ó������';
--REM INSERTING into REGISTER
--SET DEFINE OFF;
Insert into REGISTER (ID,REQUEST,REASON,TIMES,CHECKED) values ('111001','����','���; ',to_date('16/11/04','RR/MM/DD'),'����');
Insert into REGISTER (ID,REQUEST,REASON,TIMES,CHECKED) values ('111005','����','�׳�',to_date('16/10/26','RR/MM/DD'),'����');
Insert into REGISTER (ID,REQUEST,REASON,TIMES,CHECKED) values ('111017','������','�ƾ�',to_date('16/10/26','RR/MM/DD'),'����');
Insert into REGISTER (ID,REQUEST,REASON,TIMES,CHECKED) values ('111009','����','����',to_date('16/10/26','RR/MM/DD'),'����');
Insert into REGISTER (ID,REQUEST,REASON,TIMES,CHECKED) values ('111001','����','adfg',to_date('16/11/02','RR/MM/DD'),'����');
Insert into REGISTER (ID,REQUEST,REASON,TIMES,CHECKED) values ('111001','����','�� ��ƾ��� ��',to_date('16/11/04','RR/MM/DD'),'����');
Insert into REGISTER (ID,REQUEST,REASON,TIMES,CHECKED) values ('111001','����','����',to_date('16/11/04','RR/MM/DD'),'ó����');
Insert into REGISTER (ID,REQUEST,REASON,TIMES,CHECKED) values ('111001','����','���� ������',to_date('16/11/03','RR/MM/DD'),'����');
Insert into REGISTER (ID,REQUEST,REASON,TIMES,CHECKED) values ('111001','������','qqqqqqqqq',to_date('16/11/04','RR/MM/DD'),'����');
Insert into REGISTER (ID,REQUEST,REASON,TIMES,CHECKED) values ('111010','����','�׳�',to_date('16/10/21','RR/MM/DD'),'����');
Insert into REGISTER (ID,REQUEST,REASON,TIMES,CHECKED) values ('111001','������','���볪 ����?',to_date('16/11/04','RR/MM/DD'),'����');
Insert into REGISTER (ID,REQUEST,REASON,TIMES,CHECKED) values ('111003','����','�� �����',to_date('16/11/01','RR/MM/DD'),'����');
Insert into REGISTER (ID,REQUEST,REASON,TIMES,CHECKED) values ('111001','����','�� �����.',to_date('16/11/04','RR/MM/DD'),'����');
Insert into REGISTER (ID,REQUEST,REASON,TIMES,CHECKED) values ('111001','������','�漺',to_date('16/11/04','RR/MM/DD'),'����');
--------------------------------------------------------
--  Constraints for Table REGISTER
--------------------------------------------------------

  ALTER TABLE "REGISTER" MODIFY ("REQUEST" NOT NULL ENABLE);
 
  ALTER TABLE "REGISTER" MODIFY ("REASON" NOT NULL ENABLE);
 
  ALTER TABLE "REGISTER" ADD CONSTRAINT "SYS_C0011362" CHECK ("CHECKED"='ó����' OR "CHECKED"='����' OR "CHECKED"='����') ENABLE;
