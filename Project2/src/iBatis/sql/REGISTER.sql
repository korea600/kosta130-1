--------------------------------------------------------
--  파일이 생성됨 - 수요일-11월-16-2016   
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
 

   COMMENT ON COLUMN "REGISTER"."ID" IS '학번';
 
   COMMENT ON COLUMN "REGISTER"."REQUEST" IS '신청내역';
 
   COMMENT ON COLUMN "REGISTER"."REASON" IS '신청사유';
 
   COMMENT ON COLUMN "REGISTER"."TIMES" IS '신청시간';
 
   COMMENT ON COLUMN "REGISTER"."CHECKED" IS '처리상태';
--REM INSERTING into REGISTER
--SET DEFINE OFF;
Insert into REGISTER (ID,REQUEST,REASON,TIMES,CHECKED) values ('111001','휴학','놀고싶어서 ',to_date('16/11/04','RR/MM/DD'),'승인');
Insert into REGISTER (ID,REQUEST,REASON,TIMES,CHECKED) values ('111005','휴학','그냥',to_date('16/10/26','RR/MM/DD'),'거절');
Insert into REGISTER (ID,REQUEST,REASON,TIMES,CHECKED) values ('111017','군휴학','아아',to_date('16/10/26','RR/MM/DD'),'거절');
Insert into REGISTER (ID,REQUEST,REASON,TIMES,CHECKED) values ('111009','휴학','ㅇㅇ',to_date('16/10/26','RR/MM/DD'),'거절');
Insert into REGISTER (ID,REQUEST,REASON,TIMES,CHECKED) values ('111001','재학','adfg',to_date('16/11/02','RR/MM/DD'),'승인');
Insert into REGISTER (ID,REQUEST,REASON,TIMES,CHECKED) values ('111001','휴학','또 놀아야지 ㅋ',to_date('16/11/04','RR/MM/DD'),'승인');
Insert into REGISTER (ID,REQUEST,REASON,TIMES,CHECKED) values ('111001','휴학','휴학',to_date('16/11/04','RR/MM/DD'),'처리중');
Insert into REGISTER (ID,REQUEST,REASON,TIMES,CHECKED) values ('111001','재학','군대 전역함',to_date('16/11/03','RR/MM/DD'),'승인');
Insert into REGISTER (ID,REQUEST,REASON,TIMES,CHECKED) values ('111001','군휴학','qqqqqqqqq',to_date('16/11/04','RR/MM/DD'),'승인');
Insert into REGISTER (ID,REQUEST,REASON,TIMES,CHECKED) values ('111010','휴학','그냥',to_date('16/10/21','RR/MM/DD'),'거절');
Insert into REGISTER (ID,REQUEST,REASON,TIMES,CHECKED) values ('111001','군휴학','군대나 갈까?',to_date('16/11/04','RR/MM/DD'),'거절');
Insert into REGISTER (ID,REQUEST,REASON,TIMES,CHECKED) values ('111003','복학','다 놀앗음',to_date('16/11/01','RR/MM/DD'),'승인');
Insert into REGISTER (ID,REQUEST,REASON,TIMES,CHECKED) values ('111001','재학','다 놀았음.',to_date('16/11/04','RR/MM/DD'),'승인');
Insert into REGISTER (ID,REQUEST,REASON,TIMES,CHECKED) values ('111001','군휴학','충성',to_date('16/11/04','RR/MM/DD'),'승인');
--------------------------------------------------------
--  Constraints for Table REGISTER
--------------------------------------------------------

  ALTER TABLE "REGISTER" MODIFY ("REQUEST" NOT NULL ENABLE);
 
  ALTER TABLE "REGISTER" MODIFY ("REASON" NOT NULL ENABLE);
 
  ALTER TABLE "REGISTER" ADD CONSTRAINT "SYS_C0011362" CHECK ("CHECKED"='처리중' OR "CHECKED"='승인' OR "CHECKED"='거절') ENABLE;
