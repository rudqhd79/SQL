--���ν�����? : �ڹٿ����� �޼ҵ� ���� �����̴�.
--���� �����Ͽ� ���� ���� �� �� �� �ִ�.

--GIFT ���̺� ���

--CREATE OR REPLACE PROCEDURE EX_PROC (
--    IN_TYPE IN VARCHAR2,    --Ÿ���� IN VARCHAR2
--    IN_NAME IN VARCHAR2     --Ÿ���� IN VARCHAR2
--) IS PRICE NUMBER := 10000; --������ �ϳ� ���� (IS���� ������ �����ϰ�)
--
--BEGIN   --(BEGIN���� END ���� �ִ´�)
--
--INSERT INTO GIFT VALUES (11, IN_TYPE, IN_NAME, PRICE);
--
--COMMIT;
--
--END EX_PROC;

EXEC EX_PROC('������ǰ', 'TV'); --EX_PROC()�� �������ִ°��̴�

SELECT * FROM GIFT;