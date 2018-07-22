datos
================

Este paquete provee el conjuntos de datos ya traducidos que van a ser la
base para la traducción del libro R4DS. La idea es, eventualmente,
publicar este paquete en CRAN, para que los lectores puedan hacer los
ejercicios.

## Instalación

El paquete está disponible en GitHub, y puede ser instalando utilizando
`devtools`:

    devtools::install_github("cienciadedatos/datos")

## Uso

Después de instalar el paquete. Utilice la función `data()` para ver qué
sets de datos están disponibles:

``` r
data(package = "datos")
```

El resultado será algo así:

``` 
Data sets in package ‘datos’:

diamantes                           Precio de 50,000 diamantes
millas                              
paises                              
vuelos                              
```

Después puede utilizar el paquete para sus ejercicios o para la
traducción:

``` r
library(datos)
dplyr::glimpse(diamantes)
```

    ## Observations: 53,940
    ## Variables: 9
    ## $ precio      <int> 326, 326, 327, 334, 335, 336, 336, 337, 337, 338, ...
    ## $ quilate     <dbl> 0.23, 0.21, 0.23, 0.29, 0.31, 0.24, 0.24, 0.26, 0....
    ## $ corte       <ord> Ideal, Premium, Bueno, Premium, Bueno, Muy bueno, ...
    ## $ claridad    <ord> SI2, SI1, VS1, VS2, SI2, VVS2, VVS1, SI1, VS2, VS1...
    ## $ profundidad <dbl> 61.5, 59.8, 56.9, 62.4, 63.3, 62.8, 62.3, 61.9, 65...
    ## $ tabla       <dbl> 55, 61, 65, 58, 58, 57, 57, 55, 61, 61, 55, 56, 61...
    ## $ x           <dbl> 3.95, 3.89, 4.05, 4.20, 4.34, 3.94, 3.95, 4.07, 3....
    ## $ `TRUE`      <dbl> 3.98, 3.84, 4.07, 4.23, 4.35, 3.96, 3.98, 4.11, 3....
    ## $ z           <dbl> 2.43, 2.31, 2.31, 2.63, 2.75, 2.48, 2.47, 2.53, 2....

Estos datos tambien tendrán su propio archivo de ayuda.

``` r
?diamantes
```

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

### Usando `datalang`

El paquete `datalang` es el que se va a utilizar para hacer la
traduccion del los datos. Para instalar use:

``` r
# install.packages("devtools")
devtools::install_github("edgararuiz/datalang")
```

Despues de grabar el archivo en su *Working Directory*, utilize la
función `translate_data()`

``` r
library(datalang)
translate_data(ggplot2::mpg, "mi_traduccion.yml")
```

Hay un archivo pre-grabado en el paquete para demostrar qué debería
pasar:

``` r
library(datalang)
t <- translate_data(ggplot2::diamonds, system.file("specs/diamonds.yml", package = "datos"))
head(t)
```

    ## # A tibble: 6 x 9
    ##   precio quilate corte     claridad profundidad tabla     x `TRUE`     z
    ##    <int>   <dbl> <ord>     <ord>          <dbl> <dbl> <dbl>  <dbl> <dbl>
    ## 1    326   0.230 Ideal     SI2             61.5   55.  3.95   3.98  2.43
    ## 2    326   0.210 Premium   SI1             59.8   61.  3.89   3.84  2.31
    ## 3    327   0.230 Bueno     VS1             56.9   65.  4.05   4.07  2.31
    ## 4    334   0.290 Premium   VS2             62.4   58.  4.20   4.23  2.63
    ## 5    335   0.310 Bueno     SI2             63.3   58.  4.34   4.35  2.75
    ## 6    336   0.240 Muy bueno VVS2            62.8   57.  3.94   3.96  2.48

## Actualizando el paquete

Si quiere actualizar el paquete entero, utilize el commando:
`datalang::translate_folder()`. Este comando va a crear las
traducciones, los archivos de ayuda, y los va a grabar en el lugar
apropiado.

## Compartir traducciones

Una vez completado el archivo YAML, mándelo por medio de un Issue en
GitHub, o por medio del canal oficial del proyecto en Slack.
