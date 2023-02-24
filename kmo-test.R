#Teste de adequação de amostra Kayser-Meyer-Olkin (KMO)

install.packages("parameters") #Instale o pacote parameters

library(parameters) #Execute o pacote parameters

install.packages("dplyr") #Instale o pacote dplyr

library(dplyr) #Execute o pacote dplyr

install.packages ("psych") #Instale o pacote psych

library(psych) #Execute o pacote psych

myData <- read.csv("C:/Users/55619/Documents/Data_2.csv", sep=";", 
                   header=TRUE) #Altere o caminho do arquivo que contém os dados e faça o carregamento

myData <- na.omit(myData) #Remova valores perdidos

KMO(myData) #Obtenha o KMO do conjunto de dados e cada item

cortest.bartlett(myData) #Faça o teste de esfericidade de Bartlett

check_factorstructure(myData) #Verificar a estrutura do fator (outra maneira de obter o KMO e o teste de Bartlett)
