\docType{data}
\name{clima}
\alias{clima}
\title{Datos de clima}
\format{Un data.frame con 3,322 lineas y 9 variables
\describe{
\item{anio}{ano de la fecha de registro}
\item{mes}{mes de la fecha de registro}
\item{dia}{dia de la fecha de registro}
\item{hora}{hora de la fecha de registro}
\item{temperatura}{temperatura medida en grados Fahrenheit}
\item{punto_rocio}{temperatura medida en grados Fahrenheit a la cual, dada la presion atmosferica y humedad, condensa el vapor de agua}
\item{humedad}{humedad relativa}
\item{direccion_viento}{direccion del viento medida en grados}
\item{velocidad_viento}{velocidad del viento medida en millas por hora}
\item{velocidad_rafaga}{velocidad de las rafagas de viento medida en millas por hora}
\item{precipitacion}{precipitacion de lluvia medida en pulgadas}
\item{presion}{presion atmosferica al nivel del mar medida en milibares}
\item{visibilidad}{visibilidad medida en millas}
\item{fecha_hora}{fecha y hora de registro en formato POSIXct}
}}
\usage{clima}
\description{Metadatos de los clima y sus codigos de cola en el registro de aviacion de la FAA. American Airways (AA) y Envoy Air (MQ) reportan numero de flota en lugar de numero de cola, por lo que no es posible trazarlos.}
\keyword{datasets}
