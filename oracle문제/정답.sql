--����1. emp ���̺��� �����ȣ, ����̸�, ������ ����Ͻÿ�.
select empno, ename, sal from emp;

--����2. emp ���̺��� �����ȣ, ����̸�, ����, ������ ���ϰ� ���� �÷����� �����ȣ, ����̸�, ����, �������� ����Ͻÿ�.
select empno as "�����ȣ" , ename as "����̸�" , sal as "����" , sal*12 as "����" from emp;

--����3. employees ���̺��� ��� �������� �޿��� $300���� 
--��Ű�� ���ؼ� ���� �����ڸ� ����ϰ� ����� �̸��� SALARY, SALARY+300�� ��� �մϴ�.
select last_name || first_name, salary, salary+300 from employees;

--����4. EMPLOYEES ���̺��� �̸�(last_name + first_name)�� ������ "KING: 1 Year salary = 60000" �������� ����Ͽ���. 
select last_name || first_name || 'King: 1Year salary * ' || salary * 12  from employees;

--����5. EMPLOYEES ���̺��� �Ի����ڰ� 1995�� 1�� 1�� ���Ŀ� �Ի��� ����� ������ �����ȣ, ����, ������, �޿�, �Ի�����, �μ���ȣ�� ����϶�
select employee_id, last_name || ' ' || first_name, job_id, salary, hire_date, department_id from employees
where hire_date >= '95/01/01';
-- where hire_date > to_date('950101');
-- where hire_date like '95%';
-- where hire_date > to_date('19950101', 'YYYYMMDD');

--����6. EMPLOYEES ���̺��� �޿��� 3000���� 5000������ ������ ����, ������, �޿�, �μ���ȣ�� ����϶�.
select * from employees;
select last_name || ' ' || first_name, salary, department_id from employees
where salary BETWEEN 3000 AND 5000;
-- where salary >= 3000 and salary <= 5000;

--����7. EMPLOYEES ���̺��� �����ȣ�� 144, 176, 200 �� ����� ������ �����ȣ, ����, ������, �޿�, �Ի����ڸ� ����϶�.
select employee_id, last_name || ' ' || first_name, job_id, salary, hire_date from employees
where employee_id in(144, 176, 200);

--����8.emp ���̺� ���� ������ SALESMAN �Ǵ� MANAGER�̸鼭 �޿��� 1600, 2975, 2850�� �ƴ� ��� ����� �̸�, ���� �� �޿��� ǥ���Ͻÿ�.
select * from emp;
select ename, job, sal from emp
where (job = 'SALESMAN' OR job = 'MANAGER') AND sal not in('1600','2975','2850'); 

--����9.EMPLOYEES ���̺��� �μ����� �ο���, ��� �޿�, �����޿�, �ְ�޿�, �޿��� ���� ���Ͽ� ����϶�.
select department_id as "�μ���", count(department_id), 
round(avg(salary),3), min(salary), max(salary), sum(salary) 
from employees
group by department_id
order by department_id desc;

--���� 10. EMPLOYEES ���̺��� �μ� �ο��� 4���� ���� �μ��� �μ���ȣ, �ο���, �޿��� ���� ���Ͽ� ����Ͽ���(GROUP BY, HAVING)
select  count(*), sum(salary) from employees 
group by department_id
having count(*) > 4;

--���� 11. EMPLOYEES ���̺��� ��ü ������ 10000�� �ʰ��ϴ� �� ������ ���ؼ� ������ ���޿� �հ踦 ����϶�. �� job_id�� 'SA '�� �����ϴ� ������ �����ϰ� �� �޿� �հ�� ����(��������) �϶�. 
select job_id, sum(salary) from employees
where job_id not like 'SA%'
group by job_id
having sum(salary) > 10000
order by sum(salary) desc;

--����12. emp���̺��� ����̸� �� A�� ���Ե� ����̸��� ���ϰ� �� �̸� �� �տ��� 3�ڸ� �����Ͽ� ���
select substr(ename, 1,3) from emp where ename like '%A%';



--���⼭ ���� join����

--����13. ��� ����� �̸�, �μ���ȣ, �μ��̸��� ǥ���Ͻÿ�. (emp, dept)
select e.ename, e.deptno, d.deptno, d.dname
from emp e, dept d
where e.deptno = d.deptno;

--����14. ������ MANAGER�� ����� ������ �̸�, ����, �μ���, �ٹ��� ������ ����Ͻÿ�. ( emp, dept)
SELECT e.ename, e.job, d.dname, d.loc
FROM emp e, dept d
WHERE e.deptno = d.deptno
    AND e.job = 'MANAGER';

--����15. Ŀ�̼�(emp���̺��� comm �÷��̿�)�� �ް� �޿��� 1,600�̻��� ����� ����̸�, �μ���, �ٹ����� ����Ͻÿ�.( emp, dept)
SELECT e.ename, d.dname, d.loc
FROM emp e, dept d
WHERE e.deptno = d.deptno
    AND e.comm IS NOT NULL AND e.comm != 0
    AND e.sal >= 1600;

--����16. �ٹ����� CHICAGO�� ��� ����� �̸�,����,�μ���ȣ �� �μ��̸��� ǥ���Ͻÿ�. ( emp, dept)
SELECT e.ename, e.job, e.deptno, d.deptno, d.loc
FROM emp e, dept d
WHERE e.deptno = d.deptno
    AND d.loc = 'CHICAGO';

--���⼭ ���� �������� ����
--����17. (�����ȣ�� 7900�� ���)�� ���� ��¥�� �Ի��� ����� �̸��� �Ի����� ����Ͻÿ�.(emp)
SELECT ename, hiredate
FROM emp
WHERE hiredate = (SELECT hiredate FROM emp WHERE empno = 7900);

--����18.(���ӻ��(mgr)�� KING)�� ��� ����� �̸��� �޿��� ����Ͻÿ�.(emp) 
SELECT ename, sal, mgr
FROM emp
WHERE mgr = (SELECT empno FROM emp WHERE ename = 'KING');


--����19. EMPLOYEES ���̺��� (�޿��� ���)���� ���� ����� ������ �����ȣ,�̸�,������,�޿�,�μ���ȣ�� ����Ͽ���
SELECT employee_id, last_name, job_id, salary, department_id
FROM employees
WHERE salary < (SELECT AVG(salary) 
                FROM employees)
ORDER BY salary DESC;

--����20. EMPLOYEES ���̺��� (Kochhar�� �޿�)���� ���� ����� ������ �����ȣ,�̸�,������,�޿��� ����϶�.
SELECT employee_id, last_name, job_id, salary
FROM employees
-- ORDER BY salary DESC
WHERE salary > (SELECT salary
                FROM employees
                WHERE last_name = 'Kochhar');
                
                
--���� 21. emp���̺� ���� (BLAKE�� ���� �μ�)�� �ִ� ������� �̸��� �Ի����� ���ϴµ� BLAKE�� �����ϰ� ����Ͻÿ�.(BLAKE�� �������� �� ����
SELECT ename, hiredate, deptno
FROM emp
WHERE deptno in(SELECT deptno from emp WHERE ename = 'BLAKE')
    AND ename != 'BLAKE';

