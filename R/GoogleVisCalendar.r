library(googlevis)
library(lubridate)

calls <- mdy(testcalls$calldate)
dcalls <- data.frame(date=calls, count=testcalls$count)

c2 <- gvisCalendar(data=dcalls, datevar="date", numvar="count",
options=list(
title="TITLE",
calendar="{cellSize:20,
yearLabel:{fontSize:20, color:'#444444'},
focusedCellColor:{stroke:'red'}}",
width=3000, height=3000),
chartid="Calendar")

plot(c2)

cat(c2$html$chart, file="c:/temp/test.html")
