# DATA-ANALYTICS-ASSIGNMENT

Power bi task:-
question 1:-
Superstore Sales Dashboard using Power BI
Project Overview
This project is an interactive Sales Dashboard created using Microsoft Power BI with the Sample Superstore Sales dataset. The dashboard helps analyze sales performance, profit trends, customer segments, regional performance, and shipping analysis through interactive visualizations and filters.

The main objective of this project was to learn data visualization, DAX measures, dashboard designing, and time intelligence analysis using Power BI.

---

Features
- Interactive KPI Cards
- Sales and Profit Analysis
- Region-wise Performance Tracking
- Category-wise Sales Comparison
- Customer Segment Analysis
- Ship Mode Analysis
- Time Intelligence Analysis (YOY & MOM Growth)
- Dynamic Filters and Slicers
- Professional Dashboard Design

---

Tools & Technologies Used
- Microsoft Power BI
- DAX (Data Analysis Expressions)
- Power Query
- Excel Dataset

---

KPIs Included
- Total Sales
- Total Profit
- Total Orders
- Profit Margin %

---

Visualizations Used
- Line Chart
- Bar Chart
- Column Chart
- Donut Chart
- KPI Cards
- Slicers

---

DAX Measures Created
DAX
Total Sales = SUM(Orders[Sales])

Total Profit = SUM(Orders[Profit])

Total Orders = DISTINCTCOUNT(Orders[Order ID])

Profit Margin % =
DIVIDE([Total Profit],[Total Sales],0) * 100
```

---

Time Intelligence Analysis
The dashboard includes:
- Current Year Revenue
- Previous Year Revenue
- Year-over-Year (YOY) Growth
- Month-over-Month (MOM) Growth

---

Dashboard Insights
- Technology category generated highest sales
- Atlantic region contributed highest profit
- Standard Class ship mode had maximum sales
- Consumer segment placed most orders

---

Learning Outcomes
Through this project, I learned:
- Data cleaning and transformation
- Creating relationships in Power BI
- Writing DAX measures
- Building interactive dashboards
- Implementing slicers and filters
- Dashboard formatting and UI design
- Time intelligence calculations

---

Repository Structure
text
Superstore-Sales-Dashboard/
│
├── Superstore Dashboard.pbix
├── Sample Superstore Sales.xls
├── README.md
└── Dashboard Screenshot.png
```

Author
Garvit Goyal

---

Conclusion
This project demonstrates how Power BI can be used to transform raw sales data into meaningful business insights through interactive and visually appealing dashboards.
