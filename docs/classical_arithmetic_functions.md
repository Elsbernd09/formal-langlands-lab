# Classical Arithmetic Functions

This phase adds classical arithmetic-function prototypes to Version 2 of the Formal Langlands Laboratory.

## Motivation

Many L-functions and Euler products are built from arithmetic functions. To make the project more rigorous, the number theory layer now includes concrete arithmetic functions defined through verified divisor sums.

## Divisor Count Function

The divisor-counting function is modeled as the Dirichlet convolution of the constant-one function with itself.

This corresponds to the classical function often written as d(n), which counts the number of positive divisors of n.

Examples verified in Lean:

- d(1) = 1
- d(2) = 2
- d(3) = 2
- d(4) = 3

## Sum of Divisors Function

The sum-of-divisors function is modeled as the Dirichlet convolution of the identity function with the constant-one function.

This corresponds to the classical function often written as sigma(n).

Examples verified in Lean:

- sigma(1) = 1
- sigma(2) = 3
- sigma(3) = 4
- sigma(4) = 7

## Square Divisor Sum Function

The project also includes a square-divisor-sum function, built from the convolution of the square function with the constant-one function.

Examples verified in Lean:

- square divisor sum at 1 equals 1
- square divisor sum at 2 equals 5
- square divisor sum at 3 equals 10
- square divisor sum at 4 equals 21

## Importance

This phase upgrades the project from abstract coefficient systems to concrete classical number-theoretic objects.

These functions are important because they are foundational examples in multiplicative number theory, Dirichlet series, Euler products, and analytic number theory.

## Future Work

Future phases will add:

- multiplicativity testing
- finite prime examples
- Euler factor verification
- formal L-series examples built from classical arithmetic functions
