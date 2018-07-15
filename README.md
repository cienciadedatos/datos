datos
================

Actualmente, el paquete `datos` tiene dos funciones:

1.  Provee los sets de datos ya traducidos que van a ser la base para la
    traduccion del libro R4DS. La idea is the eventualmente publicar
    este paquete en CRAN, para que los estudiantes del libro puedan
    hacer los ejercicios.

2.  Provee una manera de facilitar las traducciones de sets de datos
    mediante el uso de una archivo YAML. Esto permite evitar codigo
    repititivo, y abre las puertas a mas usuarios a proveer traducciones
    del los nombres de las variables y sus valores. Este metodo va a
    permitir traducir los mismos sets de datos en otros idiomas ademas.

Eventualmente, este paquete va a ser dividido en dos paquetes que se
concentraran en uno de las dos funciones. Esto permitira reducir el
numero de dependencias del paquete `datos`, y permitira que el mismo
metodo pueda ser utilizado para traducir los sets de datos en otros
idiomas.

## Instalacion

El paquete esta disponible en GitHub, y puede ser installado utilizadon
`devtools`:

    devtools::install_github("cienciadedatos/datos")

## Uso

Despues de instalar el paquete. Utilice la funcion `data()` para ver que
sets de datos estan disponibles:

``` r
data(package = "datos")
```

El resultado sera algo asi:

``` 
Data sets in package ‘datos’:

diamantes                 
millas       
```

Despues puede utlizar el paquete para sus ejercicios or para la
traduccion:

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

## Traducciones

Despues de instalar el paquete. La parte mas importante es el archivo
YAML, aqui hay una muestra de como se traduce el set de datos
`ggplot2::diamonds`:

``` yml
variables:
  manufacturer:
    trans: fabricante
  model:
    trans: modelo
  displ:
    trans: despl
  year:
    trans: anio
  cyl:
    trans: cilindros
  trans:
    trans: trans
  drv:
    trans: traccion
    values:
      f: d
      r: t
      4: 4
  cty:
    trans: cuidad
  hwy:
    trans: autopista
  fl:
    trans: combust
  class:
    trans: clase
    values:
      2seater: 2asiesntos
      compact: compacto
      midsize: mediano
      minivan: van
      pickup: pickup
      subcompact: subcompacto
      suv: suv
```

Crear un nuevo archivo YAML es facil, se puede crear en RStudio mediante
abriendo un nuevo archivo *text* or usando Notepad.

Lo importante is usar los espacios is los doble puntos en los lugares
apropiados. Utilize la muestra para saber cual es el patron a seguir.

Despues de grabar el archivo en su *Working Directory*, utilize la
funcion `translate_data()`

``` r
library(datos)
translate_data(ggplot2::mpg, "mi_traduccion.yml")
```

Hay un archivo pre-grabado en el paquete para demonstrar que deberia
pasar:

``` r
library(datos)
t <- translate_data(ggplot2::mpg, pkg_spec("mpg.yml"))
head(t)
```

    ## # A tibble: 6 x 11
    ##   fabricante modelo despl  anio cilindros trans  traccion cuidad autopista
    ##   <chr>      <chr>  <dbl> <int>     <int> <chr>  <fct>     <int>     <int>
    ## 1 audi       a4       1.8  1999         4 auto(~ d            18        29
    ## 2 audi       a4       1.8  1999         4 manua~ d            21        29
    ## 3 audi       a4       2    2008         4 manua~ d            20        31
    ## 4 audi       a4       2    2008         4 auto(~ d            21        30
    ## 5 audi       a4       2.8  1999         6 auto(~ d            16        26
    ## 6 audi       a4       2.8  1999         6 manua~ d            18        26
    ## # ... with 2 more variables: combust <chr>, clase <fct>

## Compartir traducciones

Una ves completado el archivo YAMl, mandelo por medio de un Issue en
GitHub, or por medio del canal official del proyecto en Slack.
