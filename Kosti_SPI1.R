library(readxl)
ProjectSPI <- read_excel("ProjectSPI.xlsx")
View(ProjectSPI)
detach("package:SPEI", unload = TRUE)
## install.packages("SPEI") I did not use it
library(SPEI)
# Package SPEI (1.8.1) loaded [try SPEINews()].
 spi3<- spi(ProjectSPI$Prcp,3)
spi3
