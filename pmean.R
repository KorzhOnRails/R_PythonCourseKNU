#Створюємо функцію для конструювання повної назви файлу
getPath <- function(directory, id){
  
    paste0(directory,"/",if(id < 10) "00" else if(id < 100) "0" else "",as.character(id),".csv")
}

pmean <- function(directory, pollutant, id= 1:332){
  #тут будуть збережені дані з усього переліку
  totalData = data.frame()
  
  for(i in id){
    #зчитуємо дані одного монітора
    fileData <- read.csv(getPath(directory,i))
    #додаємо до totalData
    totalData <- rbind(totalData,fileData)
  }
  mean(totalData[,pollutant],na.rm = TRUE)
}

complete <- function(directory, id){
  #тут будуть збережені дані з усього переліку
  totalData = data.frame()
  totalData.rowNames = c("id","nobs")
  for(i in id){
    #зчитуємо дані одного монітора
    fileData <- read.csv(getPath(directory,i))
    #додаємо до totalData
    
    totalData <- rbind(totalData, data.frame(id = i,nobs = sum(complete.cases(fileData))))
  }
  return(totalData)
}

corr <- function(directory, threshold = 0){
  corrVect <- NULL
  # фрейм що містить назву файлу та кількість повних спостережень
  complete = complete(directory,1:332) 
  # назви файлів кількість повних спостережень яких більше за порогове значення
  сompleteIdThresholded = complete$id[complete$nobs > threshold] 
  
  for (i in сompleteIdThresholded){
    #зчитуємо дані одного монітора
    fileData <- read.csv(getPath(directory,i))
    fileData<-fileData[complete.cases(fileData),]
    corrVect <- c(corrVect, cor(fileData[,"sulfate"],fileData[,"nitrate"]))
  }
  
  if (length(corrVect) > 0) return(corrVect)
  
  return(c())
} 