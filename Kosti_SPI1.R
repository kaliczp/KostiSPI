library(readxl)
ProjectSPI <- read_excel("ProjectSPI.xlsx")
View(ProjectSPI)
detach("package:SPEI", unload = TRUE)
## install.packages("SPEI") I did not use it
library(SPEI)
# Package SPEI (1.8.1) loaded [try SPEINews()].
## Generate ts object
Prcp <- ts(ProjectSPI$Prcp, start = 2002, frequency = 12)
plot(Prcp)
spi3 <- spi(Prcp, 3)
spi3
plot(spi3) # plot SPI values
