--------------------------------------------------------
--  파일이 생성됨 - 수요일-11월-16-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table QNA
--------------------------------------------------------

  CREATE TABLE "QNA" 
   (	"NO" NUMBER, 
	"NAME" VARCHAR2(15 BYTE), 
	"TITLE" VARCHAR2(120 BYTE), 
	"CONTENT" VARCHAR2(4000 BYTE), 
	"TIMES" DATE, 
	"STATUS" VARCHAR2(15 BYTE), 
	"ID" VARCHAR2(6 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
 

   COMMENT ON COLUMN "QNA"."NO" IS '건의번호';
 
   COMMENT ON COLUMN "QNA"."NAME" IS '작성자';
 
   COMMENT ON COLUMN "QNA"."TITLE" IS '제목';
 
   COMMENT ON COLUMN "QNA"."CONTENT" IS '내용';
 
   COMMENT ON COLUMN "QNA"."TIMES" IS '작성시간';
 
   COMMENT ON COLUMN "QNA"."STATUS" IS '처리상태';
 
   COMMENT ON COLUMN "QNA"."ID" IS '작성자학번';
--REM INSERTING into QNA
--SET DEFINE OFF;
Insert into QNA (NO,NAME,TITLE,CONTENT,TIMES,STATUS,ID) values (16,'이하나','qwqwqwqwqwqwq','qwqwqqwqwqwqwqwqwqwqw

===========================================


qwqwqwqqwqwqwqw',to_date('16/10/27','RR/MM/DD'),'처리완료','111001');
Insert into QNA (NO,NAME,TITLE,CONTENT,TIMES,STATUS,ID) values (21,'이하나','냄새나요','어디선가 ㅋㅋ

===========================================

네',to_date('16/11/01','RR/MM/DD'),'처리완료','111001');
Insert into QNA (NO,NAME,TITLE,CONTENT,TIMES,STATUS,ID) values (25,'이하나','상담제목','내용

=========================================== 시끄러!!',to_date('16/11/01','RR/MM/DD'),'처리완료','111001');
Insert into QNA (NO,NAME,TITLE,CONTENT,TIMES,STATUS,ID) values (5,'aasaa','aasdfsd','이하나

===========================================

111111111',to_date('16/10/25','RR/MM/DD'),'처리완료','111001');
Insert into QNA (NO,NAME,TITLE,CONTENT,TIMES,STATUS,ID) values (32,'이하나','자연과학관 언덕이 너무 높습니다.','언덕 좀 깎아주세요',to_date('16/11/04','RR/MM/DD'),'처리중','111001');
Insert into QNA (NO,NAME,TITLE,CONTENT,TIMES,STATUS,ID) values (11,'이하나','aaf','adf

===========================================

zzzzzzzzzz',to_date('16/10/25','RR/MM/DD'),'처리완료','111001');
Insert into QNA (NO,NAME,TITLE,CONTENT,TIMES,STATUS,ID) values (1,'이하나','학식 맛이 없어요','학식이 너무너무 맛이없어요

===========================================

zzzzzzz

===========================================
llllllllllllllllllllllll',to_date('16/10/20','RR/MM/DD'),'처리완료','111001');
Insert into QNA (NO,NAME,TITLE,CONTENT,TIMES,STATUS,ID) values (2,'이둘','도서관 에서 좀..','도서관에서 너무 시끄럽게 하는사람들이 너무 많아요

===========================================

gyhugfyu

=========================================== 너나 조용하세요 ㅋㅋ',to_date('16/10/20','RR/MM/DD'),'처리완료','111001');
Insert into QNA (NO,NAME,TITLE,CONTENT,TIMES,STATUS,ID) values (17,'이하나','와이파이','도서관에서 와이파이가 잘 안터져요ㅠㅠ 잘만 됨
뻥이야~
===========================================',to_date('16/10/27','RR/MM/DD'),'처리완료','111001');
Insert into QNA (NO,NAME,TITLE,CONTENT,TIMES,STATUS,ID) values (4,'최셋','컨닝해요','2016-10-21 공학관 203에서 시험보는데 ㅇㅇ씨가 컨닝해요!

=========================================== 너도 했잖아요..ㅋㅋ',to_date('16/10/21','RR/MM/DD'),'처리완료','111001');
Insert into QNA (NO,NAME,TITLE,CONTENT,TIMES,STATUS,ID) values (22,'이하나','와이파이','비번 아시는분??',to_date('16/11/01','RR/MM/DD'),'처리중','111001');
Insert into QNA (NO,NAME,TITLE,CONTENT,TIMES,STATUS,ID) values (26,'이하나','zz11','zzz111

===========================================',to_date('16/11/02','RR/MM/DD'),'처리완료','111001');
Insert into QNA (NO,NAME,TITLE,CONTENT,TIMES,STATUS,ID) values (15,'이하나','adfsasdf','asdfadsfadsfadsfddddddddd

===========================================
아아',to_date('16/10/25','RR/MM/DD'),'처리완료','111001');
Insert into QNA (NO,NAME,TITLE,CONTENT,TIMES,STATUS,ID) values (19,'이하나','냄새','강의실에서 이상한 냄새가 납니다......
해결해주세요.

===========================================',to_date('16/10/27','RR/MM/DD'),'처리완료','111001');
Insert into QNA (NO,NAME,TITLE,CONTENT,TIMES,STATUS,ID) values (12,'이하나','adsfzzz','zzzzzzz

===========================================



bbbbbbbbbbb',to_date('16/10/25','RR/MM/DD'),'처리완료','111001');
Insert into QNA (NO,NAME,TITLE,CONTENT,TIMES,STATUS,ID) values (13,'이하나','adf','adf

===========================================
z',to_date('16/10/25','RR/MM/DD'),'처리완료','111001');
Insert into QNA (NO,NAME,TITLE,CONTENT,TIMES,STATUS,ID) values (14,'이하나','adf','adsfadsfasdfasdfasdf

===========================================

aaaaaaaa',to_date('16/10/25','RR/MM/DD'),'처리완료','111001');
Insert into QNA (NO,NAME,TITLE,CONTENT,TIMES,STATUS,ID) values (31,'교직원','aaa','asdf',to_date('16/11/04','RR/MM/DD'),'처리중','111002');
Insert into QNA (NO,NAME,TITLE,CONTENT,TIMES,STATUS,ID) values (30,'이하나','sdfsdf','sdfadfasdfasdf

===========================================zz',to_date('16/11/04','RR/MM/DD'),'처리완료','111001');
--------------------------------------------------------
--  Constraints for Table QNA
--------------------------------------------------------

  ALTER TABLE "QNA" MODIFY ("NAME" NOT NULL ENABLE);
 
  ALTER TABLE "QNA" MODIFY ("TITLE" NOT NULL ENABLE);
 
  ALTER TABLE "QNA" MODIFY ("CONTENT" NOT NULL ENABLE);
