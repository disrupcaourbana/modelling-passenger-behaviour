#Modelagem de Equações Estruturais

install.library ("lavaan") #Instale o pacote lavaan

library(lavaan) #Execute o pacote lavaan

install.library ("semTools") #Instale o pacote semTools

library(semTools) #Execute o pacote semTools

myData <- read.csv("C:/Users/Doron64bit/Desktop/sigal/Dropbox/radiation 
anat gil/cfa/radiation_cfa_data.csv", header=TRUE) #Carregue o conjunto de dados em formato .csv, para isso, mude o caminho do arquivo

#Modelagem de Equações Estruturais
#Siga a estrutura do modelo de acordo com a Análise Fatorial Exploratória observada
#Mude de acordo com a sua análise

HS.model <- ' 
 F1 =~ Q29_1 + Q29_2 + Q29_3 + Q29_4 + Q29_5 + Q29_6 + Q29_7 
+ Q29_8
 F2 =~ Q30_1 + Q30_2 + Q30_3 + Q30_4 + Q30_5 + Q30_6 + Q30_7
 F3 =~ Q35_1 + Q35_2 + Q35_3 + Q35_4 + Q35_5 + Q36_1 + Q36_2 
+ Q36_3 + Q36_4 + Q36_5
 F4 =~ Q37_1 + Q37_2 + Q37_3 + Q37_4 + Q37_5
 F5 =~ Q38_1 + Q38_2 + Q38_3 + Q38_4 + Q38_5
 F6 =~ Q39_1 + Q39_2 + Q39_3 + Q39_4
 F7 =~ Q40_1 + Q40_2 + Q40_3 + Q40_4 + Q40_6 '

#Comando para executar a Análise Fatorial Confirmatória (CFA, em inglês)
#Obter uma solução padronizada e medidas de confiabilida de CFA (omega)
#As medidas de confiabilidade devem ser maiores que 0,5.

CFA_cong <- cfa(HS.model,myData,std.lv=TRUE,ordered=names(myData))
summary(CFA_cong, fit.measures=TRUE)
reliability(CFA_cong)