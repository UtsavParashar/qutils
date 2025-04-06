# Q Utilities

This repository contains a collection of utility scripts written in Q for mathematical computations and temporal operations. These scripts are designed to simplify common tasks and provide reusable functions for various use cases.

## Files

### 1. `math.q`
This script contains mathematical functions and utilities. Below is a summary of the key functions:

#### Functions:
- **Factorial**:
  - `fact`: Computes the factorial of a number using iteration or recursion.

- **Fibonacci Series**:
  - `fib`: Generates a Fibonacci sequence using different approaches (iterative and limiting conditions).

- **Permutation and Combination**:
  - `per`: Computes permutations of a given set.
  - `com`: Computes combinations of a given set.

- **Power**:
  - `pow`: Computes the power of a number, supporting both positive and negative exponents.

- **Moving Percentage Change**:
  - `mpct`: Calculates the percentage change between consecutive elements in a list.

- **Pascal's Triangle**:
  - `parscalsTriange`: Generates Pascal's Triangle up to a specified number of rows.

#### Example Usage:
```q
q)fact[5] / 120
q)fib[5; 1 1] / 1 1 2 3 5 8 13
q)per[2;1+til 3] / Permutations of 2 elements
q)com[2;1+til 3] / Combinations of 2 elements
q)pow[2;3] / 8
q)parscalsTriange 3
/ 1
/ 1 1
/ 1 2 1
/ 1 3 3 1


### 2. `temporal.q`
This script provides utilities for handling temporal data and operations. Below is a summary of the key functions:

#### Functions:
- **Date Parsing**:
    - `.ut.ps`: Parses sentences for months, years, weeks, etc.
    - `.dbl.m`: Processes and extracts date ranges from input strings.

- **Business Days**:
    - `.ut.gbd`: Filters business days from a list of working days.
    - `.ut.inpbd`: Computes the previous business day.

- **Date Jargons**:
    - `.ut.ddj`: A dictionary of common date-related terms (e.g., "yesterday", "last week", "next month") and their corresponding date ranges.

- **String Utilities**:
    - `.ut.csl`: Converts a string to a list.

#### Example Usage:
```q
q).ut.gbd 2023.01.01+til 10 / Filters business days
q).ut.ddj[`yesterday] / Returns the date for yesterday
q).dbl.m["last week"] / Parses "last week" into a date range
```