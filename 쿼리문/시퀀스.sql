-- ������ ��
CREATE SEQUENCE BOARD_SEQ
INCREMENT BY 1  -- �������� 1
START WITH 1    -- ���۰� 1
MAXVALUE 1000 -- �ִ밪 1000
MINVALUE 1 --  �ּҰ� 1
NOCYCLE -- �⺻���� NOCYCLE. CYCLE�� �����ϸ� �ִ밪�� ���������� �ٽ� ��ȯ

-- ������ ����
DROP SEQUENCE BOARD_SEQ;

select?BOARD_SEQ.CURRVAL FROM DUAL

select BOARD_SEQ.nextval FROM DUAL
 
 