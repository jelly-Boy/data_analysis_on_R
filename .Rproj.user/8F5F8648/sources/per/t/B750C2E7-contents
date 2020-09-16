library("psych")
library("dplyr")
library("ggplot2")
library ("GGally")
library("faraway")
library("graphics")
c <- cars
glimpse(c)
describe(c)
##среднее
mean(c)
##медиана
median(c)
##дисперсия
var(c)
##стандартное отклонение
sd(c)
##коеф вариации
sd(c)/mean(c, na.rm=TRUE)
##коэф ассиметрии
skew(c)
##коэф эксцесса
kurtosi(c)
##размах вариации
range(c)
##интерквартильный размах
IQR(c)
##для квантилей
quantile(c, p = seq(0.25,0.50,0.75))
######
##
##ящик с усами
boxplot(speed~dist,
        xlab = "Швидкість(милі/год).",
        ylab = "Гальмівний шлях(фути).",
        main = "Відстань, необхідна для зупинки автомобіля 1920-х років.",
        col = "blue",
        data = c)

