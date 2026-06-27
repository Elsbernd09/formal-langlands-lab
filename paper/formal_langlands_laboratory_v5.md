# Formal Langlands Laboratory, Version 5

## Finset Divisor Sums and Mathlib-Style Arithmetic Infrastructure

### Abstract

The Formal Langlands Laboratory is a Lean 4 formal verification project focused on arithmetic functions, divisor sums, formal Dirichlet series, Euler factors, finite Euler products, and Langlands-inspired mathematical architecture.

Version 5 continues the transition from list-based arithmetic infrastructure toward mathlib-style finite set infrastructure. It introduces Finset divisor sets, finite divisor sums, square-divisor sums, comparison bridges to Version 4 list-based functions, Finset arithmetic functions, Finset L-series examples, multiplicativity examples, Euler product comparisons, and a Version 5 theorem registry/dashboard.

This project does not prove the Langlands Program. Its purpose is to build a rigorous, inspectable formal laboratory for arithmetic infrastructure connected to the ecosystem around L-functions and Euler products.

## 1. Motivation

Earlier versions developed pure Lean arithmetic examples and then introduced mathlib-backed primality, divisibility, divisor lists, arithmetic functions, and Euler product approximations.

Version 5 upgrades the arithmetic layer by introducing Finset-based divisor infrastructure.

## 2. Version 5 Overview

Version 5 adds Finset foundation examples, divisor Finsets, divisor cardinalities, divisor sums, square-divisor sums, comparison bridges, arithmetic functions, L-series examples, multiplicativity examples, Euler product examples, a theorem registry, and a dashboard.

The central upgrade is:

Version 4 list divisors -> Version 5 Finset divisor sets and finite sums.

## 3. Finset Divisor Sets

For a natural number n, the project defines a divisor Finset by filtering a finite range and keeping nonzero divisors of n.

Verified examples include:

- divisors of 1 are {1}
- divisors of 2 are {1, 2}
- divisors of 3 are {1, 3}
- divisors of 4 are {1, 2, 4}
- divisors of 6 are {1, 2, 3, 6}
- divisors of 12 are {1, 2, 3, 4, 6, 12}

## 4. Finset Divisor Sums

Version 5 defines the sum of divisors using finite summation over divisor Finsets.

Verified examples include:

- sigma(1) = 1
- sigma(2) = 3
- sigma(3) = 4
- sigma(4) = 7
- sigma(6) = 12
- sigma(12) = 28

The project also defines square-divisor sums.

Verified examples include:

- square-divisor sum at 2 equals 5
- square-divisor sum at 4 equals 21
- square-divisor sum at 6 equals 50
- square-divisor sum at 12 equals 210

## 5. Finset-to-List Comparison Bridge

Version 5 includes a dedicated comparison bridge between the Version 4 list-based divisor layer and the Version 5 Finset-based divisor layer.

It verifies selected agreement for divisor counts, divisor sums, square-divisor sums, and table-level comparisons up to 6.

## 6. Finset Arithmetic Functions and L-Series

Version 5 packages Finset computations into arithmetic functions:

- Finset divisor-count function
- Finset sum-of-divisors function
- Finset square-divisor-sum function

These functions are then used in formal Dirichlet series examples.

## 7. Multiplicativity and Euler Products

Version 5 verifies coprime multiplicativity examples for Finset-built arithmetic functions.

It also connects Finset-built arithmetic functions back to finite Euler product approximations.

Representative results include:

- Finset divisor-count finite Euler product over 2, 3, 5 equals 216
- Finset sum-of-divisors finite Euler product over 2, 3, 5 equals 7524
- Finset square-divisor-sum finite Euler product over 2, 3, 5 equals 1867212

## 8. Theorem Registry and Dashboard

Version 5 adds a theorem registry and dashboard tracking 129 representative Version 5 results across Finset foundation, divisor sets, divisor sums, comparison bridges, arithmetic functions, L-series examples, multiplicativity examples, and Euler product examples.

## 9. Honest Scope

This project does not prove the Langlands Program.

It does not prove modularity, functoriality, analytic continuation, class field theory, or general arithmetic-function multiplicativity.

The theorems are finite verified examples and structural bridges.

## 10. Future Work

Natural next steps include general Finset divisor theorem statements, stronger multiplicativity theorems, use of mathlib divisor APIs, generalized finite Euler product expansion, polynomial Euler factors, matrix-valued local factors, and stronger L-series coefficient bridges.

## 11. Conclusion

Version 5 is a major structural upgrade.

The project now has a Finset-based divisor arithmetic layer connected to arithmetic functions, formal Dirichlet series, multiplicativity examples, and finite Euler products.
