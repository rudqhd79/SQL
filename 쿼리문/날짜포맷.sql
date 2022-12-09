SELECT

--��¥ ����
TO_CHAR(SYSDATE,'YYYYMMDD'),--20191130
TO_CHAR(SYSDATE,'YYYY-MM-DD'),--2019-11-30
TO_CHAR(SYSDATE,'YYYY/MM/DD'),--2019/11/30
TO_CHAR(SYSDATE,'YYYY'),--2019
TO_CHAR(SYSDATE,'YY'),--19
TO_CHAR(SYSDATE,'MM'),--11
TO_CHAR(SYSDATE,'MON'),--11��
TO_CHAR(SYSDATE,'D'),--7 (������ ���� 1~7�� ǥ��(�Ͽ��� = 1)
TO_CHAR(SYSDATE,'DD'),--30
TO_CHAR(SYSDATE,'DDD'),--334 (1����� �� ��)
TO_CHAR(SYSDATE,'DAY'),--����� (���� ǥ��)
TO_CHAR(SYSDATE,'DY'), --�� (������ ���ڸ��� ǥ��)
TO_CHAR(SYSDATE,'WW'), -- 48 (�ϳ� ���� �ָ� 00 ~ 53 ���·� ǥ��)
TO_CHAR(SYSDATE,'W'), -- 5 (�Ѵ� ���� ���° ��)
TO_CHAR(SYSDATE,'DL'),--2019�� 11�� 30�� �����

--�簣 ����
TO_CHAR(SYSDATE,'AM'),--����
TO_CHAR(SYSDATE,'PM'),--����
TO_CHAR(SYSDATE,'HH'), --10 (�ð��� 0 ~ 12 ���·� ǥ��)
TO_CHAR(SYSDATE,'HH24'), --20 (�ð��� 0 ~ 24 ���·� ǥ��)
TO_CHAR(SYSDATE,'MI'), --03 (���� 00 ~ 59 ���·� ǥ��)
TO_CHAR(SYSDATE,'SS'), --10 (���� 01 ~ 59 ���·� ǥ��)

--���� ����
TO_CHAR(SYSDATE,'CC'), --21 (����)
TO_CHAR(SYSDATE,'BC') --����

FROM DUAL;
