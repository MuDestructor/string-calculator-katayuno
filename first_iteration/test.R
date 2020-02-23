library(testthat)

context("StringCalculatorTests")

stringCalculatorTest <- function(){
	test_that("vacio", {
		#expect_equivalent(1, 2)
		stringCalculator = StringCalculator$new()
		expect_equivalent(stringCalculator$add(""), 0)
	})
	test_that("unnumero", {
		stringCalculator = StringCalculator$new()
		expect_equivalent(stringCalculator$add("4"), 4)
		expect_equivalent(stringCalculator$add("1344"), 1344)
	})
	test_that("variosnumero", {
		stringCalculator = StringCalculator$new()
		expect_equivalent(stringCalculator$add("1, 2"), 3)
	})
	test_that("masvariosnumero", {
		stringCalculator = StringCalculator$new()
		expect_equivalent(stringCalculator$add("1,2,3,4,5,6,7,8,9"), 45)
	})
	test_that("variosnumeroseparador", {
		stringCalculator = StringCalculator$new()
		expect_equivalent(stringCalculator$add("1\n2,3"), 6)
	})
}
stringCalculatorTest()

