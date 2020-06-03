# datos (development version)

# datos 0.3.0

### Major changes

Changes to column names:

* Unify mpg and mtcars: `datos::mtautos$motor` is now named `datos::mtautos$cilindrada` (@rivaquiroga).

Compatibility:

* Import required packages (pachamaltese).

## Minor changes

Changes to dataset values:

* Translate values in variables of `datos::aviones` (@rivaquiroga).
* Update `datos::encuesta` (@rivaquiroga).
* Fix yaml issues in `dirigentes` and `premios_dirigentes` (@rivaquiroga).
* Fix factor levels in `encuesta::partido` (@rivaquiroga).

Changes to metadata:

* Latin letters with acute now use unicode (@maurolepore, #114).
* Fix non-ASCII characters, some typos, and style (@rivaquiroga).

# datos 0.2.0

* Adds translation for the rest of the data sets in the `Lahman` package
* Adds translation to the `common` dataset from the `fueleconomy` package
* Some improvements to translation code
* Removes dependency on `rlang`
