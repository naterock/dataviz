library("googlevis")

#Individdual tax codes 
y <- c("value1". "value2")

for (i in y)
{
#test <- subset(tax, tax$TAXCODE=="TAXVALUE")
test <- subset(tax, tax$TAXCODE==i)
dat <- data.frame( agency=test$NAME, rate=test$RATE, trate=test$TOTAL_TAX_RATE)
ttaxw <- dat$trate
doughnut <- gvisPieChart(dat,
options=list(
width=700,
height=700,
slices="{0: {offset: 0.2},
1: {offset: 0.2},
2: {offset: 0.2}}",
legend='none',
title=paste("Total Tax Rate =",ttaxw),
pieSliceText='value',
pieHole=0.4),
chartid=i)
#plot(doughnut)

cat(doughnut$html$chart, file=paste0("PATHURL/code", i, ".html"))}
