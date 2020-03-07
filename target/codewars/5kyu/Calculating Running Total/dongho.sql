--https://www.codewars.com/kata/calculating-running-total/train/sql
--PostgreSQL 9.6

SELECT -- created_at�� datetime
       CAST(created_at AS date) AS date, --  2019-11-10 ��¥Ÿ�Ժ�ȯ
       count(*) AS count,
       -- SUM OVER���� count(*) ����� 0.2e Ÿ������ �����Ǿ� integer ��ȯ
       SUM(CAST(count(*) AS integer)) OVER (ORDER BY CAST(created_at AS date))  AS total
  FROM posts 
 GROUP BY CAST(created_at AS date)
 ORDER BY CAST(created_at AS date)