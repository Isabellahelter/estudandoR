#Exercicios primeira aula
#Exercicio 1) Gere um DataFrame que é uma "grade" 100x100
#Solução: tentei mas nao consegui
#Exercicio 2) Faça um loop para obter a média de todas as variáveis da base de dados longley
#Solução:
data("longley")
media_acumulada = vector()
for(i in 1:ncol(longley)){
  media_acumulada[i] = print(mean(longley[[i]]))
}
media_acumulada

#Exercicio 3) Ache a média de cada ano e de cada mês na base AirPassengers
#Solução:
data("AirPassengers")
#a base de dados é uma serie temporal, entao vou transforma-la em um data frame
install.packages("xts")
library("xts")
library(tidyselect)
tsx <- as.xts(datasets::AirPassengers)
df <- data.frame(date=index(tsx), passageiros=coredata(tsx))
df
#vou inserir uma coluna com os meses relacionados a numeros pra facilitar a leitura dos dados
df$month<- c(seq(month.name))
df
#tentei fazer o loop com o for mas nao deu certo, entao comecei a calcular a media um por um
jan=df[df$month==1,]
mediajan=mean(jan$passageiros)
fev=df[df$month==2,]
mediafev=mean(jan$passageiros)
mar=df[df$month==3,]
mediamar=mean(jan$passageiros)
abr=df[df$month==4,]
mediaabr=mean(jan$passageiros)
mai=df[df$month==5,]
mediamai=mean(jan$passageiros)
jun=df[df$month==6,]
mediajun=mean(jan$passageiros)
jul=df[df$month==7,]
mediajul=mean(jan$passageiros)
ago=df[df$month==8,]
mediaago=mean(jan$passageiros)
set=df[df$month==9,]
mediaset=mean(jan$passageiros)
out=df[df$month==10,]
mediaout=mean(jan$passageiros)
nov=df[df$month==11,]
medianov=mean(jan$passageiros)
dez=df[df$month==12,]
mediadez=mean(jan$passageiros)
#percebendo a merda enorme que estava tentei fazer de outro jeito
dados=read.table(text='indice date passageiros month
                 1   jan 1949         112     1
                 2   fev 1949         118     2
                 3   mar 1949         132     3
                 4   abr 1949         129     4
                 5   mai 1949         121     5
                 6   jun 1949         135     6
                 7   jul 1949         148     7
                 8   ago 1949         148     8
                 9   set 1949         136     9
                 10  out 1949         119    10
                 11  nov 1949         104    11
                 12  dez 1949         118    12
                 13  jan 1950         115     1
                 14  fev 1950         126     2
                 15  mar 1950         141     3
                 16  abr 1950         135     4
                 17  mai 1950         125     5
                 18  jun 1950         149     6
                 19  jul 1950         170     7
                 20  ago 1950         170     8
                 21  set 1950         158     9
                 22  out 1950         133    10
                 23  nov 1950         114    11
                 24  dez 1950         140    12
                 25  jan 1951         145     1
                 26  fev 1951         150     2
                 27  mar 1951         178     3
                 28  abr 1951         163     4
                 29  mai 1951         172     5
                 30  jun 1951         178     6
                 31  jul 1951         199     7
                 32  ago 1951         199     8
                 33  set 1951         184     9
                 34  out 1951         162    10
                 35  nov 1951         146    11
                 36  dez 1951         166    12
                 37  jan 1952         171     1
                 38  fev 1952         180     2
                 39  mar 1952         193     3
                 40  abr 1952         181     4
                 41  mai 1952         183     5
                 42  jun 1952         218     6
                 43  jul 1952         230     7
                 44  ago 1952         242     8
                 45  set 1952         209     9
                 46  out 1952         191    10
                 47  nov 1952         172    11
                 48  dez 1952         194    12
                 49  jan 1953         196     1
                 50  fev 1953         196     2
                 51  mar 1953         236     3
                 52  abr 1953         235     4
                 53  mai 1953         229     5
                 54  jun 1953         243     6
                 55  jul 1953         264     7
                 56  ago 1953         272     8
                 57  set 1953         237     9
                 58  out 1953         211    10
                 59  nov 1953         180    11
                 60  dez 1953         201    12
                 61  jan 1954         204     1
                 62  fev 1954         188     2
                 63  mar 1954         235     3
                 64  abr 1954         227     4
                 65  mai 1954         234     5
                 66  jun 1954         264     6
                 67  jul 1954         302     7
                 68  ago 1954         293     8
                 69  set 1954         259     9
                 70  out 1954         229    10
                 71  nov 1954         203    11
                 72  dez 1954         229    12
                 73  jan 1955         242     1
                 74  fev 1955         233     2
                 75  mar 1955         267     3
                 76  abr 1955         269     4
                 77  mai 1955         270     5
                 78  jun 1955         315     6
                 79  jul 1955         364     7
                 80  ago 1955         347     8
                 81  set 1955         312     9
                 82  out 1955         274    10
                 83  nov 1955         237    11
                 84  dez 1955         278    12
                 85  jan 1956         284     1
                 86  fev 1956         277     2
                 87  mar 1956         317     3
                 88  abr 1956         313     4
                 89  mai 1956         318     5
                 90  jun 1956         374     6
                 91  jul 1956         413     7
                 92  ago 1956         405     8
                 93  set 1956         355     9
                 94  out 1956         306    10
                 95  nov 1956         271    11
                 96  dez 1956         306    12
                 97  jan 1957         315     1
                 98  fev 1957         301     2
                 99  mar 1957         356     3
                 100 abr 1957         348     4
                 101 mai 1957         355     5
                 102 jun 1957         422     6
                 103 jul 1957         465     7
                 104 ago 1957         467     8
                 105 set 1957         404     9
                 106 out 1957         347    10
                 107 nov 1957         305    11
                 108 dez 1957         336    12
                 109 jan 1958         340     1
                 110 fev 1958         318     2
                 111 mar 1958         362     3
                 112 abr 1958         348     4
                 113 mai 1958         363     5
                 114 jun 1958         435     6
                 115 jul 1958         491     7
                 116 ago 1958         505     8
                 117 set 1958         404     9
                 118 out 1958         359    10
                 119 nov 1958         310    11
                 120 dez 1958         337    12
                 121 jan 1959         360     1
                 122 fev 1959         342     2
                 123 mar 1959         406     3
                 124 abr 1959         396     4
                 125 mai 1959         420     5
                 126 jun 1959         472     6
                 127 jul 1959         548     7
                 128 ago 1959         559     8
                 129 set 1959         463     9
                 130 out 1959         407    10
                 131 nov 1959         362    11
                 132 dez 1959         405    12
                 133 jan 1960         417     1
                 134 fev 1960         391     2
                 135 mar 1960         419     3
                 136 abr 1960         461     4
                 137 mai 1960         472     5
                 138 jun 1960         535     6
                 139 jul 1960         622     7
                 140 ago 1960         606     8
                 141 set 1960         508     9
                 142 out 1960         461    10
                 143 nov 1960         390    11
                 144 dez 1960         432    12', header=TRUE)
mediadosmeses = aggregate(passageiros ~ month, dados, subset = date %in% 1949:1960, FUN = mean)
mediadosmeses
mediadosanos = aggregate(passageiros ~ date, dados, subset = month %in% 1:12, FUN = mean)
mediadosanos
#ficou melhor desse jeito mas ainda acho que deve existir uma solução mais facil/rapida
#Exercicio 4) A base LifeCycleSavings contém dados de estrutura etária e renda. Localize a documentação da base para descobrir o que é cada variável e defina um DataFrame que contém todos os países com taxa de crescimento da renda disponível maior do que 3%.
#Solução:
data("LifeCycleSavings")
head(LifeCycleSavings)
class(LifeCycleSavings)
str(LifeCycleSavings)
LifeCycleSavings
txcresacimade3 = LifeCycleSavings[LifeCycleSavings$ddpi>3,]
#acho que deu certo assim mas queria fazer de outro jeito, lendo a tabela e usando outra função mas da erro:
dados1 = read.table(text = '                  paises pop15 pop75     dpi  txcres
                    Australia      11.43 29.35  2.87 2329.68  2.87
                    Austria        12.07 23.32  4.41 1507.99  3.93
                    Belgium        13.17 23.80  4.43 2108.47  3.82
                    Bolivia         5.75 41.89  1.67  189.13  0.22
                    Brazil         12.88 42.19  0.83  728.47  4.56
                    Canada          8.79 31.72  2.85 2982.88  2.43
                    Chile           0.60 39.74  1.34  662.86  2.67
                    China          11.90 44.75  0.67  289.52  6.51
                    Colombia        4.98 46.64  1.06  276.65  3.08
                    Costa Rica     10.78 47.64  1.14  471.24  2.80
                    Denmark        16.85 24.42  3.93 2496.53  3.99
                    Ecuador         3.59 46.31  1.19  287.77  2.19
                    Finland        11.24 27.84  2.37 1681.25  4.32
                    France         12.64 25.06  4.70 2213.82  4.52
                    Germany        12.55 23.31  3.35 2457.12  3.44
                    Greece         10.67 25.62  3.10  870.85  6.28
                    Guatamala       3.01 46.05  0.87  289.71  1.48
                    Honduras        7.70 47.32  0.58  232.44  3.19
                    Iceland         1.27 34.03  3.08 1900.10  1.12
                    India           9.00 41.31  0.96   88.94  1.54
                    Ireland        11.34 31.16  4.19 1139.95  2.99
                    Italy          14.28 24.52  3.48 1390.00  3.54
                    Japan          21.10 27.01  1.91 1257.28  8.21
                    Korea           3.98 41.74  0.91  207.68  5.81
                    Luxembourg     10.35 21.80  3.73 2449.39  1.57
                    Malta          15.48 32.54  2.47  601.05  8.12
                    Norway         10.25 25.95  3.67 2231.03  3.62
                    Netherlands    14.65 24.71  3.25 1740.70  7.66
                    New Zealand    10.67 32.61  3.17 1487.52  1.76
                    Nicaragua       7.30 45.04  1.21  325.54  2.48
                    Panama          4.44 43.56  1.20  568.56  3.61
                    Paraguay        2.02 41.18  1.05  220.56  1.03
                    Peru           12.70 44.19  1.28  400.06  0.67
                    Philippines    12.78 46.26  1.12  152.01  2.00
                    Portugal       12.49 28.96  2.85  579.51  7.48
                    South Africa   11.14 31.94  2.28  651.11  2.19
                    South Rhodesia 13.30 31.92  1.52  250.96  2.00
                    Spain          11.77 27.74  2.87  768.79  4.35
                    Sweden          6.86 21.44  4.54 3299.49  3.01
                    Switzerland    14.13 23.49  3.73 2630.96  2.70
                    Turkey          5.13 43.42  1.08  389.66  2.96
                    Tunisia         2.81 46.12  1.21  249.87  1.13
                    United Kingdom  7.81 23.27  4.46 1813.93  2.01
                    United States   7.56 29.81  3.43 4001.89  2.45
                    Venezuela       9.22 46.40  0.90  813.39  0.53
                    Zambia         18.56 45.25  0.56  138.33  5.14
                    Jamaica         7.72 41.12  1.73  380.47 10.23
                    Uruguay         9.24 28.13  2.72  766.54  1.88
                    Libya           8.89 43.69  2.07  123.58 16.71
                    Malaysia        4.71 47.20  0.66  242.69  5.08', header = TRUE)

#sempre que eu tento ler essa tabela da um erro que eu nao consegui entender

#Exercicio 5)A base mtcars contém dados de modelos diferentes de carros e todas as suas variáveis são numéricas. Transforme todas as variáveis categórias, o número de cilindros, de marchas e de carburadores em fatores.
#Solução:
data("mtcars")
mtcars$cyl = as.factor("cyl")
mtcars$gear = as.factor("gear")
mtcars$carb = as.factor("carb")
#fiz assim mas acho que ta errado pq foi muito obvio 
#SEGUNDA AULA
#Exercicio 1)Abra o arquivo exercicio1.Rds e teste se ele adere à uma distribuição t de Student com 5, 10 ou 15 graus de liberdade.
#Solução:
ks.test(exercicio1,
  "pt",
  df=5)
#p-valor pequeno, rejeita a hipotese de aderencia(?)
ks.test(exercicio1,
        "pt",
        df=10)
#p-valor razoavelmente grande, não rejeita a hipotese de aderencia(?)
ks.test(exercicio1,
        "pt",
        df=15)
#p-valor razoavelmente grande, não rejeita a hipotese de aderencia(?)

#Exercicio2)Abra o arquivo exercicio2.Rds e teste se os dados aderem à uma Normal com média 0 e variância 10
#Solução:
ks.test(exercicio1,
        "pnorm",
        mean=0,
        sd = sqrt(10))
#p-valor muito baixo, então vai rejeitar a aderência dos dados a uma normal(?)

install.packages("readxl")
library(readxl)
install.packages("haven")
library(haven)
library(haven)
exercicio3 <- read_dta("C:/Users/isabe/Downloads/Aula 2 - Importando e Simulando Dados/exercicio3.dta")
View(exercicio3)
is.numeric(exercicio3)
#nao consegui fazer esse
