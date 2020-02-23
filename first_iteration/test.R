library(testthat)

context("StringCalculatorTests")

stringCalculatorTest <- function(){
	test_that("empty", {
		#expect_equivalent(1, 2)
		stringCalculator = StringCalculator$new()
		expect_equivalent(stringCalculator$add(""), 0)
		expect_equivalent(stringCalculator$add("\n"), 0)
	})
	test_that("number", {
		stringCalculator = StringCalculator$new()
		expect_equivalent(stringCalculator$add("4"), 4)
	})
	test_that("sum2numers", {
		stringCalculator = StringCalculator$new()
		expect_equivalent(stringCalculator$add("1,2"), 3)
	})
	test_that("sumNnumers", {
		stringCalculator = StringCalculator$new()
		expect_equivalent(stringCalculator$add("1,2,3,4,5,6,7,8,9"), 45)
	})
	test_that("sumNewSeparator", {
		stringCalculator = StringCalculator$new()
		expect_equivalent(stringCalculator$add("1\n2,3"), 6)
	})
	test_that("sumCustomSeparator", {
		stringCalculator = StringCalculator$new()
		expect_equivalent(stringCalculator$add("//;\n1;2"), 3)
	})
}
stringCalculatorTest()

