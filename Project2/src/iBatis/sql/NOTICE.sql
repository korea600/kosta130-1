--------------------------------------------------------
--  파일이 생성됨 - 수요일-11월-16-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table NOTICE
--------------------------------------------------------

  CREATE TABLE "NOTICE" 
   (	"NO" NUMBER, 
	"NAME" VARCHAR2(15 BYTE), 
	"TITLE" VARCHAR2(120 BYTE), 
	"CONTENT" VARCHAR2(4000 BYTE), 
	"GDATE" DATE, 
	"CHECKED" VARCHAR2(10 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
 

   COMMENT ON COLUMN "NOTICE"."NO" IS '번호';
 
   COMMENT ON COLUMN "NOTICE"."NAME" IS '작성자이름';
 
   COMMENT ON COLUMN "NOTICE"."TITLE" IS '제목';
 
   COMMENT ON COLUMN "NOTICE"."CONTENT" IS '내용';
 
   COMMENT ON COLUMN "NOTICE"."GDATE" IS '올린날짜';
 
   COMMENT ON COLUMN "NOTICE"."CHECKED" IS '학사,취업';
--REM INSERTING into NOTICE
--SET DEFINE OFF;
Insert into NOTICE (NO,NAME,TITLE,CONTENT,GDATE,CHECKED) values (36,'교직원','떠들지마라!!','뻥',to_date('16/11/01','RR/MM/DD'),'학사');
Insert into NOTICE (NO,NAME,TITLE,CONTENT,GDATE,CHECKED) values (8,'교직원','LG채용','LG채용한데',to_date('16/10/20','RR/MM/DD'),'취업');
Insert into NOTICE (NO,NAME,TITLE,CONTENT,GDATE,CHECKED) values (2,'교직원','시험기간','ddddd',to_date('16/10/24','RR/MM/DD'),'학사');
Insert into NOTICE (NO,NAME,TITLE,CONTENT,GDATE,CHECKED) values (4,'교직원','werwer','kllllllll33333',to_date('16/10/25','RR/MM/DD'),'학사');
Insert into NOTICE (NO,NAME,TITLE,CONTENT,GDATE,CHECKED) values (9,'교직원','코스타채용','코스다 채용',to_date('16/10/26','RR/MM/DD'),'취업');
Insert into NOTICE (NO,NAME,TITLE,CONTENT,GDATE,CHECKED) values (5,'교직원','한화채용','한화도 채용!',to_date('16/10/25','RR/MM/DD'),'취업');
Insert into NOTICE (NO,NAME,TITLE,CONTENT,GDATE,CHECKED) values (6,'교직원','C언어','tdfdfdfdf',to_date('16/10/26','RR/MM/DD'),'학사');
Insert into NOTICE (NO,NAME,TITLE,CONTENT,GDATE,CHECKED) values (42,'교직원','111','1111',to_date('16/11/04','RR/MM/DD'),'취업');
Insert into NOTICE (NO,NAME,TITLE,CONTENT,GDATE,CHECKED) values (39,'교직원','취업?','할수잇겟나??',to_date('16/11/02','RR/MM/DD'),'취업');
Insert into NOTICE (NO,NAME,TITLE,CONTENT,GDATE,CHECKED) values (15,'교직원','sssssssssssssss','sssssssssdddddddddddddd',to_date('16/10/29','RR/MM/DD'),'학사');
Insert into NOTICE (NO,NAME,TITLE,CONTENT,GDATE,CHECKED) values (11,'교직원','배가고픕니다','김밥 떢뽂ㄲㄲㄲㄲㄲㄲ끼',to_date('16/10/26','RR/MM/DD'),'취업');
Insert into NOTICE (NO,NAME,TITLE,CONTENT,GDATE,CHECKED) values (10,'교직원','배고파','백퐈',to_date('16/10/26','RR/MM/DD'),'취업');
Insert into NOTICE (NO,NAME,TITLE,CONTENT,GDATE,CHECKED) values (13,'교직원','asdfasdf','adfasdf',to_date('16/10/29','RR/MM/DD'),'학사');
Insert into NOTICE (NO,NAME,TITLE,CONTENT,GDATE,CHECKED) values (14,'교직원','assssssssus','ssssssssssssssssssss',to_date('16/10/29','RR/MM/DD'),'학사');
Insert into NOTICE (NO,NAME,TITLE,CONTENT,GDATE,CHECKED) values (34,'교직원','공지테스트','테스트 맞나?',to_date('16/11/01','RR/MM/DD'),'취업');
Insert into NOTICE (NO,NAME,TITLE,CONTENT,GDATE,CHECKED) values (35,'교직원','학사공지?','ㅋㅋㅋ',to_date('16/11/01','RR/MM/DD'),'학사');
--------------------------------------------------------
--  Constraints for Table NOTICE
--------------------------------------------------------

  ALTER TABLE "NOTICE" MODIFY ("NAME" NOT NULL ENABLE);
 
  ALTER TABLE "NOTICE" MODIFY ("TITLE" NOT NULL ENABLE);
 
  ALTER TABLE "NOTICE" MODIFY ("CONTENT" NOT NULL ENABLE);
 
  ALTER TABLE "NOTICE" MODIFY ("GDATE" NOT NULL ENABLE);
