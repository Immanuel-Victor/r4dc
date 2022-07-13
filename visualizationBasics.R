# Introdução ao R4dc -----------------------------------------------------------

install.packages("tidyverse")
library(tidyverse)

# Importando Data para nosso projeto R -----------------------------------------

data("mpg")
?mpg #abre um help que indica o significado das nossas variáveis

#colocando nossos dados em um gráfico ------------------------------------------

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = class,y = drv))

# Template para criação de Graficos com ggplot2 --------------------------------
#ggplot(data = <DATA>) + 
#  <GEOM_FUNCTION>(mapping = aes(<MAPPING>))

# Estetizando graficos ---------------------------------------------------------

# Diferenciando por cor
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, color = class))

# Diferenciando por tamanho
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, size = class))
#> Warning: Using size for a discrete variable is not advised.

# Diferenciando por alpha/gradiente
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, alpha = class))

# Diferenciando por formato
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, shape = class))

# Colocando cor de forma manual
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy), color = "blue")

# Usando facetas para separar por as variáveis

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, color = class)) + 
  facet_wrap(~ class, nrow = 2)
