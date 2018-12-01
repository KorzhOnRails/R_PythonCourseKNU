# Task 1 
Написати функцію pmean, яка обчислює середнє значення (mean) забруднення сульфатами або нітратами серед заданого переліка моніторів. Ця функція приймає три аргументи: «directory», «pollutant», «id». Directory – папка, в якій розміщені дані, pollutant – вид забруднення, id – перелік моніторів. Аргумент id має значення за замовчуванням 1:332.
Функція повинна ігнорувати NA значення. 

*Результат роботи функції:*

```r
pmean('~/DataScience/R_python_course/Lab5data/specdata',"sulfate",1:10)
[1] 4.064128
```

```r
pmean('~/DataScience/R_python_course/Lab5data/specdata',"sulfate",55)
[1] 3.587319
```

```r
 pmean('~/DataScience/R_python_course/Lab5data/specdata',"nitrate")
[1] 1.702932
```
```r
pmean('~/DataScience/R_python_course/Lab5data/specdata',"sulfate")
[1] 3.189369
```
# Task 2
 Написати функцію complete, яка виводить кількість повних спостережень (the number of completely observed cases) для кожного файлу. Функція
приймає два аргументи: «Directory» та «id» та повертає data frame, в якому перший стовпчик – ім’я файлу, а другий – кількість повних спостережень. 

*Результат роботи функції:*

```r
 complete('~/DataScience/R_python_course/Lab5data/specdata',1:5)
   id nobs
1  1  117
2  2 1041
3  3  243
4  4  474
5  5  402
```

```r
 complete('~/DataScience/R_python_course/Lab5data/specdata',55:60)
  id nobs
1 55  372
2 56  642
3 57  452
4 58  391
5 59  445
```

# Task 3

 Написати функцію corr, яка приймає два аргументи: directory (папка, де
знаходяться файли спостережень) та threshold (порогове значення, за
замовчуванням дорівнює 0) та обчислює кореляцію між сульфатами та
нітратами для моніторів, кількість повних спостережень для яких більше
порогового значення. Функція повинна повернути вектор значень
кореляцій. Якщо ні один монітор не перевищує порогового значення,
функція повинна повернути numeric вектор довжиною 0. Для обчислення
кореляції між сульфатами та нітратами використовуйте вбудовану функцію 
«cor» з параметрами за замовчуванням.

*Результат роботи функції:*
```r
 cr<-corr('~/DataScience/R_python_course/Lab5data/specdata',200); head(cr); summary(cr)
[1] -0.01895754 -0.14051254 -0.04389737 -0.06815956 -0.12350667 -0.07588814
    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
-0.21057 -0.04415  0.09914  0.13286  0.26859  0.76313 
```
```r
cr<-corr('~/DataScience/R_python_course/Lab5data/specdata',400); head(cr); summary(cr)
[1] -0.01895754 -0.04389737 -0.06815956 -0.07588814  0.76312884 -0.15782860
    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
-0.17623 -0.03109  0.10021  0.13969  0.26849  0.76313 
```
```r
 cr<-corr('~/DataScience/R_python_course/Lab5data/specdata',5000); head(cr); summary(cr);length(cr)
NULL
Length  Class   Mode 
     0   NULL   NULL 
[1] 0
```