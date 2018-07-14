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
```

Despues puede utlizar el paquete para sus ejercicios or para la
traduccion:

``` r
library(datos)
head(diamantes)
```

    ##       corte claridad
    ## 1     Ideal      SI2
    ## 2   Premium      SI1
    ## 3     Bueno      VS1
    ## 4   Premium      VS2
    ## 5     Bueno      SI2
    ## 6 Muy Bueno     VVS2

## Traducciones

Despues de instalar el paquete. La parte mas importante es el archivo
YAML, aqui hay una muestra de como se traduce el set de datos
`ggplot2::diamonds`:

``` yml
variables:
  cut:
    trans: corte
    values:
      Good: Bueno
      Very Good: Muy Bueno
  clarity:
    trans: claridad
```

Crear un nuevo archivo YAML es facil, se puede crear en RStudio mediante
abriendo un nuevo archivo *text* or usando Notepad.

Lo importante is usar los espacios is los doble puntos en los lugares
apropiados. Utilize la muestra para saber cual es el patron a seguir.

Despues de grabar el archivo en su *Working Directory*, utilize la
funcion `translate_data()`

``` r
library(datos)
translate_data(ggplot2::diamonds, "mi_traduccion.yml")
```

Hay un archivo pre-grabado en el paquete para demonstrar que deberia
pasar:

``` r
library(datos)
t <- translate_data(ggplot2::diamonds, pkg_spec("diamonds.yml"))
head(t)
```

    ##       corte claridad
    ## 1     Ideal      SI2
    ## 2   Premium      SI1
    ## 3     Bueno      VS1
    ## 4   Premium      VS2
    ## 5     Bueno      SI2
    ## 6 Muy Bueno     VVS2

## Compartir traducciones

Una ves completado el archivo YAMl, mandelo por medio de un Issue en
GitHub, or por medio del canal official del proyecto en Slack.
