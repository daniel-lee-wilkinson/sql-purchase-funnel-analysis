# SQL Purchase Funnel Analysis

This project analyses a simulated purchase funnel dataset inspired by **Warby Parker**.  
The goal is to demonstrate SQL proficiency in joining multiple tables, cleaning values, and extracting business insights.

## Project Structure
- `queries/` – SQL scripts for each analysis step
- `summary/` – PDF/PPT with visual summary of results
- `README.md` – this overview

## Analysis Steps
1. Explore survey table structure
2. Count responses per question
3. Identify completion rates
4. Build joined funnel table (quiz, try-on, purchase)
5. Calculate overall conversion rate
6. Compare conversion rates (3 pairs vs 5 pairs A/B test)
7. Assess try-on behaviour and purchase likelihood
8. Average number of pairs by purchase outcome

## Key Insights
- Overall conversion rate: **49.5%**
- Users who received **5 pairs converted at 79%** vs **53%** for 3 pairs
- **75%** of users tried clothes at home
- **66%** of users who tried at home purchased, while none who skipped try-on purchased

## Notes
- Dataset is simulated, used for practice
- Queries written in standard SQL (SQLite/Postgres compatible)

