--------------------------------------------------------
--  ������ ������ - ������-11��-16-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table MEMBER
--------------------------------------------------------

  CREATE TABLE "MEMBER" 
   (	"ID" VARCHAR2(6 BYTE), 
	"PASS" VARCHAR2(15 BYTE), 
	"NAME" VARCHAR2(15 BYTE), 
	"DEPT" VARCHAR2(30 BYTE), 
	"SEMESTER" NUMBER, 
	"TEL" VARCHAR2(15 BYTE), 
	"EMAIL" VARCHAR2(40 BYTE), 
	"ADDR" VARCHAR2(200 BYTE), 
	"JOB" CHAR(1 BYTE), 
	"STATUS" VARCHAR2(12 BYTE), 
	"TOTAL" NUMBER, 
	"T_CREDIT" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
 

   COMMENT ON COLUMN "MEMBER"."ID" IS '�й�';
 
   COMMENT ON COLUMN "MEMBER"."PASS" IS '��й�ȣ';
 
   COMMENT ON COLUMN "MEMBER"."NAME" IS '�̸�';
 
   COMMENT ON COLUMN "MEMBER"."DEPT" IS '�μ�';
 
   COMMENT ON COLUMN "MEMBER"."SEMESTER" IS '�б�';
 
   COMMENT ON COLUMN "MEMBER"."TEL" IS '��ȭ��ȣ';
 
   COMMENT ON COLUMN "MEMBER"."EMAIL" IS '�̸���';
 
   COMMENT ON COLUMN "MEMBER"."ADDR" IS '�ּ�';
 
   COMMENT ON COLUMN "MEMBER"."JOB" IS 'S,P,A';
 
   COMMENT ON COLUMN "MEMBER"."STATUS" IS '���� ����';
 
   COMMENT ON COLUMN "MEMBER"."TOTAL" IS '���ð������� ';
 
   COMMENT ON COLUMN "MEMBER"."T_CREDIT" IS '������������';
--REM INSERTING into MEMBER
--SET DEFINE OFF;
Insert into MEMBER (ID,PASS,NAME,DEPT,SEMESTER,TEL,EMAIL,ADDR,JOB,STATUS,TOTAL,T_CREDIT) values ('111024','a125','�̼�','�����а�',4,'123-456','a14@naver.com','aaaa','S','����',100,19);
Insert into MEMBER (ID,PASS,NAME,DEPT,SEMESTER,TEL,EMAIL,ADDR,JOB,STATUS,TOTAL,T_CREDIT) values ('111021','a124','�̵�','�����а�',3,'123-456','a13@naver.com','aaaa','S','����',100,19);
Insert into MEMBER (ID,PASS,NAME,DEPT,SEMESTER,TEL,EMAIL,ADDR,JOB,STATUS,TOTAL,T_CREDIT) values ('111022','a125','�̼�','�����а�',4,'123-456','a14@naver.com','aaaa','S','����',100,19);
Insert into MEMBER (ID,PASS,NAME,DEPT,SEMESTER,TEL,EMAIL,ADDR,JOB,STATUS,TOTAL,T_CREDIT) values ('111001','a123','���ϳ�','��ǻ���а�',1,'012-3456-7890','a@b.net','���������','S','ó����',100,18);
Insert into MEMBER (ID,PASS,NAME,DEPT,SEMESTER,TEL,EMAIL,ADDR,JOB,STATUS,TOTAL,T_CREDIT) values ('111002','a123','������','����ó',2,'010-1234-5672','a21@naver.com','����','A','����',100,20);
Insert into MEMBER (ID,PASS,NAME,DEPT,SEMESTER,TEL,EMAIL,ADDR,JOB,STATUS,TOTAL,T_CREDIT) values ('111003','a125','�̼�','��ǻ���а�',5,'010-1234-5673','a3@naver.com','���ֱ�����','S','����',100,15);
Insert into MEMBER (ID,PASS,NAME,DEPT,SEMESTER,TEL,EMAIL,ADDR,JOB,STATUS,TOTAL,T_CREDIT) values ('111004','a126','�̳�','�����а�',6,'010-1234-5674','a4@naver.com','������','S','����',100,18);
Insert into MEMBER (ID,PASS,NAME,DEPT,SEMESTER,TEL,EMAIL,ADDR,JOB,STATUS,TOTAL,T_CREDIT) values ('111005','a127','�̴ټ�','��Ƽ�̵���',7,'010-1234-5675','a5@naver.com','����Ư����','P','����',100,18);
Insert into MEMBER (ID,PASS,NAME,DEPT,SEMESTER,TEL,EMAIL,ADDR,JOB,STATUS,TOTAL,T_CREDIT) values ('111006','a1234567','�̿���','��ǻ���а�',8,'010-1234-5676','ad6@naver.com','����11','P','����',100,18);
Insert into MEMBER (ID,PASS,NAME,DEPT,SEMESTER,TEL,EMAIL,ADDR,JOB,STATUS,TOTAL,T_CREDIT) values ('111007','a129','���ϰ�','�濵�а�',1,'010-1234-5677','a7@naver.com','���ֱ�����','P','����',100,20);
Insert into MEMBER (ID,PASS,NAME,DEPT,SEMESTER,TEL,EMAIL,ADDR,JOB,STATUS,TOTAL,T_CREDIT) values ('111008','a130','���ϳ�','��ǻ���а�',2,'010-1234-5678','a8@naver.com','������','S','����',100,19);
Insert into MEMBER (ID,PASS,NAME,DEPT,SEMESTER,TEL,EMAIL,ADDR,JOB,STATUS,TOTAL,T_CREDIT) values ('111009','a131','���','�����а�',4,'010-1234-5679','a9@naver.com','����Ư����','S','����',100,18);
Insert into MEMBER (ID,PASS,NAME,DEPT,SEMESTER,TEL,EMAIL,ADDR,JOB,STATUS,TOTAL,T_CREDIT) values ('111010','a132','���','��Ƽ�̵���',6,'010-1234-5680','a10@naver.com','����','S','����',100,18);
Insert into MEMBER (ID,PASS,NAME,DEPT,SEMESTER,TEL,EMAIL,ADDR,JOB,STATUS,TOTAL,T_CREDIT) values ('111011','a133','���','��ǻ���а�',8,'010-1234-5681','a11@naver.com','���ֱ�����','P','����',100,18);
Insert into MEMBER (ID,PASS,NAME,DEPT,SEMESTER,TEL,EMAIL,ADDR,JOB,STATUS,TOTAL,T_CREDIT) values ('111012','a134','��ټ�','�濵�а�',7,'010-1234-5682','a12@naver.com','������','S','������',100,18);
Insert into MEMBER (ID,PASS,NAME,DEPT,SEMESTER,TEL,EMAIL,ADDR,JOB,STATUS,TOTAL,T_CREDIT) values ('111013','a135','�迩��','��ǻ���а�',6,'010-1234-5683','a13@naver.com','����Ư����','S','����',100,18);
Insert into MEMBER (ID,PASS,NAME,DEPT,SEMESTER,TEL,EMAIL,ADDR,JOB,STATUS,TOTAL,T_CREDIT) values ('111014','a136','���ϰ�','�����а�',4,'010-1234-5684','a14@naver.com','����','A','����',100,18);
Insert into MEMBER (ID,PASS,NAME,DEPT,SEMESTER,TEL,EMAIL,ADDR,JOB,STATUS,TOTAL,T_CREDIT) values ('111015','a137','���ϳ�','��Ƽ�̵���',3,'010-1234-5685','a15@naver.com','���ֱ�����','P','����',100,18);
Insert into MEMBER (ID,PASS,NAME,DEPT,SEMESTER,TEL,EMAIL,ADDR,JOB,STATUS,TOTAL,T_CREDIT) values ('111016','a138','�ֵ�','��ǻ���а�',4,'010-1234-5686','a16@naver.com','������','S','����',100,19);
Insert into MEMBER (ID,PASS,NAME,DEPT,SEMESTER,TEL,EMAIL,ADDR,JOB,STATUS,TOTAL,T_CREDIT) values ('111017','a139','�ּ�','�濵�а�',6,'010-1234-5687','a17@naver.com','����Ư����','S','����',100,20);
Insert into MEMBER (ID,PASS,NAME,DEPT,SEMESTER,TEL,EMAIL,ADDR,JOB,STATUS,TOTAL,T_CREDIT) values ('111018','a140','�ֳ�','��ǻ���а�',7,'010-1234-5688','a18@naver.com','����','S','����',100,20);
Insert into MEMBER (ID,PASS,NAME,DEPT,SEMESTER,TEL,EMAIL,ADDR,JOB,STATUS,TOTAL,T_CREDIT) values ('111019','a141','�ִټ�','�����а�',8,'010-1234-5689','a19@naver.com','���ֱ�����','S','����',100,18);
Insert into MEMBER (ID,PASS,NAME,DEPT,SEMESTER,TEL,EMAIL,ADDR,JOB,STATUS,TOTAL,T_CREDIT) values ('111023','a124','�̵�','�����а�',3,'123-456','a13@naver.com','aaaa','S','����',100,19);
--------------------------------------------------------
--  DDL for Index MEMBER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MEMBER_PK" ON "MEMBER" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "MEMBER" ADD CONSTRAINT "MEMBER_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "MEMBER" MODIFY ("PASS" NOT NULL ENABLE);
 
  ALTER TABLE "MEMBER" MODIFY ("NAME" NOT NULL ENABLE);
 
  ALTER TABLE "MEMBER" MODIFY ("DEPT" NOT NULL ENABLE);
 
  ALTER TABLE "MEMBER" MODIFY ("SEMESTER" NOT NULL ENABLE);
 
  ALTER TABLE "MEMBER" MODIFY ("TEL" NOT NULL ENABLE);
 
  ALTER TABLE "MEMBER" MODIFY ("ADDR" NOT NULL ENABLE);
 
  ALTER TABLE "MEMBER" MODIFY ("EMAIL" NOT NULL ENABLE);