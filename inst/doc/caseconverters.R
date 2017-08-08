## ---- collapse=TRUE------------------------------------------------------
# devtools::install_github("Tazinho/snakecase")
library(snakecase)
strings <- c("this Is a Strange_string", "AND THIS ANOTHER_One")

to_parsed_case(strings)

to_snake_case(strings)

to_small_camel_case(strings)

to_big_camel_case(strings)

to_screaming_snake_case(strings)

to_lower_upper_case(strings)

to_lower_upper_case(strings)

to_mixed_case(strings)

## ---- collapse=TRUE------------------------------------------------------
to_any_case(strings, case = "parsed")

to_any_case(strings, case = "snake")

to_any_case(strings, case = "small_camel")

to_any_case(strings, case = "big_camel")

to_any_case(strings, case = "screaming_snake")

to_any_case(strings, case = "lower_upper")

to_any_case(strings, case = "upper_lower")

to_any_case(strings, case = "mixed")

to_any_case(strings, case = "none")

## ---- collapse=TRUE------------------------------------------------------
strings2 <- c("this - Is_-: a Strange_string", "ÄND THIS ANOTHER_One")

to_snake_case(strings2)

to_any_case(strings2, case = "snake", preprocess = "-|\\:")

## ---- collapse = TRUE----------------------------------------------------
to_any_case(strings2, case = "snake", preprocess = "-|\\:", postprocess = " ")

to_any_case(strings2, case = "big_camel", preprocess = "-|\\:", postprocess = "//")

## ---- collapse=TRUE------------------------------------------------------
to_any_case(strings2, case = "big_camel", preprocess = "-|\\:", postprocess = "//",
            prefix = "USER://", postfix = ".exe")

## ---- collapse = TRUE, eval = FALSE--------------------------------------
#  strings3 <- c("ßüss üß ä stränge sträng", "unrealistisch aber nützich")
#  
#  to_any_case(strings3, case = "screaming_snake",
#              replace_special_characters = c("germany", "Latin-ASCII"))
#  ## [1] "SSUESS_UESS_AE_STRAENGE_STRAENG" "UNREALISTISCH_ABER_NUETZICH"

## ---- collapse=TRUE------------------------------------------------------
strings4 <- c("var12", "var1.2", "va.r.1.2")

to_any_case(strings4, case = "snake")
to_any_case(strings4, case = "snake", protect = "\\d")
to_any_case(strings4, case = "snake", protect = "\\d|\\.")

