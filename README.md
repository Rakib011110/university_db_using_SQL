<details>
<summary>1. What is PostgreSQL?</summary>
PostgreSQL is an open-source relational database management system known for its reliability, flexibility, and support for advanced queries and data structures.
</details>

<details>
<summary>2. What is the purpose of a database schema in PostgreSQL?</summary>
A schema in PostgreSQL organizes tables, functions, and other database objects, acting as a blueprint to logically structure data and manage security and access efficiently.
</details>

<details>
<summary>3. Explain the primary key and foreign key concepts in PostgreSQL.</summary>
- **Primary Key**: A unique identifier for each row within a table, ensuring data integrity by preventing duplicate values.
- **Foreign Key**: Establishes a link between tables, referencing a primary key in another table to enforce relationships and maintain data consistency.
</details>

<details>
<summary>4. What is the difference between the VARCHAR and CHAR data types?</summary>
- **VARCHAR**: Stores variable-length strings, allowing different lengths up to a specified maximum.
- **CHAR**: Stores fixed-length strings, which reserves a set amount of space regardless of the actual string length.
</details>

<details>
<summary>5. Explain the purpose of the WHERE clause in a SELECT statement.</summary>
The **WHERE** clause filters results in a query, returning only rows that meet specified conditions. It refines data retrieval, enhancing query precision.
</details>

<details>
<summary>6. What are the LIMIT and OFFSET clauses used for?</summary>
- **LIMIT**: Restricts the number of rows returned, ideal for obtaining sample data or paginating results.
- **OFFSET**: Skips a specified number of rows, commonly used alongside LIMIT to navigate large result sets.
</details>

<details>
<summary>7. How can you perform data modification using UPDATE statements?</summary>
The **UPDATE** statement allows modifying existing records in a table by setting new values for specified columns based on defined conditions.
</details>

<details>
<summary>8. What is the significance of the JOIN operation, and how does it work in PostgreSQL?</summary>
**JOIN** combines rows from multiple tables based on related columns, enabling a holistic view of interconnected data, such as displaying student names and their enrolled courses.
</details>

<details>
<summary>9. Explain the GROUP BY clause and its role in aggregation operations.</summary>
The **GROUP BY** clause groups rows sharing a common value, enabling aggregate calculations, such as summing totals or averaging scores, for each group.
</details>

<details>
<summary>10. How can you calculate aggregate functions like COUNT, SUM, and AVG in PostgreSQL?</summary>
Aggregate functions provide summary metrics:
- **COUNT**: Returns the number of rows.
- **SUM**: Calculates the total of a numeric column.
- **AVG**: Finds the average value.  
These are essential for producing summaries and insights from data.
</details>

<details>
<summary>11. What is the purpose of an index in PostgreSQL, and how does it optimize query performance?</summary>
An **index** accelerates query performance by providing quick lookup capabilities, significantly enhancing search speed and efficiency, particularly in large datasets.
</details>

<details>
<summary>12. Explain the concept of a PostgreSQL view and how it differs from a table.</summary>
A **view** is a virtual table created by a query that provides a specific perspective of data without storing it independently, often used for security or simplifying complex queries.
</details>
