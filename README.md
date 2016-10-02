# Challenge 3: Data Reporting with SQL

## Introduction: This is project to write SQL Functions Stored and SQL Query to extract Data Reporting.
## Requirement:
Given the following purchases table that record all purchases of an online ecommerce store:
create table purchases (
  id integer primary key,
  user_id integer,
  product_id integer,
  created_at timestamp without timezone
)

Please write a SQL query that show monthly unique buyers, broken down by first time buyers, and returned buyers.

A first time buyer is a buyer that hasn't made any purchase prior
A returned buyer is a buyer that has made at least 1 purchase prior

Your SQL should return 3 columns:
- month (date)
- first_time_buyers (integer),
- returned_buyers (integer)

Please submit your work (SQL) and state the SQL database you're using (MySQL, PostgreSQL, SQL Server or any other DBs). You can provide any explanation if you want to.

Examples (data below has been simplfied for ease of understanding, not how it is actually stored in the table, e.g. user_id will only contain integer)

|id | user_id   | product_id | created_at |
| --- | --------:| ----------:| ----------:|
|1  | alice     | 1          | Jul 2016   |
|2  | charlie   | 1          | Jul 2016   |
|3  | alice     | 2          | Aug 2016   |
|4  | bob       | 3          | Aug 2016   |
|5  | david     | 3          | Aug 2016   |
|6  | bob       | 2          | Sep 2016   |
|7  | bob       | 3          | Sep 2016   |
|8  | david     | 3          | Sep 2016   |

Expected results:

| month        | first_time_buyers | returned_buyers|
| ------------- |:-------------:| -----:|
| 2016-07-01   | 2                 | 0              |
| 2016-08-01   | 2                 | 1              |
| 2016-09-01   | 0                 | 2              |

# Guide:
1. Import Dump20161002.sql file to your database (I used MariaDB v10.1.18. You can import it from MySQL).
2. Select and execute "GIYDataTraining- Query.sql" file and see the result.

My Result:

![Result of Data Reporting with SQL](https://github.com/hieu292/DataReportingWithSQL/blob/master/Result.PNG "Result of Data Reporting with SQL")
