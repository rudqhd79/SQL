--����1. emp ���̺��� �����ȣ, ����̸�, ������ ����Ͻÿ�.
SELECT EMPNO, ENAME, SAL FROM EMP;

--����2. emp ���̺��� �����ȣ, ����̸�, ����, ������ ���ϰ� ���� �÷����� �����ȣ, ����̸�, ����, �������� ����Ͻÿ�.
SELECT EMPNO AS �����ȣ, ENAME AS ����̸�, SAL AS ����, SAL*12 AS ���� FROM EMP;

--����3. employees ���̺��� ��� �������� �޿��� $300���� ��Ű�� ���ؼ� ���� �����ڸ� ����ϰ� ����� �̸��� SALARY, SALARY+300�� ��� �մϴ�.
SELECT FIRST_NAME, LAST_NAME, SALARY , SALARY+300 FROM EMPLOYEES;

--����4. EMPLOYEES ���̺��� �̸�(last_name + first_name)�� ������ "KING: 1 Year salary = 60000" �������� ����Ͽ���. 
SELECT LAST_NAME || ' ' || FIRST_NAME AS �̸�, LAST_NAME || ' ' || FIRST_NAME || ': 1 Year salary = '||  SALARY*12 AS ���� FROM EMPLOYEES;

--����5. EMPLOYEES ���̺��� �Ի����ڰ� 1995�� 1�� 1�� ���Ŀ� �Ի��� ����� ������ �����ȣ, ����, ������, �޿�, �Ի�����, �μ���ȣ�� ����϶�
SELECT EMPLOYEE_ID AS �����ȣ, LAST_NAME AS �̸�, JOB_ID AS ������,  SALARY AS �޿�, HIRE_DATE AS �Ի�����, DEPARTMENT_ID AS �μ���ȣ FROM EMPLOYEES;

--����6. EMPLOYEES ���̺��� �޿��� 3000���� 5000������ ������ ����, ������, �޿�, �μ���ȣ�� ����϶�.
SELECT LAST_NAME AS �̸�, JOB_ID AS ������,  SALARY AS �޿�, DEPARTMENT_ID AS �μ���ȣ FROM EMPLOYEES WHERE SALARY BETWEEN 3000 AND 5000;

--����7. EMPLOYEES ���̺��� �����ȣ�� 144, 176, 200 �� ����� ������ �����ȣ, ����, ������, �޿�, �Ի����ڸ� ����϶�.
SELECT EMPLOYEE_ID AS �����ȣ, LAST_NAME AS �̸�, JOB_ID AS ������,  SALARY AS �޿�, HIRE_DATE AS �Ի����� FROM EMPLOYEES WHERE EMPLOYEE_ID IN (144, 176, 200);

--����8.emp ���̺� ���� ������ SALESMAN �Ǵ� MANAGER�̸鼭 �޿��� 1,600, 2,975 �Ǵ� 2,850�� �ƴ� ��� ����� �̸�, ���� �� �޿��� ǥ���Ͻÿ�.
SELECT ENAME AS ����̸�, JOB || ', ' || SAL AS ��������_�޿� FROM EMP;

--����9.EMPLOYEES ���̺��� �μ����� �ο���, ��� �޿�, �����޿�, �ְ�޿�, �޿��� ���� ���Ͽ� ����϶�.
SELECT COUNT(EMPLOYEE_ID) AS �ο���, AVG(SALARY) AS ��ձ޿�, MIN(SALARY) AS �����޿�, MAX(SALARY) AS �ְ�޿�, SUM(SALARY) AS �޿�_�Ѿ� FROM EMPLOYEES GROUP BY DEPARTMENT_ID;

--���� 10. EMPLOYEES ���̺��� �μ� �ο��� 4���� ���� �μ��� �μ���ȣ, �ο���, �޿��� ���� ���Ͽ� ����Ͽ���(GROUP BY, HAVING)
SELECT DEPARTMENT_ID AS �μ���ȣ, COUNT(EMPLOYEE_ID) AS �ο���, SUM(SALARY) AS �޿�_�Ѿ� FROM EMPLOYEES GROUP BY DEPARTMENT_ID HAVING COUNT(EMPLOYEE_ID) >= 4;

--���� 11. EMPLOYEES ���̺��� ��ü ������ 10000�� �ʰ��ϴ� �� ������ ���ؼ� ������ ���޿� �հ踦 ����϶�. �� job_id�� 'SA '�� �����ϴ� ������ �����ϰ� �� �޿� �հ�� ����(��������) �϶�. 


--����12. emp���̺��� ����̸� �� A�� ���Ե� ����̸��� ���ϰ� �� �̸� �� �տ��� 3�ڸ� �����Ͽ� ���
SELECT SUBSTR(ENAME, 1, 3)  AS ����̸� FROM EMP WHERE ENAME LIKE '%A%';

--���⼭ ���� join����

--����13. ��� ����� �̸�, �μ���ȣ, �μ��̸��� ǥ���Ͻÿ�. (emp, dept)
SELECT T1.ENAME AS ,T2.DNAME, T1.DEPTNO
FROM EMP T1
JOIN DEPT T2
ON (T1.DEPTNO = T2.DEPTNO);

--����14. ������ MANAGER�� ����� ������ �̸�, ����, �μ���, �ٹ��� ������ ����Ͻÿ�. (emp, dept)
SELECT T1.ENAME, T1.JOB, T2.DNAME, T2.LOC
FROM EMP T1
JOIN DEPT T2
ON (T1.DEPTNO = T2.DEPTNO AND T1.JOB = 'MANAGER');

--����15. Ŀ�̼�(emp���̺��� comm �÷��̿�)�� �ް� �޿��� 1,600�̻��� ����� ����̸�, �μ���, �ٹ����� ����Ͻÿ�.( emp, dept)
SELECT T1.ENAME, T2.DNAME, T2.LOC
FROM EMP T1
JOIN DEPT T2
ON (T1.DEPTNO = T2.DEPTNO AND T1.SAL+T1.COMM >= 1600);

--����16. �ٹ����� CHICAGO�� ��� ����� �̸�,����,�μ���ȣ �� �μ��̸��� ǥ���Ͻÿ�. ( emp, dept)
SELECT T1.ENAME, T1.JOB, T2.DEPTNO || ', ' || T2.DNAME, T2.LOC
FROM EMP T1
JOIN DEPT T2
ON (T1.DEPTNO = T2.DEPTNO AND T2.LOC = 'CHICAGO');

--���⼭ ���� �������� ����

--����17. emp���̺� ���� �����ȣ�� 7900�� ����� ���� ��¥�� �Ի��� ����� �̸��� �Ի����� ����Ͻÿ�.
SELECT ENAME, HIREDATE FROM EMP WHERE HIREDATE = (SELECT HIREDATE FROM EMP WHERE EMPNO = 7900);

--����18. emp���̺� ���� ���ӻ��(mgr)�� KING�� ��� ����� �̸��� �޿��� ����Ͻÿ�. EMPNO ���
SELECT ENAME, SAL FROM EMP WHERE MGR = (SELECT MGR FROM EMP WHERE ENAME = 'KING');

--����19. EMPLOYEES ���̺��� (�޿��� ���)���� ���� ����� ������ �����ȣ,�̸�,������,�޿�,�μ���ȣ�� ����Ͽ���
SELECT EMPLOYEE_ID AS �����ȣ, FIRST_NAME || ' ' || LAST_NAME AS �̸�, JOB_ID AS ������, SALARY AS �޿�, DEPARTMENT_ID AS �μ���ȣ FROM EMPLOYEES WHERE SALARY < (SELECT AVG(SALARY) FROM EMPLOYEES);

--����20. EMPLOYEES ���̺��� (Kochhar�� �޿�)���� ���� ����� ������ �����ȣ,�̸�,������,�޿��� ����϶�.
SELECT EMPLOYEE_ID AS �����ȣ, FIRST_NAME || ' ' || LAST_NAME AS �̸�, JOB_ID AS ������, SALARY AS �޿� FROM EMPLOYEES WHERE SALARY > (SELECT SALARY FROM EMPLOYEES WHERE LAST_NAME = 'Kochhar');

--���� 21. emp���̺� ���� (BLAKE�� ���� �μ�)�� �ִ� ������� �̸��� �Ի����� ���ϴµ� BLAKE�� �����ϰ� ����Ͻÿ�.(BLAKE�� �������� �� ����
SELECT ENAME AS ����̸�, HIREDATE AS �Ի��� FROM EMP WHERE DEPTNO  = (SELECT DEPTNO FROM EMP WHERE ENAME = 'BLAKE') AND ENAME != 'BLAKE';
