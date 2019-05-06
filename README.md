datos
================

[![Travis-CI Build
Status](https://travis-ci.org/cienciadedatos/datos.svg?branch=master)](https://travis-ci.org/cienciadedatos/datos)
[![CRAN
status](https://www.r-pkg.org/badges/version/datos)](https://cran.r-project.org/package=datos)

Este paquete provee el conjuntos de datos ya traducidos que van a ser la
base para la traducción del libro R4DS. La idea es, eventualmente,
publicar este paquete en CRAN, para que los lectores del libro puedan
practicar los ejercicios en español.

## Instalación

El paquete está disponible en GitHub, y puede ser instalando utilizando
`devtools`:

    devtools::install_github("cienciadedatos/datos")

## Uso

Data sets in package
‘datos’:

| Nombre       | Título                                                                                   |
| :----------- | :--------------------------------------------------------------------------------------- |
| aerolineas   | Nombres de aerolíneas                                                                    |
| aeropuertos  | Datos de aeropuertos                                                                     |
| aviones      | Datos de aviones                                                                         |
| bateadores   | Tabla de bateadores                                                                      |
| clima        | Datos de clima                                                                           |
| diamantes    | Precio de 50.000 diamantes                                                               |
| encuesta     | Muestra de variables categóricas de una encuesta social                                  |
| fiel         | Datos del geiser Viejo Fiel (Old Faithful)                                               |
| millas       | Datos de economía de combustible de 1999 y 2008 para 38 modelos populares de automóviles |
| mtautos      | Pruebas de ruta de automóviles de Motor Trend                                            |
| oms          | Datos de tuberculosis de la Organización Mundial de la Salud                             |
| paises       | Datos de Gapminder                                                                       |
| presidencial | Periodos de 11 presidentes, desde Eisenhower a Obama                                     |
| tabla1       | Registros de tuberculosis de la Organización Mundial de la Salud (1era variante)         |
| tabla2       | Registros de tuberculosis de la Organización Mundial de la Salud (2da variante)          |
| tabla3       | Registros de tuberculosis de la Organización Mundial de la Salud (3era variante)         |
| tabla4a      | Registros de tuberculosis de la Organización Mundial de la Salud (3era variante)         |
| tabla4b      | Registros de tuberculosis de la Organización Mundial de la Salud (3era variante)         |
| tabla5       | Registros de tuberculosis de la Organización Mundial de la Salud (3era variante)         |
| vuelos       | Datos de vuelos                                                                          |

Después puede utilizar el paquete para sus ejercicios o para la
traducción:

``` r
library(datos)
dplyr::glimpse(diamantes)
```

    ## Registered S3 methods overwritten by 'ggplot2':
    ##   method         from 
    ##   [.quosures     rlang
    ##   c.quosures     rlang
    ##   print.quosures rlang

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

Estos datos tambien tendrán su propio archivo de ayuda.

``` r
?diamantes
```

    diamantes {datos}   R Documentation
    Precio de 50,000 diamantes
    
    Description
    
    Un set de datos que contiene los precios de casi 54,000 diamantes.
    
    Usage
    
    diamantes
    Format
    
    Un data.frame con 53,940 líneas y 10 variables
    
    precio
    Precio en dólares US (\$326–\$18,823)
    
    quilate
    Peso del diamante (0.2–5.01)
    
    corte
    Calidad del corte (Regular, Bueno, Muy bueno, Premium, Ideal)
    
    color
    Color del diamante, de J (peor) a D (mejor)
    
    claridad
    Medida de qué tan claro es el diamante (I1 (peor), SI1, SI2, VS1, VS2, VVS1, VVS2, IF (mejor))
    
    profundidad
    Porcentaje de la profundidad total = z / mean(x, y) = 2 * z / (x + y) (43–79)
    
    tabla
    Ancho de la parte superior del diamante con relación a su punto más ancho (43-95)
    
    x
    Largo en milímetros
    
    y
    Ancho en milímetros
    
    z
    Profundidad en milímetros
    
    [Package datos version 0.0.0.9000 Index]

## Traducciones

Despues de instalar el paquete. La parte mas importante es el archivo
YAML; aquí hay una muestra de cómo se traduce el set de datos
`ggplot2::diamonds`:

``` yml
df:
  source: ggplot2::diamonds
  name: diamantes
variables:
  price:
    trans: precio
    desc: Precio en dolares US
  carat:
    trans: quilate
    desc: Peso del diamante
  cut:
    trans: corte
    desc: Calided del corte
    values:
      Good: Bueno
      Very Good: Muy bueno
      Fair: Regular
  clarity:
    trans: claridad
    desc: Medida de que tan claro es el diamante
  depth:
    trans: profundidad
    desc: Porcentaje total de la profundidad
  table:
    trans: tabla
    desc: Medida de la parte mas ancha del diamante
  x:
    trans: x
    desc: Largo in milimetros
  y:
    trans: y
    desc: Ancho in milimetros
  z:
    trans: z
    desc: Profundidad en milimetros
help:
  name: diamantes
  alias: diamantes
  title: Precio de 50,000 diamantes
  description: Un set que contiene los precios de casi 54,000 diamantes.
  usage: diamantes
  format: Un data.frame con 53,940 lineas y 10 variables
```

Crear un nuevo archivo YAML es fácil. Se puede crear en RStudio abriendo
un nuevo archivo *text* o usando Notepad.

Lo importante es usar los espacios y los dos puntos en los lugares
apropiados. Utilice la muestra para saber cuál es el patrón a seguir.

## Compartir traducciones

Una vez completado el archivo YAML, mándelo por medio de un Issue en
GitHub, o por medio del canal oficial del proyecto en Slack.
