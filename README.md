# 📊 SQL Analytics Portfolio

A comprehensive collection of SQL projects demonstrating database design, complex queries, data analysis, and business intelligence solutions.

[![SQL](https://img.shields.io/badge/SQL-MySQL%20%7C%20PostgreSQL-orange.svg)](https://www.mysql.com/)
[![Database](https://img.shields.io/badge/Database-Relational-blue.svg)](https://en.wikipedia.org/wiki/Relational_database)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

## 📋 Table of Contents
- [About](#about)
- [Projects Overview](#projects-overview)
- [Skills Demonstrated](#skills-demonstrated)
- [Database Technologies](#database-technologies)
- [Setup Instructions](#setup-instructions)
- [Project Details](#project-details)
- [Key Learnings](#key-learnings)
- [Contact](#contact)

## 🎯 About

This repository showcases my SQL expertise through various projects involving database design, data manipulation, complex querying, and analytics. Each project addresses real-world business problems and demonstrates industry-standard database practices.

**Focus Areas**:
- Database schema design and normalization
- Complex SQL queries and joins
- Data analysis and reporting
- Performance optimization
- Business intelligence solutions

## 🗂️ Projects Overview


### 2. [HR Analytics] - HR Employee Analytics
**Business Problem**: Understand employee demographics, attrition, and department performance  
**Database**: PostgreSQL  
**Key Queries**:
- Department-wise headcount and salary analysis
- Employee turnover rate calculations
- Performance rating distributions
- Salary gap analysis by role and department

**Skills Used**: GROUP BY, HAVING, Aggregations, Date Functions



## 🔧 Skills Demonstrated

### Core SQL Skills
- ✅ **DDL (Data Definition Language)**: CREATE, ALTER, DROP
- ✅ **DML (Data Manipulation Language)**: SELECT, INSERT, UPDATE, DELETE
- ✅ **Complex Joins**: INNER, LEFT, RIGHT, FULL OUTER, CROSS, SELF
- ✅ **Aggregation Functions**: COUNT, SUM, AVG, MIN, MAX
- ✅ **Window Functions**: ROW_NUMBER, RANK, DENSE_RANK, LAG, LEAD
- ✅ **CTEs**: Common Table Expressions for readable queries
- ✅ **Subqueries**: Correlated and non-correlated subqueries
- ✅ **Views**: Creating reusable virtual tables
- ✅ **Indexes**: Query optimization strategies
- ✅ **Stored Procedures**: Reusable SQL code blocks

### Advanced Concepts
- Database normalization (1NF, 2NF, 3NF, BCNF)
- Entity-Relationship (ER) modeling
- Query optimization and performance tuning
- Transaction management (ACID properties)
- Data integrity constraints (Primary Keys, Foreign Keys, Unique, Check)

## 💾 Database Technologies

| Database | Version | Use Cases |
|----------|---------|-----------|
| **MySQL** | 8.0+ | E-commerce, General analytics |
| **PostgreSQL** | 14+ | Complex queries, Advanced analytics |

## 🚀 Setup Instructions

### Prerequisites
- MySQL 8.0+ or PostgreSQL 14+
- MySQL Workbench / pgAdmin / DBeaver (Database GUI)
- Git

### Installation Steps

1. **Clone the repository**
```bash
git clone https://github.com/nushant22/SQL-Analytics-Portfolio.git
cd SQL-Analytics-Portfolio
```

2. **Choose a database system** (MySQL or PostgreSQL)

3. **Create database and import data**

#### For MySQL:
```bash
# Login to MySQL
mysql -u root -p

# Create database
CREATE DATABASE project_name;

# Import SQL dump
mysql -u root -p project_name < project_folder/schema.sql
mysql -u root -p project_name < project_folder/data.sql
```

#### For PostgreSQL:
```bash
# Login to PostgreSQL
psql -U postgres

# Create database
CREATE DATABASE project_name;

# Import SQL dump
psql -U postgres -d project_name -f project_folder/schema.sql
psql -U postgres -d project_name -f project_folder/data.sql
```

4. **Run queries**
Navigate to the specific project folder and execute the SQL files in your database client.

## 📊 Project Details

### Project Structure
```
SQL-Analytics-Portfolio/
│
│
├── hr_analytics/
│   ├── schema.sql
│   ├── data.sql
│   ├── queries.sql
│   └── README.md
│
└── README.md
```

### Sample Query Examples

#### Complex JOIN with Window Function
```sql
-- Calculate running total of sales by salesperson
SELECT 
    s.salesperson_name,
    o.order_date,
    o.order_amount,
    SUM(o.order_amount) OVER (
        PARTITION BY s.salesperson_id 
        ORDER BY o.order_date
    ) AS running_total
FROM 
    orders o
JOIN 
    salespersons s ON o.salesperson_id = s.salesperson_id
ORDER BY 
    s.salesperson_name, o.order_date;
```

#### CTE for Customer Segmentation
```sql
-- Segment customers by purchase frequency
WITH customer_metrics AS (
    SELECT 
        customer_id,
        COUNT(order_id) AS total_orders,
        SUM(order_amount) AS total_spent,
        AVG(order_amount) AS avg_order_value
    FROM orders
    GROUP BY customer_id
)
SELECT 
    customer_id,
    total_orders,
    total_spent,
    CASE 
        WHEN total_orders >= 10 THEN 'VIP'
        WHEN total_orders >= 5 THEN 'Regular'
        ELSE 'Occasional'
    END AS customer_segment
FROM customer_metrics
ORDER BY total_spent DESC;
```

## 📈 Key Business Insights

Each project includes:
- **Problem Statement**: Clear business question to answer
- **Data Analysis**: SQL queries to extract insights
- **Visualizations**: Charts and graphs (where applicable)
- **Recommendations**: Data-driven business recommendations

### Example Insights:
- 📊 Identified top 20% products generating 80% revenue (Pareto principle)
- 👥 Discovered customer retention rate dropped 15% in Q4
- 💰 Found opportunity to increase revenue by 12% through cross-selling
- 📍 Revealed highest-performing regions for targeted marketing

## 🎓 Key Learnings

Through these SQL projects, I've developed:

- Strong foundation in relational database concepts
- Ability to design normalized database schemas
- Proficiency in writing complex, optimized SQL queries
- Experience with real-world business analytics scenarios
- Understanding of database performance optimization
- Skills in translating business requirements to SQL
- Capability to derive actionable insights from data

## 📚 Additional Resources

### Helpful Links:
- [MySQL Documentation](https://dev.mysql.com/doc/)
- [PostgreSQL Documentation](https://www.postgresql.org/docs/)
- [SQL Style Guide](https://www.sqlstyle.guide/)
- [Mode Analytics SQL Tutorial](https://mode.com/sql-tutorial/)

### Learning Path:
1. Basic SQL (SELECT, WHERE, ORDER BY)
2. Joins and Relationships
3. Aggregations and GROUP BY
4. Subqueries and CTEs
5. Window Functions
6. Performance Optimization

## 🤝 Contributing

Suggestions and improvements are welcome! Feel free to:
- Report issues
- Suggest new project ideas
- Improve existing queries
- Add new analysis scenarios

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 📧 Contact

**Nushant Ghimire**

- LinkedIn: [nushant-ghimire-861b87325](https://www.linkedin.com/in/nushant-ghimire-861b87325/)
- GitHub: [@nushant22](https://github.com/nushant22)
- Email: [nushantghimire22@gmail.com]

---

⭐ **Found this helpful? Star this repository!**

💼 **Looking for a data analyst/SQL developer?** [Let's connect!](https://www.linkedin.com/in/nushant-ghimire-861b87325/)

*Last Updated: February 2026*
