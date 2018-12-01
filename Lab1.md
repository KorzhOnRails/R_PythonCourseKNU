
# Task 1

**Створити змінні базових (atomic) типів.**

* Текстовий

```{r}
x<-"mad night"
class(x)
[1] "character"
```

* Числовий

```r
 y<- 243.5
 class(y)
[1] "numeric"
```

* Цілий

```r
  z<- 143L
  class(z)
[1] "integer"
```
* Комплексний

```r
  q<- 3+5i
  class(q)
[1] "complex"
```
* Логічний

```r
  b<- TRUE
  class(b)
[1] "logical"
```

# Task 2

**Створити вектори, які: містить послідовність з 5 до 75; містить числа 3.14, 2.71, 0, 13; 100 значень TRUE.**

* Містить послідовність з 5 до 75:
```r
 x<-c(5:75)
 x
 [1]  5  6  7  8  9 10 11 12 13 14 15 16
[13] 17 18 19 20 21 22 23 24 25 26 27 28
[25] 29 30 31 32 33 34 35 36 37 38 39 40
[37] 41 42 43 44 45 46 47 48 49 50 51 52
[49] 53 54 55 56 57 58 59 60 61 62 63 64
[61] 65 66 67 68 69 70 71 72 73 74 75
```

* Містить числа 3.14, 2.71, 0, 13

```r
 y<-c(3.14,2.71,0L,13L)
 y
[1]  3.14  2.71  0.00 13.00
```

* містить 100 значень TRUE

```r
 s<-с(rep(TRUE,100))
 s
  [1] TRUE TRUE TRUE TRUE TRUE TRUE TRUE
  [8] TRUE TRUE TRUE TRUE TRUE TRUE TRUE
 [15] TRUE TRUE TRUE TRUE TRUE TRUE TRUE
 [22] TRUE TRUE TRUE TRUE TRUE TRUE TRUE
 [29] TRUE TRUE TRUE TRUE TRUE TRUE TRUE
 [36] TRUE TRUE TRUE TRUE TRUE TRUE TRUE
 [43] TRUE TRUE TRUE TRUE TRUE TRUE TRUE
 [50] TRUE TRUE TRUE TRUE TRUE TRUE TRUE
 [57] TRUE TRUE TRUE TRUE TRUE TRUE TRUE
 [64] TRUE TRUE TRUE TRUE TRUE TRUE TRUE
 [71] TRUE TRUE TRUE TRUE TRUE TRUE TRUE
 [78] TRUE TRUE TRUE TRUE TRUE TRUE TRUE
 [85] TRUE TRUE TRUE TRUE TRUE TRUE TRUE
 [92] TRUE TRUE TRUE TRUE TRUE TRUE TRUE
 [99] TRUE TRUE
```
# Task 3

**Створити задану матрицю за допомогою matrix, та за допомогою cbind 
або rbind**

* За допомогою matrix
```r
m<- matrix(c(0.5,3.9,0,2,1.3,131,2.2,7,3.5,2.8,4.6,5.1),nrow=4,ncol=3)
m
     [,1]  [,2] [,3]
[1,]  0.5   1.3  3.5
[2,]  3.9 131.0  2.8
[3,]  0.0   2.2  4.6
[4,]  2.0   7.0  5.1
```
* За допомогою cbind
```r
m1<-c(0.5,3.9,0,2)
m2<-c(1.3,131,2.2,7)
m3<-c(1.3,131,2.2,7)
matr<-cbind(m1,m2,m3)
matr
      m1    m2    m3
[1,] 0.5   1.3   1.3
[2,] 3.9 131.0 131.0
[3,] 0.0   2.2   2.2
[4,] 2.0   7.0   7.0
```
# Task 4

**Створити довільний список (list), в який включити всі базові типи.** 

```r
li<-list(2L,2,"hello",2+3i,FALSE)
 li
[[1]]
[1] 2

[[2]]
[1] 2

[[3]]
[1] "hello"

[[4]]
[1] 2+3i

[[5]]
[1] FALSE
```
# Task 5

**Створити фактор з трьома рівнями «baby», «child», «adult».**

```r
f<-factor(c("baby","child","adult","baby","adult","baby","child"))
 f
[1] baby  child adult baby  adult baby 
[7] child
Levels: adult baby child
```
# Task 6

**Знайти індекс першого значення NA в векторі 1, 2, 3, 4, NA, 6, 7, NA, 9, NA, 11. Знайти кількість значень NA.**

* Індекс першого значення NA :
```r
vec <- c(1,2,3,4,NA,6,7,NA,9,NA,11)
 match(NA,vec)
[1] 5
```
* Кількість значень NA :
```r
sum(is.na(vec))
[1] 3
```
# Task 7

**Створити довільний data frame та вивести в консоль.**

```r
rec <- data.frame(country = c("Germany","Ukraine","UK"), greeting = c("Guten Abend","Dobriy den","Good day"))
 rec
  country    greeting
1 Germany Guten Abend
2 Ukraine  Dobriy den
3      UK    Good day
```
# Task 8

**Змінити імена стовпців цього data frame.**

```r
 names(rec) <- c("state","salutation")
 rec
    state  salutation
1 Germany Guten Abend
2 Ukraine  Dobriy den
3      UK    Good day
```