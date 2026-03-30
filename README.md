# Who Wins Online? S&P 500 Website Performance Suite
**A deep-dive into the digital effectiveness of the world's leading companies using Snowflake and Power BI.**

## Project Overview
In the digital age, traffic alone doesn't guarantee success. This project analyzes website performance metrics (visits, bounce rates, and session duration) for S&P 500 companies to identify patterns in digital reach and retention. I built an end-to-end pipeline to transform raw, unformatted data into a strategic competitive analysis.

## Project Assets
* [Technical Presentation (PDF)](https://github.com/Swt16/SP500-Website-Analytics/blob/main/MSIS%20543%20Presentation%20-%20Website%20Analytics.pdf) — *Detailed breakdown of industry benchmarks.*
* [SQL Scripts](https://github.com/Swt16/SP500-Website-Analytics/blob/main/S&P%20500%20Data%20Query.sql) — *View the Snowflake logic used to clean and cast the data.*

---

## Data Engineering (Snowflake)
The raw dataset contained nearly 500 tickers with columns stored as generic strings. I developed a robust SQL pipeline to:
* **Type Casting:** Converted `varchar` fields into `int`, `double`, and `date` formats for analytical processing.
* **Feature Engineering:** Calculated mobile vs. desktop engagement ratios.
* **Data Filtering:** Cleaned the 2018-2022 dataset to focus on full calendar year performance.

## Key Analytical Insights
* **The Engagement Gap:** Identified which S&P 500 sectors (e.g., Tech vs. Energy) command the longest user attention spans.
* **Mobile vs. Desktop:** Analyzed how user behavior shifts across devices and its correlation with bounce rates.
* **Top Performers:** Ranked companies not just by volume, but by "Digital Stickiness."

## Technical Stack
* **Data Warehouse:** Snowflake (Advanced SQL, CTEs, Data Modeling)
* **BI & Visualization:** Power BI, Excel
* **Domain:** Web Analytics, Digital Strategy

---

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
