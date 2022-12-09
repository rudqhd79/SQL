-- �ʱ�ȭ
SELECT 'DROP TABLE "' || TABLE_NAME || '" CASCADE CONSTRAINTS;' FROM user_tables;
DROP TABLE CUSTOMER;
DROP TABLE ORDERS;
DROP TABLE EMP;
CREATE TABLE CUSTOMER (
    ID      NUMBER PRIMARY KEY,
    NAME    VARCHAR2(20) NOT NULL,
    ADDRESS VARCHAR2(100)
);
CREATE TABLE ORDERS (
    ORDER_ID    NUMBER PRIMARY KEY,
    SALESMAN_ID NUMBER,
    ORDER_DATE  DATE NOT NULL
);
CREATE TABLE EMP (
    NO   NUMBER,
    NAME VARCHAR2(20),
    AGE  NUMBER
);
-- �ʱ�ȭ �� ----------------------------------------------------------------------------------------------------------------------------------------

-- ����1. CUSTOMER ���̺� ������ �߰�
INSERT INTO CUSTOMER(ID, NAME, ADDRESS) VALUES(1, '�Ѹ�', '��õ');
INSERT INTO CUSTOMER VALUES(2, '�Ѹ�', '��õ');

-- ����2. �ҿ����� ������ �߰�
INSERT INTO CUSTOMER(ID, NAME) VALUES(3, '��ġ');
INSERT INTO CUSTOMER VALUES(4, '�Ѹ�', '');
INSERT INTO CUSTOMER VALUES(5, 'ȫ�浿', NULL);

-- ����3. Ű���� �ߺ��Ǵ� ������ �߰��ϱ�
INSERT INTO CUSTOMER(ID, NAME) VALUES(3, 'Ȧ�浿'); -- ����

-- ����4. not null �÷��� ������ ������ �߰��ϱ�
INSERT INTO CUSTOMER(ID) VALUES(6); -- ����

-- ����5. ��¥ ������ �߰�
INSERT INTO ORDERS(ORDER_ID, SALESMAN_ID, ORDER_DATE) VALUES(1001, 2002, SYSDATE); --����ð�
INSERT INTO ORDERS(ORDER_ID, SALESMAN_ID, ORDER_DATE) VALUES(1002, 2002, '2022-08-27'); --Ư���ð�

-- ����6. Ư���������� ��¥ ������ �߰�
INSERT INTO ORDERS(ORDER_ID, SALESMAN_ID, ORDER_DATE) VALUES(1003, 2002, TO_DATE('2022-08-27', 'YYYY-MM-DD')); --Ư���ð�
INSERT INTO ORDERS(ORDER_ID, SALESMAN_ID, ORDER_DATE) VALUES(1004, 2002, TO_DATE('2022-08-27 10:10:10', 'YYYY-MM-DD HH24:MI:SS')); --Ư���ð�

-- ����1. BOOK ���̺� ����
CREATE TABLE BOOK (
    BOOK_NO NUMBER PRIMARY KEY, --������ȣ
    TITLE VARCHAR2(100) NOT NULL, --����
    PUBLISHER VARCHAR2(100), --���ǻ�
    PRICE NUMBER --����
);

-- ����2. BOOK ���̺� ������ �߰�
INSERT INTO BOOK (BOOK_NO, TITLE, PUBLISHER, PRICE) VALUES (1, '����1', '��󸶴�', 10000);
INSERT INTO BOOK (BOOK_NO, TITLE, PUBLISHER, PRICE) VALUES (2, '����2', '��󸶴�', 11000);
INSERT INTO BOOK (BOOK_NO, TITLE, PUBLISHER, PRICE) VALUES (3, '��������������Ʈ', '�Ѻ��̵��', 50000);
INSERT INTO BOOK (BOOK_NO, TITLE, PUBLISHER) VALUES (4, '�ڹ����α׷���', '��������');

-- ����3. EMP ���̺� ������ �߰�
INSERT INTO EMP VALUES (NULL,NULL,NULL);
INSERT INTO EMP (NO) VALUES (1);
INSERT INTO EMP (NAME, AGE) VALUES ('�Ѹ�', 10);
INSERT INTO EMP (NO, TITLE, AGE) VALUES (1, '�Ѹ�', 10);
INSERT INTO EMP (NO, TITLE, AGE) VALUES (1, '�Ѹ�', 10);

-- ����4. ����ó ���̺� ����� ������ �߰��ϱ�
 CREATE TABLE CONTACTS 
  (
    CONTACT_NO NUMBER PRIMARY KEY,
    FIRST_NAME  VARCHAR2( 255 ) NOT NULL,
    LAST_NAME   VARCHAR2( 255 ) NOT NULL,
    EMAIL       VARCHAR2( 255 ) NOT NULL,
    PHONE       VARCHAR2( 20 )         
  );
INSERT INTO CONTACTS VALUES (1,'��','����','flor.stone@gmail.com','010-3171-2341');
INSERT INTO CONTACTS VALUES (2,'��','�ÿ�','lavera.emerson@gmail.com','010-3171-4111');
INSERT INTO CONTACTS VALUES (3,'��','��ȣ','shyla.ortiz@gmail.com','010-3171-4126');
INSERT INTO CONTACTS VALUES (4,'��','����','jeni.levy@gmail.com','010-8121-2341');
INSERT INTO CONTACTS VALUES (5,'��','����','fern.head@gmail.com', NULL);

-- ����5. �޷� ���̺� ����� ������ �߰��ϱ�
CREATE TABLE cal (
    MONTH   VARCHAR2(10), 
    Day_week     VARCHAR2(10),
    DAY    VARCHAR2(10)
);
insert into cal values ('1','��','1');
insert into cal values ('1','��','2');
insert into cal values ('1','ȭ','3');
insert into cal values ('1','��','4');
insert into cal values ('1','��','5');
insert into cal values ('1','��','6');
insert into cal values ('1','��','7');

-- ����6. ������Ʈ ���̺� ����� ������ �߰��ϱ�
CREATE TABLE gift (
    no    NUMBER,
    name  VARCHAR2(20),
    price NUMBER
);
insert into gift values(1,'��ġ��Ʈ',100000);
insert into gift values(2,'��Ǫ��Ʈ',200000);
insert into gift values(3,'������ǰ��Ʈ',300000);
insert into gift values(4,'�ֹ��ǰ��Ʈ',400000);
insert into gift values(5,'��ǿ�������',500000);
insert into gift values(6,'LCD�����',600000);
insert into gift values(7,'��Ʈ��',700000);
insert into gift values(8,'������TV',800000);
insert into gift values(9,'�巳��Ź��',900000);
insert into gift values(10,'���ʹ������',1000000);




