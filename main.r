library("psych")
library("dplyr")
library("ggplot2")
library ("GGally")
library("faraway")
library("graphics")
l<-LakeHuron
c <- cars
glimpse(c)
c_metric <- mutate(c, speed = speed*1.67, dist = dist*0.3)
describe(l)
##средняя скорость
mean(c_metric$speed)
##медиана скорости
median(c_metric$speed)
##дисперсия скорости
var(c_metric$speed)
##стандартное отклонение скорости
sd(c_metric$speed)
##коеф вариации скорости
sd(c_metric$speed)/mean(c_metric$speed, na.rm=TRUE)
##коэф ассиметрии скорости
skew(c_metric$speed)
##коэф эксцесса скорости
kurtosi(c_metric$speed)
##размах вариации скорости
range(c_metric$speed)
##интерквартильный размах скорости
IQR(c_metric$speed)
####
##пятиточечная характеристика
quantile(c_metric$speed)
##дециль(1 и 9)
dec <- quantile(c_metric$speed, p = seq(0.1, 1, 0.1))
dec[1]
dec[9]
##ящик с усами
boxplot(speed~dist,
        xlab = "Швидкість(км/год).",
        ylab = "Гальмівний шлях(метри).",
        main = "Відстань, необхідна для зупинки автомобіля 1920-х років.",
        col = "blue",
        data = c_metric)
##qq diagram

qqnorm(c_metric$speed, pch = 1, frame = FALSE)
qqline(c_metric$speed, col ="red", lwd = 2)
plot(pnorm(sort(c_metric$speed)), (1:length(c_metric$speed))/length(c_metric$speed), asp =1)
x=rnorm(c_metric$speed)
plot(pnorm(sort(x)), (1:length(x))/length(x), asp =1)
abline(0,1, col="blue")
        ##pp diagram



## histagrammas
##Scotts' rule
h_Scott<- 3.5 * sd(c_metric$dist) * length(c_metric$dist)^(-1/3)
h_Scott
##Fridman-Diaconis
h_FR_DI<- 2 * IQR(c_metric$dist) * length(c_metric$dist)^(-1/3)
h_FR_DI
length(c_metric$dist)/h_Scott
length(c_metric$dist)/h_FR_DI
hist(c_metric$dist, breaks = length(c_metric$dist)/h_Scott)
hist(c_metric$dist, breaks="Scott")
hist(c_metric$dist, breaks = length(c_metric$dist)/h_FR_DI)
hist(c_metric$dist, breaks="FD")
hist(c_metric$speed)

##Normal rule
   
##кривая плостности 

        
