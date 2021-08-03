### ------------------------------------------- ###
###  Ejemplo mínimo. Rvest                      ###
### ------------------------------------------- ###

library(rvest) # Descarga 
library(tidyverse) # Pipe %>%

read_html("http://www.cervantesvirtual.com/obra-visor/la-casa-holgona-entremes--0/html/ff1ee910-82b1-11df-acc7-002185ce6064_5.html") %>%
html_text2() %>%
writeLines("calderon_lacasaholgona.txt")

# Paso a paso

url = 'https://artelope.uv.es/biblioteca/textosAL/AL0565_ContraValorNoHayDesdicha.php' # asigna la url a una variable
site = read_html(url) # descarga la url
text = html_text2(site) # pasa a texto plano
# text = html_text2(html_elements(site, '.verso')) # posible extraer elementos concretos. En este caso al atributo class="verso". Atención, no todos los tipos de verso...
writeLines(text, "lope_AL0565_ContraValorNoHayDesdicha.txt") # Lo guarda en el disco con el nombre elegido.