## ---- collapse = TRUE----------------------------------------------------
library(snakecase)
to_any_case("veryComplicatedString")

## ---- collapse = TRUE----------------------------------------------------
to_any_case("malte.grosser@gmail.com")

## ---- collapse = TRUE----------------------------------------------------
to_any_case(names(iris), preprocess = "\\.")

## ---- collapse = TRUE----------------------------------------------------
to_any_case("Pi.Value:3.14", preprocess = ":|(?<!\\d)\\.")

## ---- collapse = TRUE----------------------------------------------------
to_any_case(names(iris), preprocess = "\\.", case = "upper_camel", postprocess = " ")

## ---- collapse = TRUE----------------------------------------------------
to_any_case("Doppelgänger is originally german", 
            replace_special_characters = "german", case = "upper_camel")

## ---- collapse = TRUE----------------------------------------------------
to_any_case("THISIsHOW IAmPARSED!", case = "parsed")

## ---- collapse = TRUE----------------------------------------------------
dput(to_any_case(c("SomeBAdInput", "someGoodInput")))

