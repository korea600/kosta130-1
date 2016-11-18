--------------------------------------------------------
--  ������ ������ - ������-11��-16-2016   
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
 

   COMMENT ON COLUMN "NOTICE"."NO" IS '��ȣ';
 
   COMMENT ON COLUMN "NOTICE"."NAME" IS '�ۼ����̸�';
 
   COMMENT ON COLUMN "NOTICE"."TITLE" IS '����';
 
   COMMENT ON COLUMN "NOTICE"."CONTENT" IS '����';
 
   COMMENT ON COLUMN "NOTICE"."GDATE" IS '�ø���¥';
 
   COMMENT ON COLUMN "NOTICE"."CHECKED" IS '�л�,���';
--REM INSERTING into NOTICE
--SET DEFINE OFF;
Insert into NOTICE (NO,NAME,TITLE,CONTENT,GDATE,CHECKED) values (36,'������','����������!!','��',to_date('16/11/01','RR/MM/DD'),'�л�');
Insert into NOTICE (NO,NAME,TITLE,CONTENT,GDATE,CHECKED) values (8,'������','LGä��','LGä���ѵ�',to_date('16/10/20','RR/MM/DD'),'���');
Insert into NOTICE (NO,NAME,TITLE,CONTENT,GDATE,CHECKED) values (2,'������','����Ⱓ','ddddd',to_date('16/10/24','RR/MM/DD'),'�л�');
Insert into NOTICE (NO,NAME,TITLE,CONTENT,GDATE,CHECKED) values (4,'������','werwer','kllllllll33333',to_date('16/10/25','RR/MM/DD'),'�л�');
Insert into NOTICE (NO,NAME,TITLE,CONTENT,GDATE,CHECKED) values (9,'������','�ڽ�Ÿä��','�ڽ��� ä��',to_date('16/10/26','RR/MM/DD'),'���');
Insert into NOTICE (NO,NAME,TITLE,CONTENT,GDATE,CHECKED) values (5,'������','��ȭä��','��ȭ�� ä��!',to_date('16/10/25','RR/MM/DD'),'���');
Insert into NOTICE (NO,NAME,TITLE,CONTENT,GDATE,CHECKED) values (6,'������','C���','tdfdfdfdf',to_date('16/10/26','RR/MM/DD'),'�л�');
Insert into NOTICE (NO,NAME,TITLE,CONTENT,GDATE,CHECKED) values (42,'������','111','1111',to_date('16/11/04','RR/MM/DD'),'���');
Insert into NOTICE (NO,NAME,TITLE,CONTENT,GDATE,CHECKED) values (39,'������','���?','�Ҽ��հٳ�??',to_date('16/11/02','RR/MM/DD'),'���');
Insert into NOTICE (NO,NAME,TITLE,CONTENT,GDATE,CHECKED) values (15,'������','sssssssssssssss','sssssssssdddddddddddddd',to_date('16/10/29','RR/MM/DD'),'�л�');
Insert into NOTICE (NO,NAME,TITLE,CONTENT,GDATE,CHECKED) values (11,'������','�谡���Ŵϴ�','��� ���ä�������������',to_date('16/10/26','RR/MM/DD'),'���');
Insert into NOTICE (NO,NAME,TITLE,CONTENT,GDATE,CHECKED) values (10,'������','�����','��ǡ',to_date('16/10/26','RR/MM/DD'),'���');
Insert into NOTICE (NO,NAME,TITLE,CONTENT,GDATE,CHECKED) values (13,'������','asdfasdf','adfasdf',to_date('16/10/29','RR/MM/DD'),'�л�');
Insert into NOTICE (NO,NAME,TITLE,CONTENT,GDATE,CHECKED) values (14,'������','assssssssus','ssssssssssssssssssss',to_date('16/10/29','RR/MM/DD'),'�л�');
Insert into NOTICE (NO,NAME,TITLE,CONTENT,GDATE,CHECKED) values (34,'������','�����׽�Ʈ','�׽�Ʈ �³�?',to_date('16/11/01','RR/MM/DD'),'���');
Insert into NOTICE (NO,NAME,TITLE,CONTENT,GDATE,CHECKED) values (35,'������','�л����?','������',to_date('16/11/01','RR/MM/DD'),'�л�');
--------------------------------------------------------
--  Constraints for Table NOTICE
--------------------------------------------------------

  ALTER TABLE "NOTICE" MODIFY ("NAME" NOT NULL ENABLE);
 
  ALTER TABLE "NOTICE" MODIFY ("TITLE" NOT NULL ENABLE);
 
  ALTER TABLE "NOTICE" MODIFY ("CONTENT" NOT NULL ENABLE);
 
  ALTER TABLE "NOTICE" MODIFY ("GDATE" NOT NULL ENABLE);
