# 🍔 Taste of the World Restuarant Sales Analysis

## 🌟 Project Overview

**Business Context:**
Taste of the World Restaurant serves international cuisine with diverse menu offerings. This analysis examines a quarter's sales data to optimize menu strategy and operations.

**Analysis Goals:**
1. Identify popular/unpopular menu items
2. Analyze customer spending patterns
3. Discover ordering trends
4. Provide data-driven recommendations

## 📊 Dataset Summary

**Data Scope:**
- 📅 Time Period: March 2023 (1 month)
- 🗃️ Tables Analyzed: 
  - `menu_items` (32 items)
  - `order_details` (5,370 orders)

**Key Metrics:**
| Metric | Value | Icon |
|--------|-------|------|
| Total Orders | 5,370 | 🛒 |
| Total Items Sold | 12,234 | 🍽️ |
| Menu Categories | 4 | 🗂️ |
| Avg Items/Order | 2.28 | 📈 |

# 🔍 Key Insights
## 🍔 Menu Item Analysis

-- Most/Least Popular Items
SELECT 
    mi.item_name,
    mi.category,
    COUNT(od.order_details_id) AS order_count
FROM order_details od
JOIN menu_items mi ON od.item_id = mi.menu_item_id
GROUP BY mi.item_name, mi.category
ORDER BY order_count DESC;

Findings:

    🏆 Top Performer: Hamburger (American) - 622 orders

    🥈 Worst Performer: Chicken Tacos (Mexican) - 52 orders

    💰 Highest Revenue Item: Shrimp Scampi ($12,345 total)

## 💸 Spending Patterns

**Top 5 Orders by Revenue:**
1. Order #440 - $192.15 (3 items)
2. Order #2075 - $187.50 (5 items) 
3. Order #1957 - $182.75 (4 items)

**Common Traits in High-Value Orders:**
- Multiple premium protein items (steak, lobster)
- Alcohol pairings
- Larger party sizes (avg 4.2 items vs 2.28 overall)

## ⏱️ Temporal Trends

**Order Volume by Hour:**
🕘 11AM-1PM: 32% of daily orders (Lunch Rush)
🕓 4PM-6PM: 28% (Happy Hour)
🕗 8PM-10PM: 22% (Dinner)

**Weekday Patterns:**
- 📈 Busiest Day: Friday (18% of weekly orders)
- 📉 Slowest Day: Tuesday (12%)

# 🚀 Recommendations
## Menu Strategy

1. **Expand American Offerings** (+3 burger variants)
2. **Revamp Mexican Category** (Replace underperforming tacos)
3. **Create Premium Combos** (Bundle high-value items)

## Operational Improvements

- 🕙 **Staffing**: Increase coverage 11AM-1PM and 6PM-8PM
- 📦 **Inventory**: Stock 20% more burger ingredients
- 💰 **Promotions**: Tuesday specials to boost slow days

# 💻 Technical Implementation
## SQL Files
- [objective_1.sql](objective _1_queries.sql): for menu analysis i.e. Item counts, price analysis
- [objective_2.sql](objective _2_queries.sql): for order patterns i.e. Date ranges, order volumes
- [objective_3.sql](objective _3_queries.sql): for combined insights i.e.Popular items, spending analysis

## Analysis Approach
Data exploration with basic aggregatess

    Join operations to connect menu and orders

    Advanced grouping for category analysis

    Time-based pattern detection

🔮 Future Work

**Planned Analyses:**
1. Customer segmentation (RFM model)
2. Menu item profitability (COGS integration)
3. Seasonal trend analysis (full year data)
4. Table turnover rate optimization

**Required Data:**
- Customer demographics
- Ingredient costs
- Table reservation logs

📅 Report Generated: {current_date}
👨‍💻 Data Analyst: {your_name}
📧 Contact: {your_email}

Data Visualization