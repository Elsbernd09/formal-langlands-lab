# Version 5 Finset Divisor Sums

Version 5 continues the transition from list-based arithmetic examples to mathlib-style finite sets and finite sums.

## Motivation

Version 4 used list-based divisor computations. Phase 50 introduced Finset divisor sets. This phase adds finite sums over those divisor sets.

This is important because serious formal mathematics in Lean usually uses `Finset` and finite summation notation.

## Finset Divisor Sum

For a natural number n, the project defines the sum of divisors as:

the finite sum of d over the divisor finset of n.

This gives a Finset-based version of the sum-of-divisors function.

## Finset Square Divisor Sum

The project also defines a square-divisor sum:

the finite sum of d² over the divisor finset of n.

This connects the Finset divisor system to the earlier square-divisor-sum arithmetic function.

## Verified Examples

The project verifies divisor sums:

- sigma(1) = 1
- sigma(2) = 3
- sigma(3) = 4
- sigma(4) = 7
- sigma(5) = 6
- sigma(6) = 12
- sigma(12) = 28

It also verifies square-divisor sums:

- square-divisor sum at 1 equals 1
- square-divisor sum at 2 equals 5
- square-divisor sum at 3 equals 10
- square-divisor sum at 4 equals 21
- square-divisor sum at 5 equals 26
- square-divisor sum at 6 equals 50
- square-divisor sum at 12 equals 210

## Bridge to Version 4

The project proves selected agreement between:

- Finset divisor sums
- Version 4 list-based divisor sums
- existing square-divisor-sum arithmetic functions

## Importance

This phase is a major Version 5 upgrade.

The project now has:

mathlib divisibility → Finset divisor sets → finite divisor sums → comparison to existing arithmetic functions

This prepares the next phase, where we make the comparison bridge more systematic.
