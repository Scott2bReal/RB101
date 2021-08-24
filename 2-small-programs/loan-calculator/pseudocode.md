# Problem

Create a mortgage/car loan calculator that gives the monthly payment amount when
supplied details about the loan

## Inputs

  - The loan amount (integer or float)
  - The Annual Percentage Rate (APR)
  - The loan duration (integer (years))

## Outputs

  - The monthly payment amount (float (dollars))

## Domain
  
  - Need to know the formula, which is supplied by the problem statement
    - m = p * (j / (1 - (1 + j)**(-n)))
        - m = monthly payment
        - p = loan amount
        - j = monthly interest rate
        - n = loan duration in months

## Implicit Requirements
  
## Clarifying Questions

  * Should the loan duration support months as well? Or only years?
  * 

## Mental Model

A user will be prompted for information about the loan (loan amount, APR, loan
duration), and will then be supplied a monthly payment amount. The APR and loan
duration will need to be converted from years to months.

## Examples

  ### Example 1
  * Inputs:
    * loan_amount = 100000
    * loan_duration = 10 years
    * APR = 6%
  * Outputs:
    * $1,110.21
  
  ### Example 2
  * Inputs:
    * loan_amount = $70
    * loan_duration = 9 months
    * APR = 2%
  * Outputs:
    * $7.84

## Data Structure

Working with a hash could be useful for the loan information, rather than just
separate variables? The information could be received, processed, then entered
into the hash. 

## Algorithm

* Ask user for loan amount, save as loan_amount
* Ask user for APR (as a percent), save as APR:
  * Divide APR by 100 to convert to decimal
  * Divide by 12 to get the monthly interest, save as monthly_interest
* Ask user for the loan duration:
  * First ask for years, multiply by 12 and save as loan_duration
  * Then ask for months, add to loan_duration
* Save result of formula with variables plugged in as monthly_payment
* Print monthly payment

## Pseudocode

START
GET loan amount SET loan_amount
SUBRPROCESS verify loan_amount

GET APR SET apr
SUBPROCESS verify apr
SET monthly_interest = (apr / 100) / 12

GET loan duration years SET years
GET loan duration months SET months
SET loan_duration = (years * 12) + months

SET monthly_payment = loan_amount * (monthly_interest / (1 - (1 +
monthly_interest)**(-loan_duration)))

PRINT monthly_payment

END
