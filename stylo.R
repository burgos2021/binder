### ------------------------------------------- ###
###  Ejemplo mínimo. Stylo                      ###
### ------------------------------------------- ###

library(stylo)
library(tidyverse)

resultado = stylo(gui = F, 
                  corpus.dir = "corpus", # ruta a los textos. Por defecto corpus
                  mfw.min = 500, 
                  mfw.max = 500,
                  # mfw.incr = 500, 
                  analysis.type = "CA",
                  # analysis.type = "BCT",
                  corpus.lang = "Spanish",
                  # corpus.format = "xml",
                  # distance.measure="wurzburg",
                  distance.measure="delta",
                  display.on.screen = T,
                  dendrogram.layout.horizontal = T
)

# Tabla de distancias
distances <- as.data.frame(t(resultado$distance.table))

# Distancia de una obra respecto a las demás.
df = select(distances, 4) %>% # Seleccione la obra según el nº de columna. 
  rownames_to_column(., var = "obras")

# df = df[df[,2] != 0,]  # Elimina de la tabla la obra. 