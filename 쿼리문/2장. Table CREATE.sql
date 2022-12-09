-- �ʱ�ȭ
DROP TABLE EMP;
DROP TABLE CUSTOMER;
DROP TABLE ORDERS;
DROP TABLE CATEGORIES;
DROP TABLE LOCATION;
-- �ʱ�ȭ �� ----------------------------------------------------------------------------------------------------------------------------------------

-- ����1. ���� ���̺�
CREATE TABLE EMP (
    NO   NUMBER,
    NAME VARCHAR2(20),
    AGE  NUMBER
);

-- ����2. �� ���̺�
CREATE TABLE CUSTOMER (
    ID      NUMBER PRIMARY KEY,
    NAME    VARCHAR2(20) NOT NULL,
    ADDRESS VARCHAR2(100)
);

-- ����3. �ֹ� ���̺�
CREATE TABLE ORDERS (
    ORDER_ID    NUMBER PRIMARY KEY,
    SALESMAN_ID NUMBER,
    ORDER_DATE  DATE NOT NULL
);

-- ����1. ī�װ� ���̺�
CREATE TABLE CATEGORIES (
    CATEGORY_ID NUMBER PRIMARY KEY,
    CATEGORY_NAME VARCHAR2(100) NOT NULL
);
-- ����2. ��ġ ���̺�
CREATE TABLE LOCATION (
    LOCATION_ID NUMBER PRIMARY KEY,
    ADDRESS     VARCHAR2(255) NOT NULL,
    POSTAL_CODE VARCHAR2(20),
    CITY        VARCHAR2(50)
);
