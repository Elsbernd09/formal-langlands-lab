# Version 5 Finset Divisor Sets

Version 5 continues the transition from list-based arithmetic examples to mathlib-style finite sets.

## Motivation

Version 4 represented divisor collections using lists. Lists are useful computationally, but mathlib-style formal mathematics often uses `Finset` for finite unordered collections.

This phase defines divisor sets as finite sets of natural numbers.

## Finset Divisor Definition

For a natural number n, the project defines a divisor finset by filtering the finite range from 0 to n.

The filter keeps natural numbers d satisfying:

- d is not zero
- d divides n

This creates a finite set of divisors.

## Verified Divisor Finsets

The project verifies examples such as:

- divisors of 1 are {1}
- divisors of 2 are {1, 2}
- divisors of 3 are {1, 3}
- divisors of 4 are {1, 2, 4}
- divisors of 6 are {1, 2, 3, 6}
- divisors of 12 are {1, 2, 3, 4, 6, 12}

## Membership Theorems

The project verifies membership examples for the divisor finset of 6:

- 1 belongs to the divisor finset of 6
- 2 belongs to the divisor finset of 6
- 3 belongs to the divisor finset of 6
- 6 belongs to the divisor finset of 6
- 4 does not belong to the divisor finset of 6
- 0 does not belong to the divisor finset of 6

## Cardinality

The project defines divisor count as the cardinality of the divisor finset.

It verifies:

- divisor finset cardinality of 1 equals 1
- divisor finset cardinality of 2 equals 2
- divisor finset cardinality of 4 equals 3
- divisor finset cardinality of 6 equals 4
- divisor finset cardinality of 12 equals 6

## Bridge to Version 4

The project proves selected agreement between the new Finset-based divisor counts and the Version 4 list-based divisor counts.

## Importance

This phase is a serious structural upgrade.

The project now has:

mathlib divisibility → Finset divisor sets → cardinality divisor counts → comparison to V4 list divisors

This prepares the next phase: Finset divisor sums.
