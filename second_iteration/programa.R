
setwd("/media/windows/fergus/r_pruebas/prueba1")

library(R6)

# stringCalculator 

StringCalculator <- R6Class('StringCalculator',
	public = list(
		add = function(numbers)
		{
			comaNumbers = private$regTransformar(numbers)
			numericNumbers = strsplit(comaNumbers, ",")[[1]]
			sumNumbers = 0
			for(number in numericNumbers){
				sumNumbers = private$add_(number) + sumNumbers
			}
			return(sumNumbers)
		}),
	private = list(
		add_ = function(numbers)
		{
			if(numbers==""){
				numbers = 0
			}
			return(as.numeric(numbers))
		},
		regTransformar = function(regvalue)
		{
			return(gsub("[^0-9]", ",", regvalue))
		}
	)
)



# PrintMutex <- R6Class('PrintMutex',
#   public = list(
#     pid = 0,
#     sharedName = "mutex_copernicus",
#     file = "test.txt",
#     initialize = function(sharedName = "mutex_copernicus", file = "test.txt", pid =- 1){
#       # library(synchronicity)
#       self$sharedName = sharedName
#       self$file = file
#       self$pid = pid
#       # mutex <- tryCatch(
#       # {
#       #   boost.mutex(sharedName = self$sharedName, timeout = NULL) 
#       # },error=function(err){
#       #   NA
#       #   },warning = function(err){
#       #     NA
#       #   },finally={
#       #     NA
#       #   })
#     },
#     print_to_file = function(file = "test.txt"){
#       con <- file(file)
#       sink(con, append = TRUE)
#     },
#     print_to_file_cancel = function(){
#       sink()
#     },
#     print = function(i){
#       self$printf(i = i, file = self$file, pid = self$pid, sharedName = self$sharedName)
#     },
#     printf = function(i, file="test.txt", pid=-1, sharedName="mutex_copernicus")
#     {
#       # if(Sys.getpid()!=pid & pid > 0){
#       #   library(synchronicity)
#       #   # mutex = boost.mutex(sharedName = sharedName, timeout = NULL, create = FALSE)
#       #   mutex <- tryCatch(
#       #   {
#       #     boost.mutex(sharedName = self$sharedName, timeout = NULL, create = FALSE)
#       #   },error=function(err){
#       #     boost.mutex(sharedName = self$sharedName, timeout = NULL)
#       #   },warning = function(err){
#       #     NA
#       #   },finally={
#       #     NA
#       #   })
#       #   lock(mutex)
#       #   write(i, sep = "\n", file = file, append = TRUE)
#       #   unlock(mutex)
#       # }else{
#         print(i)
#       # }
#     }
#   )
# )
