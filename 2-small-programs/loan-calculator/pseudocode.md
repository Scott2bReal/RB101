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
  






START

GET loan amount SET loan_amount
GET APR SET apr
GET loan duration SET loan_duration
