par(mfrow = c(5,1), mar = c(2.1,2.1,0.5,0.5), las = 1)
for(SPIscale in c(3,6,12,18,24)) {
    currentspi <- spi(Prcp, scale = SPIscale, verbose = FALSE)
    spits <- currentspi$fitted
    plot(spits, type = "n",
         xlab = "", ylab = "", xaxs = "i")
    lines(as.vector(time(spits)), as.vector(spits), type = "h", lwd = 2, lend = "butt")
    legend("topright", paste0("SPI (",SPIscale," months)"), bg = "white")
}
