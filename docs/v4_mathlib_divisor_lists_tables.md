# Mathlib Divisor Lists and Divisor Tables

This phase extends Version 4 of the Formal Langlands Laboratory by adding mathlib-backed divisor lists and divisor tables.

## Motivation

Earlier versions computed divisor-sum behavior through a pure Lean divisor-sum convolution. Version 4 now begins connecting that arithmetic core to mathlib-backed divisibility.

This phase defines divisor lists using mathlib-backed divisibility checks and compares those divisor-list computations with the existing arithmetic functions.

## Mathlib Divisor Lists

For a natural number n, the project constructs a list of divisors by filtering the range from 0 to n using a mathlib-backed divisibility Boolean.

Verified examples include:

- divisors of 1 are [1]
- divisors of 2 are [1, 2]
- divisors of 3 are [1, 3]
- divisors of 4 are [1, 2, 4]
- divisors of 6 are [1, 2, 3, 6]
- divisors of 12 are [1, 2, 3, 4, 6, 12]

## Divisor Count From Lists

The project defines divisor count from the length of the divisor list.

Verified examples include:

- divisor count from list at 4 equals 3
- divisor count from list at 6 equals 4
- divisor count from list at 12 equals 6

The project also proves that these values agree with the existing divisor-counting function on selected examples.

## Sum of Divisors From Lists

The project defines the sum of divisors by summing the mathlib-backed divisor list.

Verified examples include:

- sum of divisors from list at 4 equals 7
- sum of divisors from list at 6 equals 12
- sum of divisors from list at 12 equals 28

The project also proves agreement with the existing sum-of-divisors function on selected examples.

## Divisor Tables

The project adds small divisor tables:

- divisor-count table up to 6
- sum-of-divisors table up to 6
- divisor-list table for 1 through 6

## Importance

This is an important Version 4 bridge.

The project now connects:

mathlib-backed divisibility → divisor lists → divisor counts and divisor sums → existing arithmetic functions

This moves the arithmetic core closer to mathlib-supported number theory.

## Future Work

Future phases should add:

- finite sums over mathlib divisor structures
- stronger equivalence between divisor-list functions and verified convolution functions
- bounded divisor-sum theorem registries
- mathlib-backed Euler product coefficient comparison
