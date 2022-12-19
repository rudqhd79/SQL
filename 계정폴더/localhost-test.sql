--프로시저란? : 자바에서의 메소드 같은 개념이다.
--따로 저장하여 쓰고 싶을 때 쓸 수 있다.

--GIFT 테이블 사용

--CREATE OR REPLACE PROCEDURE EX_PROC (
--    IN_TYPE IN VARCHAR2,    --타입이 IN VARCHAR2
--    IN_NAME IN VARCHAR2     --타입이 IN VARCHAR2
--) IS PRICE NUMBER := 10000; --변수를 하나 선언 (IS에는 변수를 선언하고)
--
--BEGIN   --(BEGIN에는 END 전에 넣는다)
--
--INSERT INTO GIFT VALUES (11, IN_TYPE, IN_NAME, PRICE);
--
--COMMIT;
--
--END EX_PROC;

EXEC EX_PROC('가전제품', 'TV'); --EX_PROC()를 실행해주는것이다

SELECT * FROM GIFT;