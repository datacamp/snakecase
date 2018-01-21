## ---- collapse = TRUE----------------------------------------------------
library(snakecase)
to_any_case("veryComplicatedString")

## ---- collapse = TRUE----------------------------------------------------
to_any_case("malte.grosser@gmail.com")

## ---- collapse = TRUE----------------------------------------------------
to_any_case(names(iris), sep_in = "\\.")

## ---- collapse = TRUE----------------------------------------------------
to_any_case("Pi.Value:3.14", sep_in = ":|(?<!\\d)\\.")

## ---- collapse = TRUE----------------------------------------------------
to_any_case(names(iris), sep_in = "\\.", case = "upper_camel", sep_out = " ")

## ---- collapse = TRUE----------------------------------------------------
to_any_case("Doppelgänger is originally german", 
            transliterations = "german", case = "upper_camel")

## ---- collapse = TRUE----------------------------------------------------
to_any_case("THISIsHOW IAmPARSED!", case = "parsed")

## ---- collapse = TRUE----------------------------------------------------
dput(to_any_case(c("SomeBAdInput", "someGoodInput")))

