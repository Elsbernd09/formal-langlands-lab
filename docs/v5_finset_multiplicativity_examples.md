# Version 5 Finset Multiplicativity Examples

Version 5 continues the transition from list-based arithmetic functions to Finset-based arithmetic functions.

## Motivation

Earlier Version 5 phases defined Finset divisor sets, divisor sums, arithmetic functions, and L-series examples.

This phase strengthens the arithmetic layer by adding multiplicativity examples and Euler product comparisons for the Finset-built functions.

## Finset Arithmetic Functions

The project uses:

- Finset divisor-count function
- Finset sum-of-divisors function
- Finset square-divisor-sum function

These functions are built from Finset divisor infrastructure.

## Coprime Multiplicativity Examples

The project verifies multiplicativity examples over coprime pairs, including:

- 2 and 3
- 3 and 4
- 4 and 5

For these pairs, the project checks multiplicative behavior for:

- divisor count
- sum of divisors
- square divisor sum

## Non-Coprime Failure Examples

The project also verifies that multiplicativity fails on a non-coprime pair:

- 2 and 4

This is important because it shows the examples are not just blindly multiplying; the coprimality condition matters.

## Finset Euler Product Examples

The project verifies local Euler factor values and finite Euler products for the Finset arithmetic functions.

Examples include:

- Finset divisor-count finite Euler product over 2, 3, 5 equals 216
- Finset sum-of-divisors finite Euler product over 2, 3, 5 equals 7524
- Finset square-divisor-sum finite Euler product over 2, 3, 5 equals 1867212

## Bridge to Earlier Layers

The project proves that the Finset Euler product examples agree with the earlier Version 4 arithmetic-function Euler product examples on the small prime list.

## Importance

This phase gives Version 5 a stronger arithmetic identity layer.

The project now has:

Finset divisor sets → Finset arithmetic functions → coprime multiplicativity examples → Euler product comparisons
