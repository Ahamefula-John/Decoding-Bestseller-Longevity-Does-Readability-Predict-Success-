 Decoding Bestseller Longevity: Does Readability Predict Success ?

Bestseller Longevity & Readability Analysis

Overview
This project investigates if a book's readability influences its longevity on the New York Times Bestsellers list. The hypothesis was that more readable books would be more popular and keep books on the bestseller list for longer.
I used the "About the book" top calculate the Reading Ease Score and Grade Level for each book with the Assumption that the Author wrote the book in the same style he wrote the “About the Book”

Tools & Data
*   Python (BeautifulSoup, Request, Pandas, Seaborn, Matplotlib, TextStat)
*   Data Sources: NYT Books API (for "weeks_on_list"), Goodreads (scraped for "About the Book" text)
*   Analysis: SQL for querying, Python for statistics and visualization

Process
1.  Data Collection: Pulled bestseller data from the NYT API and scraped The "About the book" of the book from Goodreads.
2.  Readability Scoring: Used "TextStat" to calculate a Reading Ease Score and Grade Level for each book.
3.  Analysis: Merged the datasets and analyzed the relationship between readability and longevity using correlation coefficients and a scatter plot.

Key Findings
*   A very weak negative correlation (r = -0.247) was found between reading ease and weeks on the list.
*   A very weak positive correlation (r = 0.245) was found between grade level and weeks on the list.
*   Conclusion: Readability of a book's description is not a strong predictor of its long-term success. Other factors like marketing, author fame, and genre trends are likely more significant drivers.
