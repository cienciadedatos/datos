library(tibble)

test_that("The output of translated data is as expected", {
  verify_output(test_path("output-translated-data.txt"), {
    as_tibble(datos::aerolineas)

    as_tibble(datos::aeropuertos)

    as_tibble(datos::atmosfera)

    as_tibble(datos::premios_dirigentes)

    as_tibble(datos::nombres)

    as_tibble(datos::bateadores)

    as_tibble(datos::comunes)

    as_tibble(datos::diamantes)

    as_tibble(datos::fiel)

    as_tibble(datos::jardineros)

    as_tibble(datos::vuelos)

    as_tibble(datos::paises)

    as_tibble(datos::encuesta)

    as_tibble(datos::flores)

    as_tibble(datos::dirigentes)

    as_tibble(datos::millas)

    as_tibble(datos::mtautos)

    as_tibble(datos::personas)

    as_tibble(datos::lanzadores)

    as_tibble(datos::aviones)

    as_tibble(datos::presidencial)

    as_tibble(datos::salarios)

    as_tibble(datos::tabla1)

    as_tibble(datos::tabla2)

    as_tibble(datos::tabla3)

    as_tibble(datos::tabla4a)

    as_tibble(datos::tabla4b)

    as_tibble(datos::tabla5)

    as_tibble(datos::vehiculos)

    as_tibble(datos::clima)

    as_tibble(datos::oms)
  })
})
