-- joining both tables and selecting all data
-- sorting it in descending order by the weeks on the list

SELECT a.Title,a.Author,a.weeks_on_list,b.Text_Source,b.Reading_Ease_Score,b.Grade_level
FROM dbo.LongetivityOfBestsellers01$ a
JOIN dbo.ReadabilityOfBestsellers$ b
ON a.Title = b.Title
AND a.Author = b.Author
ORDER BY a.weeks_on_list DESC,b.Reading_Ease_Score DESC,b.Grade_level DESC

-- joining both tables and selecting all data
-- sorting it in descending order by the reading ease score

SELECT a.Title,a.Author,a.weeks_on_list,b.Text_Source,b.Reading_Ease_Score,b.Grade_level
FROM dbo.LongetivityOfBestsellers01$ a
JOIN dbo.ReadabilityOfBestsellers$ b
ON a.Title = b.Title
AND a.Author = b.Author
ORDER BY b.Reading_Ease_Score DESC,b.Grade_level DESC, a.weeks_on_list DESC

-- selecting data where book is harder to read
-- i'm using 60 as the benchmark score for difficulty in reading
-- that is if reading ease score is < 60 its difficult to read
-- sorting it in descending order by the number of week on the list

SELECT a.Title,a.Author,a.weeks_on_list,b.Text_Source,b.Reading_Ease_Score,b.Grade_level
FROM dbo.LongetivityOfBestsellers01$ a
JOIN dbo.ReadabilityOfBestsellers$ b
ON a.Title = b.Title
AND a.Author = b.Author
WHERE b.Reading_Ease_Score < 60
ORDER BY a.weeks_on_list DESC

-- selecting data where book is easier to read
-- i'm using 60 as the benchmark score for simplicity in reading
-- that is if reading ease score is > 60 its not difficult to read
-- sorting it in descending order by the number of week on the list

SELECT a.Title,a.Author,a.weeks_on_list,b.Text_Source,b.Reading_Ease_Score,b.Grade_level
FROM dbo.LongetivityOfBestsellers01$ a
JOIN dbo.ReadabilityOfBestsellers$ b
ON a.Title = b.Title
AND a.Author = b.Author
WHERE b.Reading_Ease_Score > 60
ORDER BY a.weeks_on_list DESC
