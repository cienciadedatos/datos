
# datos <img src="man/figures/logo.png" align="right" width = "120px"/>

[![CRAN
status](https://www.r-pkg.org/badges/version/datos)](https://cran.r-project.org/package=datos)
[![Travis-CI Build
Status](https://travis-ci.org/cienciadedatos/datos.svg?branch=master)](https://travis-ci.org/cienciadedatos/datos)
[![Coverage
status](https://codecov.io/gh/cienciadedatos/datos/branch/master/graph/badge.svg)](https://codecov.io/github/cienciadedatos/datos?branch=master)

Este paquete provee la traducción al español de conjuntos de datos en
inglés originalmente disponibles en otros paquetes de R. Los datos
traducidos son los que se utilizan en los ejemplos del libro [R para
Ciencia de Datos](https://es.r4ds.hadley.nz/), la versión en español de
[R for Data Science](https://r4ds.had.co.nz/) de Hadley Wickham &
Garrett Grolemund. El paquete `datos` puede utilizarse junto con el
libro o de manera independiente como fuente de datos de práctica en
español.

## Instalación

La versión en CRAN está disponible por medio de:

``` r
# install.packages("datos")
```

La versión en GitHub puede ser instalada utilizando `remotes`:

``` r
# install.packages("remotes")
# remotes::install_github("cienciadedatos/datos")
```

## Requisitos

Este paquete traduce los datos **en el momento**. Esto implica que la
versión en español de los datos no está contenida como un objeto dentro
del paquete, sino que se genera al momento de utilizarlos. Por lo tanto,
para poder usar `datos`, **el paquete que contiene los datos originales
en inglés debe estar previamente instalado**.

Los paquetes necesarios son:

| Paquetes     |
| :----------- |
| nycflights13 |
| nasaweather  |
| babynames    |
| Lahman       |
| ggplot2      |
| datasets     |
| gapminder    |
| forcats      |
| tibble       |
| tidyr        |
| fueleconomy  |

El paquete `datasets` es parte de R base y `ggplot2`, `tibble`, `tidyr`,
`readr` y `forcats` vienen incluidos en el paquete `tidyverse`. Todos
los demás deben instalarse individualmente.

## Traducciones

Las traducciones disponibles dentro de `datos` son las siguientes:

| Nombre        | Título                                                                                   | Dataset original                |
|:--------------|:-----------------------------------------------------------------------------------------|:--------------------------------|
| aerolineas    | Nombres de aerolíneas                                                                    | nycflights13::airlines          |
| aeropuertos   | Datos de aeropuertos                                                                     | nycflights13::airports          |
| atmosfera     | Datos atmosféricos                                                                       | nasaweather::atmos              |
| aviones       | Datos de aviones                                                                         | nycflights13::planes            |
| bateadores    | Tabla de bateadores                                                                      | Lahman::Batting                 |
| clima         | Datos de clima                                                                           | nycflights13::weather           |
| datos-stringr | Vectores de caracteres dentro del paquete stringr                                        | incluidos en el paquete stringr |
| diamantes     | Precio de 50.000 diamantes                                                               | ggplot2::diamonds               |
| encuesta      | Muestra de variables categóricas de una encuesta social                                  | forcats::gss\_cat               |
| fiel          | Datos del géiser Viejo Fiel (Old Faithful)                                               | datasets::faithful              |
| flores        | Datos sobre la flor Iris de Edgar Anderson                                               | datasets::iris                  |
| millas        | Datos de economía de combustible de 1999 y 2008 para 38 modelos populares de automóviles | ggplot2::mpg                    |
| mtautos       | Pruebas de ruta de automóviles de Motor Trend                                            | datasets::mtcars                |
| nombres       | Nombres de bebés                                                                         | babynames::babynames            |
| oms           | Datos de tuberculosis de la Organización Mundial de la Salud                             | tidyr::who                      |
| paises        | Datos de Gapminder                                                                       | gapminder::gapminder            |
| presidencial  | Periodos de 11 presidentes, desde Eisenhower a Obama                                     | ggplot2::presidential           |
| tabla1        | Registros de tuberculosis de la Organización Mundial de la Salud (1era variante)         | tidyr::table1                   |
| tabla2        | Registros de tuberculosis de la Organización Mundial de la Salud (2da variante)          | tidyr::table2                   |
| tabla3        | Registros de tuberculosis de la Organización Mundial de la Salud (3era variante)         | tidyr::table3                   |
| tabla4a       | Registros de tuberculosis de la Organización Mundial de la Salud (3era variante)         | tidyr::table4a                  |
| tabla4b       | Registros de tuberculosis de la Organización Mundial de la Salud (3era variante)         | tidyr::table4b                  |
| tabla5        | Registros de tuberculosis de la Organización Mundial de la Salud (3era variante)         | tidyr::table5                   |
| vehiculos     | Datos de economía de combustible                                                         | fueleconomy::vehicles           |
| vuelos        | Datos de vuelos                                                                          | nycflights13::flights           |

Los datos para practicar la manipulación de cadenas (*strings*) son
`oraciones`, `palabras` y `frutas`.

## Uso

El paquete `datos` se carga igual que todos los paquetes de R:

``` r
library(datos)
library(ggplot2)
library(dplyr)
```

Las variables que contienen los datos van a estar disponibles
inmediatamente para su uso, pero los datos no se traducirán hasta que la
variable sea “llamada” explícitamente en el código que se escriba. En
este ejemplo, el *dataset* `diamantes`, que proviene de
`ggplot2::diamonds`, se carga en la memoria de R en el momento en que lo
llamamos por primera vez en español:

``` r
glimpse(diamantes)
```

    ## Observations: 53,940
    ## Variables: 10
    ## $ precio      <int> 326, 326, 327, 334, 335, 336, 336, 337, 337, 338, 33…
    ## $ quilate     <dbl> 0.23, 0.21, 0.23, 0.29, 0.31, 0.24, 0.24, 0.26, 0.22…
    ## $ corte       <ord> Ideal, Premium, Bueno, Premium, Bueno, Muy bueno, Mu…
    ## $ color       <ord> E, E, E, I, J, J, I, H, E, H, J, J, F, J, E, E, I, J…
    ## $ claridad    <ord> SI2, SI1, VS1, VS2, SI2, VVS2, VVS1, SI1, VS2, VS1, …
    ## $ profundidad <dbl> 61.5, 59.8, 56.9, 62.4, 63.3, 62.8, 62.3, 61.9, 65.1…
    ## $ tabla       <dbl> 55, 61, 65, 58, 58, 57, 57, 55, 61, 61, 55, 56, 61, …
    ## $ x           <dbl> 3.95, 3.89, 4.05, 4.20, 4.34, 3.94, 3.95, 4.07, 3.87…
    ## $ y           <dbl> 3.98, 3.84, 4.07, 4.23, 4.35, 3.96, 3.98, 4.11, 3.78…
    ## $ z           <dbl> 2.43, 2.31, 2.31, 2.63, 2.75, 2.48, 2.47, 2.53, 2.49…

Los datos traducidos quedarán cargados durante toda la sesión de R:

``` r
diamantes %>%
  filter(corte == "Bueno") %>%
  ggplot() +
  geom_boxplot(aes(claridad, precio, fill = claridad)) +
  theme(legend.position = "none") +
  labs(title = "Diamantes", subtitle = "Precio y claridad")
```

<img src="man/figures/diamantes.png">

## Actualización del paquete

La actualización del paquete tiene múltiples pasos. Si se hacen cambios
a las traducciones, se debe ejecutar el siguiente código para que todas
las referencias estén al día.

``` r
# Crea los scripts de traducción
datos:::data_script()
# Crea los archivos de ayuda
datos:::folder_rd()
# Actualiza el sitio web
pkgdown::build_site()
# Cambia la referencia a tipo html
datos:::fix_reference()
```
