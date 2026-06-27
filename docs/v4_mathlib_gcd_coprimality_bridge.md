# Mathlib GCD and Coprimality Bridge

This phase extends Version 4 by connecting the existing pure Lean coprimality layer to mathlib-backed number theory.

## Motivation

Version 3 introduced gcd and coprimality in the pure Lean arithmetic core. Version 4 now begins connecting those definitions to mathlib-backed predicates.

This is a major step toward replacing finite pure Lean examples with stronger library-supported mathematics.

## Mathlib GCD

The project defines a mathlib-backed gcd wrapper and verifies examples such as:

- gcd(2, 3) = 1
- gcd(2, 4) = 2
- gcd(3, 4) = 1
- gcd(4, 6) = 2

## Mathlib Coprimality

The project defines mathlib-backed coprimality using `Nat.Coprime`.

Verified examples include:

- 2 and 3 are coprime
- 3 and 4 are coprime
- 2 and 4 are not coprime
- 4 and 6 are not coprime

## Pure Lean and Mathlib Agreement

The bridge verifies that the existing pure Lean gcd and Boolean coprimality examples agree with the mathlib-backed versions on selected examples.

## Mathlib Multiplicativity Tests

The project also defines mathlib-coprime-aware multiplicativity tests for arithmetic functions.

It verifies coprime multiplicativity behavior for:

- constant-one function
- identity arithmetic function
- square arithmetic function
- divisor-counting function
- sum-of-divisors function
- square-divisor-sum function

## Importance

This phase strengthens Version 4 by showing that the existing arithmetic core can connect to mathlib's real number-theory infrastructure.

The project is now moving from pure Lean finite computation toward mathlib-supported formal number theory.

## Future Work

Future phases should add:

- finite divisor lists using mathlib
- finite sums over divisor sets
- stronger multiplicativity theorems
- mathlib-backed prime-indexed Euler factors
- migration of V3 pure Lean definitions into mathlib-backed definitions
