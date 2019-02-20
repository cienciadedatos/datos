\docType{data}
\name{oms}
\alias{oms}
\title{Datos de tuberculosis de la Organizacion Mundial de la Salud}
\format{Un dataframe con 7240 filas y 60 variables
\describe{
\item{pais}{nombre del pais}
\item{iso2}{codigo ISO de dos digitos del pais}
\item{iso3}{codigo ISO de tres digitos del pais}
\item{anio}{anio}
\item{nuevos_fpp_h014}{casos nuevos, diagnostico frotis pulmonar positivo (fpp), hombres (h) de 0 a 14 anos (014)}
\item{nuevos_fpp_h1524}{casos nuevos, diagnostico frotis pulmonar positivo (fpp), hombres (h) de 15 a 24 anos (1524)}
\item{nuevos_fpp_h2534}{casos nuevos, diagnostico frotis pulmonar positivo (fpp), hombres (h) de 25 a 34 anos (2534)}
\item{nuevos_fpp_h3534}{casos nuevos, diagnostico frotis pulmonar positivo (fpp), hombres (h) de 35 a 44 anos (3544)}
\item{nuevos_fpp_h4554}{casos nuevos, diagnostico frotis pulmonar positivo (fpp), hombres (h) de 45 a 54 anos (4554)}
\item{nuevos_fpp_h5564}{casos nuevos, diagnostico frotis pulmonar positivo (fpp), hombres (h) de 55 a 64 anos (5564)}
\item{nuevos_fpp_h65}{casos nuevos, diagnostico frotis pulmonar positivo (fpp), hombres (h) de 65 o mas anos}
\item{nuevos_fpp_m014}{casos nuevos, diagnostico frotis pulmonar positivo (fpp), mujeres (m) de 0 a 14 anos (014)}
\item{nuevos_fpp_m1524}{casos nuevos, diagnostico frotis pulmonar positivo (fpp), mujeres (m) de 15 a 24 anos (1524)}
\item{nuevos_fpp_m2534}{casos nuevos, diagnostico frotis pulmonar positivo (fpp), mujeres (m) de 25 a 34 anos (2534)}
\item{nuevos_fpp_m3534}{casos nuevos, diagnostico frotis pulmonar positivo (fpp), mujeres (m) de 35 a 44 anos (3544)}
\item{nuevos_fpp_m4554}{casos nuevos, diagnostico frotis pulmonar positivo (fpp), mujeres (m) de 45 a 54 anos (4554)}
\item{nuevos_fpp_m5564}{casos nuevos, diagnostico frotis pulmonar positivo (fpp), mujeres (m) de 55 a 64 anos (5564)}
\item{nuevos_fpp_m65}{casos nuevos, diagnostico frotis pulmonar positivo (fpp), mujeres (m) de 65 o mas anos}
\item{nuevos_fpn_h014}{casos nuevos, diagnostico frotis pulmonar negativo (fpn), hombres (h) de 0 a 14 anos (014)}
\item{nuevos_fpn_h1524}{casos nuevos, diagnostico frotis pulmonar negativo (fpn), hombres (h) de 15 a 24 anos (1524)}
\item{nuevos_fpn_h2534}{casos nuevos, diagnostico frotis pulmonar negativo (fpn), hombres (h) de 25 a 34 anos (2534)}
\item{nuevos_fpn_h3534}{casos nuevos, diagnostico frotis pulmonar negativo (fpn), hombres (h) de 35 a 44 anos (3544)}
\item{nuevos_fpn_h4554}{casos nuevos, diagnostico frotis pulmonar negativo (fpn), hombres (h) de 45 a 54 anos (4554)}
\item{nuevos_fpn_h5564}{casos nuevos, diagnostico frotis pulmonar negativo (fpn), hombres (h) de 55 a 64 anos (5564)}
\item{nuevos_fpn_h65}{casos nuevos, diagnostico frotis pulmonar negativo (fpn), hombres (h) de 65 o mas anos}
\item{nuevos_fpn_m014}{casos nuevos, diagnostico frotis pulmonar negativo (fpn), mujeres (m) de 0 a 14 anos (014)}
\item{nuevos_fpn_m1524}{casos nuevos, diagnostico frotis pulmonar negativo (fpn), mujeres (m) de 15 a 24 anos (1524)}
\item{nuevos_fpn_m2534}{casos nuevos, diagnostico frotis pulmonar negativo (fpn), mujeres (m) de 25 a 34 anos (2534)}
\item{nuevos_fpn_m3534}{casos nuevos, diagnostico frotis pulmonar negativo (fpn), mujeres (m) de 35 a 44 anos (3544)}
\item{nuevos_fpn_m4554}{casos nuevos, diagnostico frotis pulmonar negativo (fpn), mujeres (m) de 45 a 54 anos (4554)}
\item{nuevos_fpn_m5564}{casos nuevos, diagnostico frotis pulmonar negativo (fpn), mujeres (m) de 55 a 64 anos (5564)}
\item{nuevos_fpn_m65}{casos nuevos, diagnostico frotis pulmonar negativo (fpn), mujeres (m) de 65 o mas anos}
\item{nuevos_ep_h014}{casos nuevos, diagnostico extrapulmonar (ep), hombres (h) de 0 a 14 anos (014)}
\item{nuevos_ep_h1524}{casos nuevos, diagnostico extrapulmonar (ep), hombres (h) de 15 a 24 anos (1524)}
\item{nuevos_ep_h2534}{casos nuevos, diagnostico extrapulmonar (ep), hombres (h) de 25 a 34 anos (2534)}
\item{nuevos_ep_h3534}{casos nuevos, diagnostico extrapulmonar (ep), hombres (h) de 35 a 44 anos (3544)}
\item{nuevos_ep_h4554}{casos nuevos, diagnostico extrapulmonar (ep), hombres (h) de 45 a 54 anos (4554)}
\item{nuevos_ep_h5564}{casos nuevos, diagnostico extrapulmonar (ep), hombres (h) de 55 a 64 anos (5564)}
\item{nuevos_ep_h65}{casos nuevos, diagnostico extrapulmonar (ep), hombres (h) de 65 o mas anos}
\item{nuevos_ep_m014}{casos nuevos, diagnostico extrapulmonar (ep), mujeres (m) de 0 a 14 anos (014)}
\item{nuevos_ep_m1524}{casos nuevos, diagnostico extrapulmonar (ep), mujeres (m) de 15 a 24 anos (1524)}
\item{nuevos_ep_m2534}{casos nuevos, diagnostico extrapulmonar (ep), mujeres (m) de 25 a 34 anos (2534)}
\item{nuevos_ep_m3534}{casos nuevos, diagnostico extrapulmonar (ep), mujeres (m) de 35 a 44 anos (3544)}
\item{nuevos_ep_m4554}{casos nuevos, diagnostico extrapulmonar (ep), mujeres (m) de 45 a 54 anos (4554)}
\item{nuevos_ep_m5564}{casos nuevos, diagnostico extrapulmonar (ep), mujeres (m) de 55 a 64 anos (5564)}
\item{nuevos_ep_m65}{casos nuevos, diagnostico extrapulmonar (ep), mujeres (m) de 65 o mas anos}
\item{recaidas_h014}{recaidas, hombres (h) de 0 a 14 anos (014)}
\item{recaidas_h1524}{recaidas, hombres (h) de 15 a 24 anos (1524)}
\item{recaidas_h2534}{recaidas, hombres (h) de 25 a 34 anos (2534)}
\item{recaidas_h3534}{recaidas, hombres (h) de 35 a 44 anos (3544)}
\item{recaidas_h4554}{recaidas, hombres (h) de 45 a 54 anos (4554)}
\item{recaidas_h5564}{recaidas, hombres (h) de 55 a 64 anos (5564)}
\item{recaidas_h65}{recaidas, hombres (h) de 65 o mas anos}
\item{recaidas_m014}{recaidas, mujeres (m) de 0 a 14 anos (014)}
\item{recaidas_m1524}{recaidas, mujeres (m) de 15 a 24 anos (1524)}
\item{recaidas_m2534}{recaidas, mujeres (m) de 25 a 34 anos (2534)}
\item{recaidas_m3534}{recaidas, mujeres (m) de 35 a 44 anos (3544)}
\item{recaidas_m4554}{recaidas, mujeres (m) de 45 a 54 anos (4554)}
\item{recaidas_m5564}{recaidas, mujeres (m) de 55 a 64 anos (5564)}
\item{recaidas_m65}{recaidas, mujeres (m) de 65 o mas anos}
}}
\usage{oms}
\description{Subconjunto de datos del informe anual de tuberculosis de la Organizacion Mundial de la Salud}
\keyword{datasets}
