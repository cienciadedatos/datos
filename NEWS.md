# datos (development version)

# datos 0.5.9001

* Patch release: fix non-ascii characters issue

# datos 0.5.0

* New dataset: translation of `modeldata::credit_data`
* Fix `clima` description
* Fix R CDM check failures (HTML validation)

# datos 0.4.0

## Major changes

* New dataset: translation of `palmerpenguins::penguins`
* Fix variable name: `oms$nuevos_fpp_h3534` -> `oms$nuevos_fpp_h3544`
* Fix variable name: `flores$Especies` -> `flores$Especie`

# datos 0.3.0

## Major changes

Changes to column names:

* Unify mpg and mtcars: `datos::mtautos$motor` is now named `datos::mtautos$cilindrada` .

Compatibility:

* Import required packages.

## Minor changes

Changes to dataset values:

* Translate values in variables of `datos::aviones`.
* Update `datos::encuesta`.
* Fix yaml issues in `dirigentes` and `premios_dirigentes`.
* Fix factor levels in `encuesta::partido.

Changes to metadata:

* Latin letters with acute now use unicode.
* Fix non-ASCII characters, some typos, and style.

# datos 0.2.0

* Adds translation for the rest of the data sets in the `Lahman` package
* Adds translation to the `common` dataset from the `fueleconomy` package
* Some improvements to translation code
* Removes dependency on `rlang`
