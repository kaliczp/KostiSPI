par(mfrow = c(5,1), mar = c(2.1,2.1,0.5,0.5))
for(SPIscale in c(3,6,12,18,24)) {
    plot(spi(Prcp, scale = SPIscale)$fitted,type = "h",
         xlab = "", ylab = "", xaxs = "i", lwd = 3)
    legend("topright", paste0("SPI (",SPIscale," months)"))
}
