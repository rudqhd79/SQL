-- �ʱ�ȭ
DROP TABLE CUSTOMER;
CREATE TABLE CUSTOMER (
    ID      NUMBER PRIMARY KEY,
    NAME    VARCHAR2(20) NOT NULL,
    ADDRESS VARCHAR2(100)
);
INSERT INTO CUSTOMER(ID, NAME, ADDRESS) VALUES(1, '�Ѹ�', '��õ');
INSERT INTO CUSTOMER(ID, NAME, ADDRESS) VALUES(2, '�Ѹ�', '����');
INSERT INTO CUSTOMER(ID, NAME, ADDRESS) VALUES(3, 'ȫ�浿','����');
INSERT INTO CUSTOMER(ID, NAME, ADDRESS) VALUES(4, '��ġ', '���ֵ�');
INSERT INTO CUSTOMER(ID, NAME, ADDRESS) VALUES(5, '�����', '');
DROP TABLE ORDERS;
CREATE TABLE ORDERS (
    ORDER_ID    NUMBER PRIMARY KEY,
    SALESMAN_ID NUMBER,
    ORDER_DATE  DATE NOT NULL
);
INSERT INTO ORDERS(ORDER_ID, SALESMAN_ID, ORDER_DATE) VALUES(1001, 2002, '2022-01-01');
INSERT INTO ORDERS(ORDER_ID, SALESMAN_ID, ORDER_DATE) VALUES(1002, 2002, '2022-01-02');
INSERT INTO ORDERS(ORDER_ID, SALESMAN_ID, ORDER_DATE) VALUES(1003, 2002, '2022-01-03');
INSERT INTO ORDERS(ORDER_ID, SALESMAN_ID, ORDER_DATE) VALUES(1004, 2002, '2022-01-04');
DROP TABLE BOOK;
CREATE TABLE BOOK (
    BOOK_NO NUMBER PRIMARY KEY, --������ȣ
    TITLE VARCHAR2(100) NOT NULL, --����
    PUBLISHER VARCHAR2(100), --���ǻ�
    PRICE NUMBER --����
);
INSERT INTO BOOK (BOOK_NO, TITLE, PUBLISHER, PRICE) VALUES (1, '����1', '��󸶴�', 10000);
INSERT INTO BOOK (BOOK_NO, TITLE, PUBLISHER, PRICE) VALUES (2, '����2', '��󸶴�', 11000);
INSERT INTO BOOK (BOOK_NO, TITLE, PUBLISHER, PRICE) VALUES (3, '��������������Ʈ', '�Ѻ��̵��', 50000);
INSERT INTO BOOK (BOOK_NO, TITLE, PUBLISHER, PRICE) VALUES (4, '�ڹ����α׷���', '��������', 25000);
 DROP TABLE CONTACTS;
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
INSERT INTO CONTACTS VALUES (4,'��','����','jeni.levy@naver.com','010-8121-2341');
INSERT INTO CONTACTS VALUES (5,'��','����','fern.head@naver.com', NULL);
DROP TABLE GIFT;
CREATE TABLE GIFT (
    NO    NUMBER,
    TYPE  VARCHAR2(20),
    NAME  VARCHAR2(20),
    PRICE NUMBER
);
INSERT INTO GIFT VALUES(1,'��ǰ','��ġ��Ʈ',100000);
INSERT INTO GIFT VALUES(2,'��Ȱ��ǰ','��Ǫ��Ʈ',200000);
INSERT INTO GIFT VALUES(3,'��Ȱ��ǰ','������ǰ��Ʈ',300000);
INSERT INTO GIFT VALUES(4,'��Ȱ��ǰ','�ֹ��ǰ��Ʈ',400000);
INSERT INTO GIFT VALUES(5,'����','��ǿ�������',500000);
INSERT INTO GIFT VALUES(6,'������ǰ','LCD�����',600000);
INSERT INTO GIFT VALUES(7,'������ǰ','��Ʈ��',700000);
INSERT INTO GIFT VALUES(8,'������ǰ','������TV',800000);
INSERT INTO GIFT VALUES(9,'������ǰ','�巳��Ź��',900000);
INSERT INTO GIFT VALUES(10,'������ǰ','���ʹ������',1000000);
-- �ʱ�ȭ �� -----------------------------

-- ����1. CUSTOMER ���̺� ��ü ��ȸ
SELECT * FROM CUSTOMER;

-- ����2. �÷� ������ �����Ͽ� ��ü ��ȸ 
SELECT NAME, ID, ADDRESS  FROM CUSTOMER;

-- ����1. �������Ͽ� ��ü ��ȸ
SELECT * FROM CUSTOMER ORDER BY ID ASC;

-- ����2. �������Ͽ� ��ü ��ȸ
SELECT * FROM CUSTOMER ORDER BY ID DESC;

-- ����1. GIFT ���̺��� �׷�ȭ�Ͽ� ���� ��ȸ 
SELECT TYPE FROM GIFT GROUP BY TYPE;

-- ����2. �׷�ȭ�Ͽ� ����� ������ �Ǽ�, �հ� ��ȸ 
SELECT TYPE, COUNT(NAME) AS COUNT FROM GIFT GROUP BY TYPE; --�Ǽ�
SELECT TYPE, SUM(price) AS SUM FROM GIFT GROUP BY TYPE; --�հ�

-- �� ������
SELECT * FROM CUSTOMER WHERE ID=1;

SELECT * FROM CUSTOMER WHERE ID>1;

SELECT * FROM CUSTOMER WHERE ID<4;

SELECT * FROM CUSTOMER WHERE ID>=1;

SELECT * FROM CUSTOMER WHERE ID<=4;

SELECT * FROM CUSTOMER WHERE ID!=1;

-- �� ������
SELECT * FROM CUSTOMER WHERE NAME='�Ѹ�' AND ADDRESS='����';

SELECT * FROM CUSTOMER WHERE  ADDRESS='��õ' OR ADDRESS='����';

SELECT * FROM CUSTOMER WHERE NOT ADDRESS='����' ;

--��� ������

SELECT ORDER_ID + (SALESMAN_ID * ORDER_ID) FROM ORDERS;
SELECT ORDER_ID * SALESMAN_ID AS HAP FROM ORDERS;
SELECT ORDER_ID / SALESMAN_ID AS NA FROM ORDERS;
SELECT ORDER_ID + SALESMAN_ID AS PLUS FROM ORDERS;
SELECT ORDER_ID - SALESMAN_ID AS MINUS FROM ORDERS;

--�ռ� ������

SELECT 'SQL' || '������' FROM DUAL;
SELECT '�̸�:' || NAME || '�Դϴ�.' AS INTRO FROM CUSTOMER;

-- ���� ������
SELECT * FROM CUSTOMER WHERE ID BETWEEN 2 AND 4; 

SELECT * FROM CUSTOMER WHERE ID NOT BETWEEN 2 AND 4; 

SELECT * FROM CUSTOMER WHERE ID IN(1,2,3);

SELECT * FROM CUSTOMER WHERE ID NOT IN(1,2,3);

-- ���� ������
SELECT * FROM CUSTOMER WHERE NAME LIKE '��%';

SELECT * FROM CUSTOMER WHERE NAME LIKE '%��%';

SELECT * FROM CUSTOMER WHERE NAME LIKE '%ġ';

-- �� üũ ������
SELECT * FROM CUSTOMER WHERE ADDRESS IS NULL;

SELECT * FROM CUSTOMER WHERE ADDRESS IS NOT NULL;

-- ��/�� ------------------------------------------------------------------------
-- ����1. BOOK ���̺��� ������ 11000��, 25000�� ������ ���� ã���ÿ�
SELECT * FROM BOOK WHERE PRICE = 11000;
SELECT * FROM BOOK WHERE PRICE = 25000;

-- ����2. BOOK ���̺��� 30000�� ���� ��� ������ ã���ÿ�
SELECT * FROM BOOK WHERE PRICE >30000;

-- ����3. BOOK ���̺��� 10000�̻� 30000�� ������ ������ ã���ÿ�
SELECT * FROM BOOK WHERE PRICE >=10000 AND PRICE <= 30000;

-- ����4. BOOK ���̺��� ���ǻ簡 �Ѻ��̵�� �Ǵ� ���������� ������ ã���ÿ�
SELECT * FROM BOOK WHERE PUBLISHER ='�Ѻ��̵��' OR PUBLISHER = '��������';

-- ����5. ORDERS ���̺��� 2020�� 1�� 2�� ���Ŀ� ���� �ֹ��� ã���ÿ�
SELECT * FROM ORDERS WHERE ORDER_DATE > '2022-01-02';

-- ����6. ORDERS ���̺��� 2020�� 1�� 1�Ͽ� ���� �ֹ��� ã���ÿ�
SELECT * FROM ORDERS WHERE ORDER_DATE = '2022-01-01';
-- ���� ------------------------------------------------------------------------
-- ����1. BOOK ���̺��� 10000�̻� 30000������ ������ ������ ã���ÿ�
SELECT * FROM BOOK WHERE PRICE BETWEEN 10000 AND 30000; 

-- ����2. CONTACTS ���̺��� �达�� �־� ���� ���� ����� ã���ÿ�
SELECT * FROM CONTACTS WHERE FIRST_NAME IN ('��','��');

-- ����3. GIFT ���̺��� ��Ʈ��, ������TV, ���ʹ������ ã���ÿ�
SELECT * FROM GIFT WHERE NAME IN ('��Ʈ��','������TV','���ʹ������');

-- ����4. GIFT ���̺��� ��Ȱ��ǰ�̰ų� ������ ������ ã���ÿ�
SELECT * FROM GIFT WHERE TYPE IN ('��Ȱ��ǰ','����');

-- ����5. GIFT ���̺��� ������ 300000���� 600000�� ������ ������ ã���ÿ�
SELECT * FROM GIFT WHERE PRICE BETWEEN 300000 AND 600000;

-- ����/�� ------------------------------------------------------------------------
-- ����1. CONTACTS ���̺��� ��ȭ��ȣ�� 2341�� ������ ����� ã���ÿ�
SELECT * FROM CONTACTS WHERE PHONE LIKE '%2341';

-- ����2. CONTACTS ���̺��� ��ȭ��ȣ�� 3171�� �����ϴ� ����� ã���ÿ�
SELECT * FROM CONTACTS WHERE PHONE LIKE '%3171%';

-- ����3. CONTACTS ���̺��� �̸����� ���̹��� ����ϸ鼭 ��ȭ��ȣ�� ���� ����� ã���ÿ�
SELECT * FROM CONTACTS WHERE EMAIL LIKE '%@naver.com%' AND PHONE IS NULL;

-- ����4. GIFT ���̺��� �̸��� ��ǰ�� ���Ե� ������ ã���ÿ�
SELECT * FROM GIFT WHERE NAME LIKE '%��ǰ%';

-- ����5. GIFT ���̺��� �̸��� ��Ʈ�� �����鼭 300000�������� ������ ã���ÿ�
SELECT * FROM GIFT WHERE NAME LIKE '%��Ʈ' AND PRICE <=300000;
