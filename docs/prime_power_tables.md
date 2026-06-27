# Prime-Power Arithmetic Tables

This phase adds verified prime-power arithmetic tables to Version 3 of the Formal Langlands Laboratory.

## Motivation

Euler products are built from local data at primes. For an arithmetic function f, the local data at a prime p often involves values such as:

f(1), f(p), f(p²), f(p³), ...

This phase adds verified tables for small prime powers.

## Prime Powers Included

The project verifies values at:

- 2, 4, 8
- 3, 9, 27
- 5, 25

These are treated as concrete prime-power examples inside the pure Lean arithmetic framework.

## Divisor-Counting Function

The project verifies:

- d(2) = 2
- d(4) = 3
- d(8) = 4
- d(3) = 2
- d(9) = 3
- d(27) = 4
- d(5) = 2
- d(25) = 3

This matches the classical rule d(p^k) = k + 1 for these concrete examples.

## Sum-of-Divisors Function

The project verifies:

- sigma(2) = 3
- sigma(4) = 7
- sigma(8) = 15
- sigma(3) = 4
- sigma(9) = 13
- sigma(27) = 40
- sigma(5) = 6
- sigma(25) = 31

These match the finite geometric sum behavior:

1 + p + p² + ... + p^k

for the checked examples.

## Square-Divisor-Sum Function

The project verifies:

- square divisor sum at 2 equals 5
- square divisor sum at 4 equals 21
- square divisor sum at 8 equals 85
- square divisor sum at 3 equals 10
- square divisor sum at 9 equals 91
- square divisor sum at 27 equals 820
- square divisor sum at 5 equals 26
- square divisor sum at 25 equals 651

## Importance

This phase strengthens the local arithmetic side of the project.

The project now has explicit prime-power data supporting its Euler product approximation layer. This is a more serious number-theory foundation than only checking isolated values.

## Future Work

Future phases should add:

- coefficient comparison between finite Euler products and finite Dirichlet expansions
- bounded prime-product examples
- theorem index files
- stronger formal statements about prime-power patterns
- eventual mathlib-backed primality and divisibility proofs
