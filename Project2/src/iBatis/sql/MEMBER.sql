--------------------------------------------------------
--  파일이 생성됨 - 수요일-11월-16-2016   
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
 

   COMMENT ON COLUMN "MEMBER"."ID" IS '학번';
 
   COMMENT ON COLUMN "MEMBER"."PASS" IS '비밀번호';
 
   COMMENT ON COLUMN "MEMBER"."NAME" IS '이름';
 
   COMMENT ON COLUMN "MEMBER"."DEPT" IS '부서';
 
   COMMENT ON COLUMN "MEMBER"."SEMESTER" IS '학기';
 
   COMMENT ON COLUMN "MEMBER"."TEL" IS '전화번호';
 
   COMMENT ON COLUMN "MEMBER"."EMAIL" IS '이메일';
 
   COMMENT ON COLUMN "MEMBER"."ADDR" IS '주소';
 
   COMMENT ON COLUMN "MEMBER"."JOB" IS 'S,P,A';
 
   COMMENT ON COLUMN "MEMBER"."STATUS" IS '학적 상태';
 
   COMMENT ON COLUMN "MEMBER"."TOTAL" IS '배팅가능점수 ';
 
   COMMENT ON COLUMN "MEMBER"."T_CREDIT" IS '수강가능학점';
--REM INSERTING into MEMBER
--SET DEFINE OFF;
Insert into MEMBER (ID,PASS,NAME,DEPT,SEMESTER,TEL,EMAIL,ADDR,JOB,STATUS,TOTAL,T_CREDIT) values ('111024','a125','이셋','경제학과',4,'123-456','a14@naver.com','aaaa','S','재학',100,19);
Insert into MEMBER (ID,PASS,NAME,DEPT,SEMESTER,TEL,EMAIL,ADDR,JOB,STATUS,TOTAL,T_CREDIT) values ('111021','a124','이둘','경제학과',3,'123-456','a13@naver.com','aaaa','S','재학',100,19);
Insert into MEMBER (ID,PASS,NAME,DEPT,SEMESTER,TEL,EMAIL,ADDR,JOB,STATUS,TOTAL,T_CREDIT) values ('111022','a125','이셋','경제학과',4,'123-456','a14@naver.com','aaaa','S','재학',100,19);
Insert into MEMBER (ID,PASS,NAME,DEPT,SEMESTER,TEL,EMAIL,ADDR,JOB,STATUS,TOTAL,T_CREDIT) values ('111001','a123','이하나','컴퓨터학과',1,'012-3456-7890','a@b.net','가산디지털','S','처리중',100,18);
Insert into MEMBER (ID,PASS,NAME,DEPT,SEMESTER,TEL,EMAIL,ADDR,JOB,STATUS,TOTAL,T_CREDIT) values ('111002','a123','교직원','교무처',2,'010-1234-5672','a21@naver.com','대전','A','재학',100,20);
Insert into MEMBER (ID,PASS,NAME,DEPT,SEMESTER,TEL,EMAIL,ADDR,JOB,STATUS,TOTAL,T_CREDIT) values ('111003','a125','이셋','컴퓨터학과',5,'010-1234-5673','a3@naver.com','광주광역시','S','복학',100,15);
Insert into MEMBER (ID,PASS,NAME,DEPT,SEMESTER,TEL,EMAIL,ADDR,JOB,STATUS,TOTAL,T_CREDIT) values ('111004','a126','이넷','영어학과',6,'010-1234-5674','a4@naver.com','세종시','S','재학',100,18);
Insert into MEMBER (ID,PASS,NAME,DEPT,SEMESTER,TEL,EMAIL,ADDR,JOB,STATUS,TOTAL,T_CREDIT) values ('111005','a127','이다섯','멀티미디어과',7,'010-1234-5675','a5@naver.com','서울특별시','P','휴학',100,18);
Insert into MEMBER (ID,PASS,NAME,DEPT,SEMESTER,TEL,EMAIL,ADDR,JOB,STATUS,TOTAL,T_CREDIT) values ('111006','a1234567','이여섯','컴퓨터학과',8,'010-1234-5676','ad6@naver.com','대전11','P','재학',100,18);
Insert into MEMBER (ID,PASS,NAME,DEPT,SEMESTER,TEL,EMAIL,ADDR,JOB,STATUS,TOTAL,T_CREDIT) values ('111007','a129','이일곱','경영학과',1,'010-1234-5677','a7@naver.com','광주광역시','P','재학',100,20);
Insert into MEMBER (ID,PASS,NAME,DEPT,SEMESTER,TEL,EMAIL,ADDR,JOB,STATUS,TOTAL,T_CREDIT) values ('111008','a130','김하나','컴퓨터학과',2,'010-1234-5678','a8@naver.com','세종시','S','재학',100,19);
Insert into MEMBER (ID,PASS,NAME,DEPT,SEMESTER,TEL,EMAIL,ADDR,JOB,STATUS,TOTAL,T_CREDIT) values ('111009','a131','김둘','영어학과',4,'010-1234-5679','a9@naver.com','서울특별시','S','재학',100,18);
Insert into MEMBER (ID,PASS,NAME,DEPT,SEMESTER,TEL,EMAIL,ADDR,JOB,STATUS,TOTAL,T_CREDIT) values ('111010','a132','김셋','멀티미디어과',6,'010-1234-5680','a10@naver.com','대전','S','휴학',100,18);
Insert into MEMBER (ID,PASS,NAME,DEPT,SEMESTER,TEL,EMAIL,ADDR,JOB,STATUS,TOTAL,T_CREDIT) values ('111011','a133','김넷','컴퓨터학과',8,'010-1234-5681','a11@naver.com','광주광역시','P','재학',100,18);
Insert into MEMBER (ID,PASS,NAME,DEPT,SEMESTER,TEL,EMAIL,ADDR,JOB,STATUS,TOTAL,T_CREDIT) values ('111012','a134','김다섯','경영학과',7,'010-1234-5682','a12@naver.com','세종시','S','군휴학',100,18);
Insert into MEMBER (ID,PASS,NAME,DEPT,SEMESTER,TEL,EMAIL,ADDR,JOB,STATUS,TOTAL,T_CREDIT) values ('111013','a135','김여섯','컴퓨터학과',6,'010-1234-5683','a13@naver.com','서울특별시','S','자퇴',100,18);
Insert into MEMBER (ID,PASS,NAME,DEPT,SEMESTER,TEL,EMAIL,ADDR,JOB,STATUS,TOTAL,T_CREDIT) values ('111014','a136','김일곱','영어학과',4,'010-1234-5684','a14@naver.com','대전','A','퇴학',100,18);
Insert into MEMBER (ID,PASS,NAME,DEPT,SEMESTER,TEL,EMAIL,ADDR,JOB,STATUS,TOTAL,T_CREDIT) values ('111015','a137','최하나','멀티미디어과',3,'010-1234-5685','a15@naver.com','광주광역시','P','재학',100,18);
Insert into MEMBER (ID,PASS,NAME,DEPT,SEMESTER,TEL,EMAIL,ADDR,JOB,STATUS,TOTAL,T_CREDIT) values ('111016','a138','최둘','컴퓨터학과',4,'010-1234-5686','a16@naver.com','세종시','S','퇴학',100,19);
Insert into MEMBER (ID,PASS,NAME,DEPT,SEMESTER,TEL,EMAIL,ADDR,JOB,STATUS,TOTAL,T_CREDIT) values ('111017','a139','최셋','경영학과',6,'010-1234-5687','a17@naver.com','서울특별시','S','재학',100,20);
Insert into MEMBER (ID,PASS,NAME,DEPT,SEMESTER,TEL,EMAIL,ADDR,JOB,STATUS,TOTAL,T_CREDIT) values ('111018','a140','최넷','컴퓨터학과',7,'010-1234-5688','a18@naver.com','대전','S','퇴학',100,20);
Insert into MEMBER (ID,PASS,NAME,DEPT,SEMESTER,TEL,EMAIL,ADDR,JOB,STATUS,TOTAL,T_CREDIT) values ('111019','a141','최다섯','영어학과',8,'010-1234-5689','a19@naver.com','광주광역시','S','재학',100,18);
Insert into MEMBER (ID,PASS,NAME,DEPT,SEMESTER,TEL,EMAIL,ADDR,JOB,STATUS,TOTAL,T_CREDIT) values ('111023','a124','이둘','경제학과',3,'123-456','a13@naver.com','aaaa','S','재학',100,19);
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
