# 🍕 Pizza Sales End-to-End Data Analysis Project

An end-to-end data analysis project combining **SQL Server** and **Power BI** to analyze pizza sales performance, identify customer ordering trends, and track key business metrics.

---

## 🛠️ Tools & Technologies Used
* **SQL Server Management Studio (SSMS):** Data import, cleaning, and exploratory data analysis via SQL queries.
* **Power BI:** Interactive dashboard design, DAX measures, new card visuals, and page navigation buttons.

---

## 📊 Key Performance Indicators (KPIs) & Business Questions Answered
* **Total Revenue & Average Order Value (AOV)**
* **Total Pizzas Sold & Total Orders**
* **Daily & Monthly Trends for Orders** (Peak ordering times and busiest days)
* **Percentage of Sales by Pizza Category & Size**
* **Best and Worst Selling Pizzas**

---

## 📂 Project Structure
* `SQL_Queries/`: Contains all SQL scripts used for data extraction and validation.
* `Dashboard_Previews/`: Screenshots showcasing the interactive Power BI report pages.

---

## 🚀 Key Insights & SQL-Power BI Validation
To ensure data integrity, a two-way validation was performed: metrics calculated via SQL queries in SSMS were cross-checked against the aggregated numbers on the Power BI dashboard to guarantee 100% accuracy.

---

## 📈 Key Insights & Business Findings

Through comprehensive SQL querying and Power BI dashboard visualization, the following key insights were uncovered from the dataset of over 21,000 orders:

### 💰 Financial & Order Metrics
* **Total Revenue Generated:** ~$817,860 
* **Total Orders Processed:** 21,350 orders
* **Average Order Value (AOV):** ~$38.30 per order
* **Total Quantity Sold:** ~49,574 individual pizzas sold

### ⏰ Peak Ordering Times & Busiest Days
* **Busiest Days:** **Fridays** and **Thursdays** experience the highest order volume, peaking with over 3,500+ orders on Fridays alone.
* **Peak Hours:** Order activity spikes sharply during lunch and dinner rushes, specifically between **12:00 PM – 1:00 PM** and **5:00 PM – 8:00 PM**, highlighting crucial windows for staffing and inventory readiness.

### 🍕 Product Performance & Preferences
* **Top-Selling Pizza (by Revenue):** The **Thai Chicken Pizza** generated the highest overall revenue (~$43.43K).
* **Top-Selling Pizza (by Quantity/Orders):** The **Classic Deluxe Pizza** recorded the highest order frequency.
* **Lowest-Performing Pizza:** The **Brie Carre Pizza** generated both the lowest number of orders (480) and the lowest revenue (~$11.59K), signaling a potential candidate for menu optimization or replacement.
* **Category Preference:** The **Classic** and **Supreme** categories dominate the majority of total sales and order share compared to Chicken and Veggie options.

### 📅 Monthly & Seasonal Trends
* **Best Performing Month:** **July** recorded the highest revenue and order volume.
* **Slowest Months:** **September** and **October** experienced a noticeable dip in customer traffic and sales, presenting opportunities for targeted promotional campaigns or seasonal discounts.
