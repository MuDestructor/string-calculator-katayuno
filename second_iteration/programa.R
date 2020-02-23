
setwd("/media/windows/fergus/r_pruebas/prueba1")
library(rapport)

library(R6)
library(stringr)

# stringCalculator 

is.empty = function(numbers){
	return(numbers=="")
}

StringCalculator <- R6Class('StringCalculator',
	public = list(
		add = function(numbers){

			escapedNumbers = gsub("\n", private$SEPARATOR, numbers)
			
			if(nchar(escapedNumbers)==str_count(escapedNumbers, SEPARATOR) | is.empty(escapedNumbers)){
				return(0)
			}
			splitNumbers = strsplit(escapedNumbers, private$SEPARATOR)[[1]]
			total = sum(as.numeric(splitNumbers))
			return(total)
		}
	),
	private = list(
		SEPARATOR = ","
	)
)

source("test.R")