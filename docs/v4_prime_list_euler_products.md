# Mathlib Prime Lists and Euler Product Folds

This phase extends Version 4 by adding prime-list-based Euler product infrastructure.

## Motivation

Earlier Version 4 phases introduced mathlib-backed prime indices and manually defined Euler products over the primes 2, 3, and 5.

This phase makes the structure more scalable by introducing lists of mathlib-backed prime indices and finite product folds.

## Prime Index Lists

The project defines:

- a small prime-index list containing 2, 3, and 5
- a five-prime-index list containing 2, 3, 5, 7, and 11

Each prime index carries a mathlib proof of primality.

## Local Euler Factor Lists

For an arithmetic function f, the project maps each prime index p to a local Euler factor approximation:

f(1) + f(p) + f(p²)

This produces lists of local Euler factors.

## Finite Euler Product Fold

The project defines a recursive product over lists of natural numbers.

This allows finite Euler products to be computed from local Euler factor lists.

## Verified Examples

The project verifies finite Euler products for:

- constant-one function
- divisor-counting function
- sum-of-divisors function
- square-divisor-sum function

Examples include:

- constant-one finite product over 2, 3, 5 equals 27
- divisor-count finite product over 2, 3, 5 equals 216
- sum-of-divisors finite product over 2, 3, 5 equals 7524
- square-divisor-sum finite product over 2, 3, 5 equals 1867212

## Manual Product Agreement

The project also proves that the list-based finite Euler product agrees with the earlier manually defined product over 2, 3, and 5.

## Importance

This phase makes the Euler product layer more professional.

Instead of only manually multiplying local factors, the project now has:

mathlib-backed prime list → local Euler factor list → finite product fold

This is a stronger architecture for future mathlib-backed Euler product work.

## Future Work

Future phases should add:

- divisor lists
- finite sums over divisors
- mathlib-backed divisor table examples
- stronger finite Euler product expansion comparison
