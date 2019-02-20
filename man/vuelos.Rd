\docType{data}
\name{vuelos}
\alias{vuelos}
\title{Datos de vuelos}
\format{Un data.frame con 336,776 lineas y 19 variables
\describe{
\item{anio}{ano de la fecha de salida}
\item{mes}{mes de la fecha de salida}
\item{dia}{dia de la fecha de salida}
\item{horario_salida}{horario efectivo de salida del vuelo (formato HHMM o HMM), hora local}
\item{salida_programada}{horario programado para la salida (formato HHMM o HMM), hora local}
\item{atraso_salida}{atraso de la salida en minutos. Valores negativos indican salida adelantada}
\item{horario_llegada}{horario efectivo de llegada del vuelo (formato HHMM o HMM), hora local}
\item{llegada_programada}{horario programado para la llegada (formato HHMM o HMM), hora local}
\item{atraso_llegada}{atraso de la llegada en minutos. Valores negativos indican llegada adelantada}
\item{aerolinea}{abreviacion de dos letras de la aerolinea. Ver airlines() para obtener el nombre}
\item{vuelo}{numero de vuelo}
\item{codigo_cola}{codigo de cola del avion}
\item{origen}{origen del vuelo. Ver airports() para metadatos adicionales}
\item{destino}{destino del vuelo. Ver airports() para metadatos adicionales}
\item{tiempo_vuelo}{cantidad de tiempo en aire, en minutos}
\item{distancia}{distancia entre aeropuertos, en millas}
\item{hora}{hora del horario programado para la salida}
\item{minuto}{minutos del horario programado para la salida}
\item{fecha_hora}{fecha y horario programados del vuelo en formato POSIXct}
}}
\usage{vuelos}
\description{Datos temporales de todos los vuelos que despegaron de Nueva York (JFK, LGA o EWR) durante 2013.}
\keyword{datasets}
