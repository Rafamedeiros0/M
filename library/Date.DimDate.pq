Date Table = 
VAR StartDate = MIN(Sales[TransactionDate])
VAR EndDate = MAX(Sales[TransactionDate])
VAR DateTable = 
ADDCOLUMNS(
    CALENDAR(StartDate, EndDate),
    "Year", YEAR([Date]),
    "Quarter Name", FORMAT([Date], "\QQ"),
    "Quarter number", QUARTER([Date]),
    "Month Name", FORMAT([Date], "MMM"),
    "Month number", MONTH([Date]),
    "Month Year", FORMAT([Date], "MMM YYYY"),
    "Month Year Sort", VALUE(FORMAT([Date], "YYYYMM")),
    "Week Name", "W" & WEEKNUM([Date]),
    "Day Name", FORMAT([Date], "DDDD"),
    "Day number", WEEKDAY([Date])
)
RETURN
DateTable
