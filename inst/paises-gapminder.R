paises <- countrycode::codelist %>% select(un.name.en, un.name.es)

missing <- gapminder %>%
  select(country) %>%
  left_join(paises, by = c("country" = "un.name.en")) %>%
  filter(is.na(un.name.es)) %>%
  distinct() %>%
  mutate(
    un.name.es =
      c(
        "Bolivia (Estado Plurinacional de)",
        "República Democrática del Congo",
        "Congo",
        "Costa de Marfil",
        "Gambia (República de)",
        "Guinea Bissau",
        "Hong Kong (Región Administrativa Especial de la República Popular China)",
        "Irán (República Islámica de)",
        "República Popular Democrática de Corea",
        "República de Corea",
        "Puerto Rico",
        "Isla Reunión y Guyana Francesa (dependientes de Francia)",
        "Eslovaquia",
        "República Árabe Siria",
        "Taiwán (Provincia de la República Popular China)",
        "República Unida de Tanzanía",
        "Reino Unido",
        "Estados Unidos de América",
        "Venezuela (República Bolivariana de)",
        "Vietnam",
        "Territorios Palestinos",
        "Yemen"
      )
  )

complete <- gapminder %>%
  select(country) %>%
  left_join(paises, by = c("country" = "un.name.en")) %>%
  filter(!is.na(un.name.es)) %>%
  distinct()

traduccion <- bind_rows(missing, complete) %>%
  mutate(
    yml = paste(country, un.name.es, sep = ": ")
  ) %>%
  arrange(yml)

write_csv(traduccion, "inst/paises-gapminder.csv")
