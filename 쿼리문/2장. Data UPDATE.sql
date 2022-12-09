-- �ʱ�ȭ
DROP TABLE CONTACTS;
DROP TABLE CAL;
DROP TABLE GIFT;

DELETE CUSTOMER;
DELETE ORDERS;
DELETE BOOK;

INSERT INTO CUSTOMER(ID, NAME, ADDRESS) VALUES(1, '�Ѹ�', '��õ');
INSERT INTO CUSTOMER(ID, NAME, ADDRESS) VALUES(2, '�Ѹ�', '');
INSERT INTO CUSTOMER(ID, NAME, ADDRESS) VALUES(3, 'ȫ�浿', NULL);
INSERT INTO CUSTOMER(ID, NAME) VALUES(4, '��ġ');
INSERT INTO ORDERS(ORDER_ID, SALESMAN_ID, ORDER_DATE) VALUES(1001, 2002, SYSDATE);
INSERT INTO ORDERS(ORDER_ID, SALESMAN_ID, ORDER_DATE) VALUES(1002, 2002, SYSDATE);
INSERT INTO BOOK (BOOK_NO, TITLE, PUBLISHER, PRICE) VALUES (1, '����1', '��󸶴�', 10000);
INSERT INTO BOOK (BOOK_NO, TITLE, PUBLISHER, PRICE) VALUES (2, '����2', '��󸶴�', 11000);
INSERT INTO BOOK (BOOK_NO, TITLE, PUBLISHER, PRICE) VALUES (3, '��������������Ʈ', '�Ѻ��̵��', 50000);
INSERT INTO BOOK (BOOK_NO, TITLE, PUBLISHER) VALUES (4, '�ڹ����α׷���', '��������');
-- �ʱ�ȭ �� ----------------------------------------------------------------------------------------------------------------------------------------

-- ����1. CUSTOMER ���̺��� ����ȣ�� 2���� ���� �ּҸ� ����  
UPDATE CUSTOMER SET ADDRESS = '����' WHERE ID = 2;

-- ����2. CUSTOMER ���̺��� ���̵� 3���� ���� �̸��� �ּҸ� ����  
UPDATE CUSTOMER SET NAME = '����', ADDRESS = '���ֵ�' WHERE ID = 3;

-- ����3. ORDERS ���̺��� �ֹ���ȣ�� 1002�� �ֹ��� �ð��� ����ð����� ����
UPDATE ORDERS SET ORDER_DATE = SYSDATE WHERE ORDER_ID = 1002;

-- ����1. BOOK ���̺��� ������ȣ�� 4�� ������ ������ �ڹٰ��ߵ����� ����
UPDATE BOOK SET TITLE = '�ڹٰ��ߵ���' WHERE BOOK_NO = 4;

-- ����2. BOOK ���̺��� ���ǻ簡 '��󸶴�'�� ������ ������ ��� 30000������ ����
UPDATE BOOK SET PRICE = 30000 WHERE PUBLISHER = '��󸶴�';

-- ����3. CUSTOMER ���̺��� ��� ���� �̸��� �Ѹ�, �ּҸ� ��õ���� ����
UPDATE CUSTOMER SET  NAME = '�Ѹ�', ADDRESS = '��õ';

