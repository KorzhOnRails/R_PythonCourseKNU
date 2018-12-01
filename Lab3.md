# Task 1
**Функція add2(x, y), яка повертає суму двох чисел.**
```r
add2 <- function(a,b){
  a+b
}
```
*Результат роботи функції*
```r
add2(3.1,4.5)
[1] 7.6
```

# Task 2

**Функція above(x, n), яка приймає вектор та число n, та повертає всі елементі вектору, які більше n. По замовчуванню n = 10.**
```r
above <- function(x,n = 10){
  x[x>n]
}
```
*Результат роботи функції*
```r
above(c(1:15),5)
 [1]  6  7  8  9 10 11 12 13 14 15

above(c(1:15))
[1] 11 12 13 14 15
```
# Task 3
**Функція my_ifelse(x, exp, n), яка приймає вектор x, порівнює всі його елементи за допомогою exp з n, та повертає елементи вектору, які відповідають умові expression. Наприклад, my_ifelse(x, “>”, 0) повертає всі елементи x, які більші 0. Exp може дорівнювати “<”, “>”, “<=”, “>=”, “==”. Якщо exp не співпадає ні з одним з цих виразів, повертається вектор x.**
```r
my_ifelse <- function(x,exp,n = 10){
  if(exp == "<"){
    x[x < n]
  }else if(exp == ">"){
    x[x > n]
  }else if(exp == "<="){
    x[x <= n]
  }else if(exp == ">="){
    x[x >= n]
  }else if(exp == "=="){
    x[x == n]
  }else{
    x
  }
}
```
*Результат роботи функції*
```r
my_ifelse(c(1:5),"<",3)
[1] 1 2

my_ifelse(c(1:5),"<=",3)
[1] 1 2 3

my_ifelse(c(1:5),"==",3)
[1] 3

> my_ifelse(c(1:5),">",3)
[1] 4 5

> my_ifelse(c(1:5),">=",3)
[1] 3 4 5

```
# Task 4
**Функція columnmean(x, removeNA), яка розраховує середнє значення
(mean) по кожному стовпцю матриці, або data frame. Логічний параметр
removeNA вказує, чи видаляти NA значення. По замовчуванню він
дорівнює TRUE.**

```r
columnmean <- function(x, removeNA = TRUE){
  colmeans(x,na.rm = removeNA)
}
```
*Результат роботи функції*
```r
columnmean(matrix(c(1,2,3,NA,4,NA),nrow=2,ncol=3),removeNA = TRUE)
[1] 1.5 3.0 4.0

columnmean(matrix(c(1,2,3,NA,4,NA),nrow=2,ncol=3),removeNA = FALSE)
[1] 1.5  NA  NA

columnmean(matrix(c(1,2,3,NA,4,NA),nrow=2,ncol=3))
[1] 1.5 3.0 4.0

```