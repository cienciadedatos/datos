#' Vectores de caracteres dentro del paquete stringr
#'
#' Muestra de vectores de caracteres para practicar la manipulación de cadenas (strings)
#'
#' oraciones - es una selección y adaptación al español de los datos de práctica contenidos en stringr::sentences.
#'
#' fruta - es una selección y adaptación al español de los datos de práctica contenidos en stringr::fruit.
#'
#' palabras - es una selección de las 1000 palabras más frecuentes del Corpus de Referencia del Español Actual (CREA) de la RAE, disponible en github.com/rivaquiroga/frecuencias-crea
#'
#' @format Un vector
#' @name datos-stringr
#' @examples
#' length(oraciones)
#' oraciones[1:5]
#'
#' length(frutas)
#' frutas[1:5]
#'
#' length(palabras)
#' palabras[1:5]
NULL

#' @rdname datos-stringr
"oraciones"

#' @rdname datos-stringr
"frutas"

#' @rdname datos-stringr
"palabras"
