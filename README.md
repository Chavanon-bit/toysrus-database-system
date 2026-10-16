# Toys “R” Us — Database Systems Project

Academic database-design and SQL-query project for **ITCS216 Fundamentals of Database Systems** at Mahidol University (2025).

## My contributions
- Collaborated with the team on the Entity Relationship Diagram (ERD), relational schema transformation, and data dictionary.
- Independently authored **SQL queries 21–25** as credited in the submitted report, covering filtering, account age, purchase-order aggregation, and order information using joins.

## Portfolio materials
- [`toysrus_queries_21_25.sql`](./toysrus_queries_21_25.sql) — SQL transcribed from the submitted report (PDF pages 33–36). **This is a reconstruction, not the original `.sql` file, and has not been re-executed against the original database.**
- [`ToysRUs_Database_Portfolio_Extract.pdf`](./ToysRUs_Database_Portfolio_Extract.pdf) — selected report pages: original PDF **11–18** (ERD, schema transformation, data dictionary) and **33–36** (queries 21–25, recorded results).

## Query coverage
| Query | Goal | SQL concepts |
| --- | --- | --- |
| 21 | Filter products starting with S above a price threshold | WHERE, LIKE, ORDER BY |
| 22 | Compute customer account age | CONCAT, TIMESTAMPDIFF |
| 23 | Count employees’ purchase orders above a threshold | INNER JOIN, GROUP BY, HAVING |
| 24 | Show customers and expected delivery | INNER JOIN |
| 25 | Show customers with order statuses, including customers with no matched order | LEFT JOIN |

## Notes
- The `order` table name is escaped with backticks in the reconstructed SQL for compatibility with MySQL reserved-word handling; the original report spells it without backticks. Other logic follows the report.
- Query 23's grouping form is preserved from the report. It may need adjustment in databases configured with strict `ONLY_FULL_GROUP_BY` checks.
- The portfolio describes an **academic database design**, not a production Toys “R” Us system. Team-created materials are credited as collaborative work.
- Confirm the team's and course's permission before publicly sharing the report extract.
