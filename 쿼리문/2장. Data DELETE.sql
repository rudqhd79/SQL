-- �ʱ�ȭ
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

-- ����1. CUSTOMER ���̺��� ����ȣ�� 4���� ���� ����
DELETE FROM CUSTOMER WHERE ID = 4;

-- ����2. CUSTOMER ���̺��� �̸��� �Ѹ��� ���� ��� ����
DELETE FROM CUSTOMER WHERE NAME = '�Ѹ�'; --2��

-- ����3. CUSTOMER ���̺��� ������ ��ü ����
DELETE FROM CUSTOMER;

-- ����4. ORDERS ���̺��� ���� ��ȣ�� 1001�̰� ��������� ��ȣ�� 2002�� �ֹ��� ����
DELETE FROM ORDERS WHERE ORDER_ID = 1001 AND SALESMAN_ID = 2002;

-- ����1. BOOK ���̺��� ������ ����2�̰� ���ǻ簡 ��󸶴��� ������ ����
DELETE FROM BOOK WHERE TITLE = '����1' AND PUBLISHER = '��󸶴�';

-- ����2. BOOK ���̺��� ������ȣ�� 3�� ������ ����
DELETE FROM BOOK WHERE BOOK_NO = 3;

-- ����3. BOOK ���̺��� ������ ���� ������ ����
DELETE FROM BOOK WHERE PRICE IS NULL;

-- ����4. BOOK ���̺��� ��� ������ ����
DELETE FROM BOOK;

