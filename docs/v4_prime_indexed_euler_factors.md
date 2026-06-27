# Mathlib Prime-Indexed Euler Factors

This phase extends Version 4 of the Formal Langlands Laboratory by adding mathlib-backed prime-indexed Euler factor infrastructure.

## Motivation

Earlier versions used toy prime indices or fixed numerical prime-like values. Version 4 begins replacing those with real mathlib-backed primality proofs.

This phase introduces a prime-index structure whose value comes with a proof of `Nat.Prime`.

## Mathlib Prime Index

The project defines a prime index containing:

- a natural number value
- a mathlib proof that the value is prime

The project currently constructs prime indices for:

- 2
- 3
- 5
- 7
- 11

## Prime-Indexed Local Euler Factors

For an arithmetic function f and a mathlib-backed prime index p, the project defines a local Euler factor approximation:

f(1) + f(p) + f(p²)

This connects real prime proofs to the existing Euler product approximation framework.

## Verified Examples

The project verifies local Euler factors for:

- constant-one function
- divisor-counting function
- sum-of-divisors function
- square-divisor-sum function

Examples include:

- divisor-count local Euler factor at 2 equals 6
- divisor-count local Euler factor at 3 equals 6
- sum-of-divisors local Euler factor at 2 equals 11
- sum-of-divisors local Euler factor at 3 equals 18
- square-divisor-sum local Euler factor at 2 equals 27
- square-divisor-sum local Euler factor at 3 equals 102

## Finite Mathlib Euler Products

The project also defines finite Euler product approximations over mathlib-backed prime indices.

It verifies two-prime products over 2 and 3, and three-prime products over 2, 3, and 5.

Examples include:

- divisor-count two-prime Euler product equals 36
- sum-of-divisors two-prime Euler product equals 198
- square-divisor-sum two-prime Euler product equals 2754
- divisor-count three-prime Euler product equals 216
- sum-of-divisors three-prime Euler product equals 7524

## Importance

This is a major Version 4 upgrade.

The project now connects:

mathlib primality proofs → prime-indexed local factors → finite Euler product approximations

This moves the Euler product layer away from toy prime-like indices and toward real formal number-theory infrastructure.

## Future Work

Future phases should add:

- finite lists of mathlib-backed prime indices
- bounded Euler product folds over prime lists
- divisor lists using mathlib
- finite sums over divisors
- stronger theorem statements connecting local factors and global coefficients
