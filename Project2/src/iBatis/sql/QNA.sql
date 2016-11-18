--------------------------------------------------------
--  ������ ������ - ������-11��-16-2016   
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
 

   COMMENT ON COLUMN "QNA"."NO" IS '���ǹ�ȣ';
 
   COMMENT ON COLUMN "QNA"."NAME" IS '�ۼ���';
 
   COMMENT ON COLUMN "QNA"."TITLE" IS '����';
 
   COMMENT ON COLUMN "QNA"."CONTENT" IS '����';
 
   COMMENT ON COLUMN "QNA"."TIMES" IS '�ۼ��ð�';
 
   COMMENT ON COLUMN "QNA"."STATUS" IS 'ó������';
 
   COMMENT ON COLUMN "QNA"."ID" IS '�ۼ����й�';
--REM INSERTING into QNA
--SET DEFINE OFF;
Insert into QNA (NO,NAME,TITLE,CONTENT,TIMES,STATUS,ID) values (16,'���ϳ�','qwqwqwqwqwqwq','qwqwqqwqwqwqwqwqwqwqw

===========================================


qwqwqwqqwqwqwqw',to_date('16/10/27','RR/MM/DD'),'ó���Ϸ�','111001');
Insert into QNA (NO,NAME,TITLE,CONTENT,TIMES,STATUS,ID) values (21,'���ϳ�','��������','��𼱰� ����

===========================================

��',to_date('16/11/01','RR/MM/DD'),'ó���Ϸ�','111001');
Insert into QNA (NO,NAME,TITLE,CONTENT,TIMES,STATUS,ID) values (25,'���ϳ�','�������','����

=========================================== �ò���!!',to_date('16/11/01','RR/MM/DD'),'ó���Ϸ�','111001');
Insert into QNA (NO,NAME,TITLE,CONTENT,TIMES,STATUS,ID) values (5,'aasaa','aasdfsd','���ϳ�

===========================================

111111111',to_date('16/10/25','RR/MM/DD'),'ó���Ϸ�','111001');
Insert into QNA (NO,NAME,TITLE,CONTENT,TIMES,STATUS,ID) values (32,'���ϳ�','�ڿ����а� ����� �ʹ� �����ϴ�.','��� �� ����ּ���',to_date('16/11/04','RR/MM/DD'),'ó����','111001');
Insert into QNA (NO,NAME,TITLE,CONTENT,TIMES,STATUS,ID) values (11,'���ϳ�','aaf','adf

===========================================

zzzzzzzzzz',to_date('16/10/25','RR/MM/DD'),'ó���Ϸ�','111001');
Insert into QNA (NO,NAME,TITLE,CONTENT,TIMES,STATUS,ID) values (1,'���ϳ�','�н� ���� �����','�н��� �ʹ��ʹ� ���̾����

===========================================

zzzzzzz

===========================================
llllllllllllllllllllllll',to_date('16/10/20','RR/MM/DD'),'ó���Ϸ�','111001');
Insert into QNA (NO,NAME,TITLE,CONTENT,TIMES,STATUS,ID) values (2,'�̵�','������ ���� ��..','���������� �ʹ� �ò����� �ϴ»������ �ʹ� ���ƿ�

===========================================

gyhugfyu

=========================================== �ʳ� �����ϼ��� ����',to_date('16/10/20','RR/MM/DD'),'ó���Ϸ�','111001');
Insert into QNA (NO,NAME,TITLE,CONTENT,TIMES,STATUS,ID) values (17,'���ϳ�','��������','���������� �������̰� �� ��������Ф� �߸� ��
���̾�~
===========================================',to_date('16/10/27','RR/MM/DD'),'ó���Ϸ�','111001');
Insert into QNA (NO,NAME,TITLE,CONTENT,TIMES,STATUS,ID) values (4,'�ּ�','�����ؿ�','2016-10-21 ���а� 203���� ���躸�µ� �������� �����ؿ�!

=========================================== �ʵ� ���ݾƿ�..����',to_date('16/10/21','RR/MM/DD'),'ó���Ϸ�','111001');
Insert into QNA (NO,NAME,TITLE,CONTENT,TIMES,STATUS,ID) values (22,'���ϳ�','��������','��� �ƽôº�??',to_date('16/11/01','RR/MM/DD'),'ó����','111001');
Insert into QNA (NO,NAME,TITLE,CONTENT,TIMES,STATUS,ID) values (26,'���ϳ�','zz11','zzz111

===========================================',to_date('16/11/02','RR/MM/DD'),'ó���Ϸ�','111001');
Insert into QNA (NO,NAME,TITLE,CONTENT,TIMES,STATUS,ID) values (15,'���ϳ�','adfsasdf','asdfadsfadsfadsfddddddddd

===========================================
�ƾ�',to_date('16/10/25','RR/MM/DD'),'ó���Ϸ�','111001');
Insert into QNA (NO,NAME,TITLE,CONTENT,TIMES,STATUS,ID) values (19,'���ϳ�','����','���ǽǿ��� �̻��� ������ ���ϴ�......
�ذ����ּ���.

===========================================',to_date('16/10/27','RR/MM/DD'),'ó���Ϸ�','111001');
Insert into QNA (NO,NAME,TITLE,CONTENT,TIMES,STATUS,ID) values (12,'���ϳ�','adsfzzz','zzzzzzz

===========================================



bbbbbbbbbbb',to_date('16/10/25','RR/MM/DD'),'ó���Ϸ�','111001');
Insert into QNA (NO,NAME,TITLE,CONTENT,TIMES,STATUS,ID) values (13,'���ϳ�','adf','adf

===========================================
z',to_date('16/10/25','RR/MM/DD'),'ó���Ϸ�','111001');
Insert into QNA (NO,NAME,TITLE,CONTENT,TIMES,STATUS,ID) values (14,'���ϳ�','adf','adsfadsfasdfasdfasdf

===========================================

aaaaaaaa',to_date('16/10/25','RR/MM/DD'),'ó���Ϸ�','111001');
Insert into QNA (NO,NAME,TITLE,CONTENT,TIMES,STATUS,ID) values (31,'������','aaa','asdf',to_date('16/11/04','RR/MM/DD'),'ó����','111002');
Insert into QNA (NO,NAME,TITLE,CONTENT,TIMES,STATUS,ID) values (30,'���ϳ�','sdfsdf','sdfadfasdfasdf

===========================================zz',to_date('16/11/04','RR/MM/DD'),'ó���Ϸ�','111001');
--------------------------------------------------------
--  Constraints for Table QNA
--------------------------------------------------------

  ALTER TABLE "QNA" MODIFY ("NAME" NOT NULL ENABLE);
 
  ALTER TABLE "QNA" MODIFY ("TITLE" NOT NULL ENABLE);
 
  ALTER TABLE "QNA" MODIFY ("CONTENT" NOT NULL ENABLE);
