Feature: PrimeNumber
	As Alice (the customer)
	I want to know whether a number is prime or not
	So I can create discount campaings


Scenario Outline: Checking several prime numbers
	When number <number> is checked
	Then the answer to know whether is prime or not is <result>
	Examples: 
	| number | result  |
	| 1      | No      |
	| 2      | Yes     |
	| 1      | No      |
	| 2      | Yes     |
	| 3      | Yes     |
	| 4      | No      |
	| 5      | Yes     |
	| 6      | No      |
	| 7      | Yes     |
	| 8      | No      |
	| 9      | No      |
	| 10     | No      |
	| 11     | Yes     |
	| 179    | Yes     |
	| 997    | Yes     |
	| 98689  | Yes     |
	| 86743  | Yes     |