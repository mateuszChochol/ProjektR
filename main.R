#Dokonać analizy struktury wyników sprawdzianu w obu grupach wyznaczając: miary położenia, zróżnicowania (dyspersji), asymetrii i skupienia dla szeregu szczegółowego. Następnie zbudować 2 szeregi rozdzielcze (dla każdej grupy) i wykonać histogramy rozkładów empirycznych. W oparciu o odpowiednio wybrane miary (jakie) oraz histogramy porównać wyniki sprawdzianu uzyskane w obu grupach.
#Sprawdzić, czy wyniki sprawdzianów w każdej grupie mają rozkład normalny za pomocą testu zgodności Kołmogorowa-Lillieforsa, przyjąć poziom istotności α=0.05.
#Czy na poziomie istotności α=0.05 można twierdzić, że średnia liczba punktów uzyskanych przez studentów grupy 1 wynosi 55?
#Czy na poziomie istotności α=0.05 można twierdzić, że odchylenie standardowe liczby punktów uzyskanych przez studentów grupy 2  wynosi  20?
#Czy studenci grupy 1 lepiej przygotowali się do sprawdzianu niż studenci grupy 2? Należy sformułować i zweryfikować odpowiednią hipotezę na poziomie istotności α=0.05.

#Ten kod odpowiada za pobieranie informacji z pliku i przypisanie ich do zmiennych
dataGroupOne <- read_delim("data_gr1.csv", delim = ";", escape_double = FALSE, trim_ws = TRUE)
dataGroupTwo <- read_delim("data_gr2.csv", delim = ";", escape_double = FALSE, trim_ws = TRUE)
Data_GrupaJeden <- dataGroupOne$grupajeden
Data_GrupaDwa <- dataGroupTwo$grupadwa

#Wyświetla dane 
Data_GrupaJeden
Data_GrupaDwa

#mean to funkcja licząca średnia arytmetyczna
mean(Data_GrupaJeden)
mean(Data_GrupaDwa)

#sd to funkcja licząca odchylenie standardowe
sd(Data_GrupaJeden)
sd(Data_GrupaDwa)

#dominanta
mode(Data_GrupaJeden)

