\docType{data}
\name{dirigentes}
\alias{dirigentes}
\title{Tabla de dirigentes}
\format{Un data frame con 3.504 filas y 10 columnas
\describe{
\item{id_jugador}{ID del jugador}
\item{anio}{Año}
\item{id_equipo}{ID equipo (factor)}
\item{id_liga}{ID liga (factor)}
\item{orden_temporada}{Orden (secuencia) en la dirigencia de equipos durante una temporada. 0 si fue dirigente del equipo durante toda una temporada. En otro caso denota el orden de entrada a un equipo en una temporada (1 si fue el primer diriente del equipo que entró en esa temporada, 2 si fue el segundo dirigente del equipo que entró en esa temporada, etc.)}
\item{juegos_dirigidos}{Juegos dirigidos}
\item{juegos_ganados}{Juegos ganados}
\item{juegos_perdidos}{Juegos perdidos}
\item{posicion}{Posición del equipo en la clasificación final de la temporada regular}
\item{jugador_dirigente}{Tiene valor 'S' (sí) para los jugadores que hayan sido jugadores y dirigentes del equipo durante una temporada y 'N' (no) en caso contrario (factor).}
}}
\description{Información de los equipos que dirigieron y algunas estadísticas básicas de los equipos en cada temporada.}
\keyword{datasets}
