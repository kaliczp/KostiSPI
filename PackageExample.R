## load example file in spi() funciton help
load(system.file("data/wichita.rda", package = "SPEI"))

wichita <- ts(wichita[, -c(1, 2)], end = c(2011, 10), frequency = 12) # make ts
plot(wichita) # wiew multi-variable ts
