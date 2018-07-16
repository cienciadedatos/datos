datos
================

Actualmente, el paquete `datos` tiene dos funciones:

1.  Provee los conjuntos de datos ya traducidos que van a ser la base para la traducción del libro R4DS. La idea es, eventualmente, publicar este paquete en CRAN, para que los lectores puedan hacer los ejercicios.

2.  Provee una manera de facilitar las traducciones de conjuntos de datos mediante el uso de un archivo YAML. Esto permite evitar código repetitivo, y abre las puertas a más usuarios a proveer traducciones de los nombres de las variables y sus valores. Este método va a permitir, además, traducir los mismos conjuntos de datos en otros idiomas.

Eventualmente, este paquete va a ser dividido en dos paquetes que se concentrarán en una de las dos funciones. Esto permitirá reducir el número de dependencias del paquete `datos`, y permitirá que el mismo método pueda ser utilizado para traducir los conjuntos de datos en otros idiomas.

Instalación
-----------

El paquete está disponible en GitHub, y puede ser installado utilizando `devtools`:

    devtools::install_github("cienciadedatos/datos")

Uso
---

Después de instalar el paquete. Utilice la función `data()` para ver qué sets de datos están disponibles:

``` r
data(package = "datos")
```

El resultado será algo así:

    Data sets in package ‘datos’:

    diamantes                 
    millas       

Después puede utilizar el paquete para sus ejercicios o para la traducción:

``` r
library(datos)
dplyr::glimpse(millas)
```

    ## Observations: 234
    ## Variables: 11
    ## $ fabricante <chr> "audi", "audi", "audi", "audi", "audi", "audi", "au...
    ## $ modelo     <chr> "a4", "a4", "a4", "a4", "a4", "a4", "a4", "a4 quatt...
    ## $ despl      <dbl> 1.8, 1.8, 2.0, 2.0, 2.8, 2.8, 3.1, 1.8, 1.8, 2.0, 2...
    ## $ anio       <int> 1999, 1999, 2008, 2008, 1999, 1999, 2008, 1999, 199...
    ## $ cilindros  <int> 4, 4, 4, 4, 6, 6, 6, 4, 4, 4, 4, 6, 6, 6, 6, 6, 6, ...
    ## $ trans      <chr> "auto(l5)", "manual(m5)", "manual(m6)", "auto(av)",...
    ## $ traccion   <fct> d, d, d, d, d, d, d, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, ...
    ## $ cuidad     <int> 18, 21, 20, 21, 16, 18, 18, 18, 16, 20, 19, 15, 17,...
    ## $ autopista  <int> 29, 29, 31, 30, 26, 26, 27, 26, 25, 28, 27, 25, 25,...
    ## $ combust    <chr> "p", "p", "p", "p", "p", "p", "p", "p", "p", "p", "...
    ## $ clase      <fct> compacto, compacto, compacto, compacto, compacto, c...

Traducciones
------------

Después de instalar el paquete. La parte más importante es el archivo YAML; aquí hay una muestra de cómo se traduce el set de datos `ggplot2::mpg`:

``` yml
variables:
  manufacturer:
    trans: fabricante
  model:
    trans: modelo
  displ:
    trans: cilindrada
  year:
    trans: anio
  cyl:
    trans: cilindros
  trans:
    trans: transmision
  drv:
    trans: traccion
    values:
      f: d
      r: t
      4: 4
  cty:
    trans: ciudad
  hwy:
    trans: autopista
  fl:
    trans: combustible
    values:
      p: p
      r: r
      e: e
      d: d
      c: g
  class:
    trans: clase
    values:
      2seater: 2asientos
      compact: compacto
      midsize: mediano
      minivan: minivan
      pickup: pickup
      subcompact: subcompacto
      suv: suv
```

Crear un nuevo archivo YAML es fácil. Se puede crear en RStudio abriendo un nuevo archivo *text* o usando Notepad.

Lo importante es usar los espacios y los dos puntos en los lugares apropiados. Utilice la muestra para saber cuál es el patrón a seguir.

Despues de grabar el archivo en su *Working Directory*, utilize la función `translate_data()`

``` r
library(datos)
translate_data(ggplot2::mpg, "mi_traduccion.yml")
```

Hay un archivo pre-grabado en el paquete para demostrar qué debería pasar:

``` r
library(datos)
t <- translate_data(ggplot2::mpg, pkg_spec("mpg.yml"))
head(t)
```

    ## # A tibble: 6 x 11
    ##   fabricante modelo cilindrada  anio cilindros transmision traccion ciudad
    ##   <chr>      <chr>       <dbl> <int>     <int> <chr>       <fct>     <int>
    ## 1 audi       a4            1.8  1999         4 auto(l5)    d            18
    ## 2 audi       a4            1.8  1999         4 manual(m5)  d            21
    ## 3 audi       a4            2    2008         4 manual(m6)  d            20
    ## 4 audi       a4            2    2008         4 auto(av)    d            21
    ## 5 audi       a4            2.8  1999         6 auto(l5)    d            16
    ## 6 audi       a4            2.8  1999         6 manual(m5)  d            18
    ## # ... with 3 more variables: autopista <int>, combustible <fct>,
    ## #   clase <fct>

Compartir traducciones
----------------------

Una vez completado el archivo YAML, mándelo por medio de un Issue en GitHub, o por medio del canal oficial del proyecto en Slack.
