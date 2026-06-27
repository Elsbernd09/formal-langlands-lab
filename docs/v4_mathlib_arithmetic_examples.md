# Mathlib-Backed Arithmetic Function Examples

This phase extends Version 4 of the Formal Langlands Laboratory by adding mathlib-backed arithmetic function examples.

## Motivation

Earlier phases added mathlib-backed divisor lists and divisor tables. This phase packages those constructions into arithmetic functions and formal L-series examples.

The goal is to connect:

mathlib-backed divisibility → divisor lists → arithmetic functions → L-series examples

## Mathlib-Backed Arithmetic Functions

The project defines:

- mathlib divisor-count function
- mathlib sum-of-divisors function

These are built from mathlib-backed divisor lists.

## Verified Examples

The project verifies divisor-count values such as:

- d(1) = 1
- d(2) = 2
- d(4) = 3
- d(6) = 4
- d(12) = 6

It verifies sum-of-divisors values such as:

- sigma(1) = 1
- sigma(2) = 3
- sigma(4) = 7
- sigma(6) = 12
- sigma(12) = 28

## Agreement With Existing V3 Functions

The project proves that the mathlib-backed arithmetic functions agree with the existing verified V3 functions on selected examples.

This connects the new mathlib-backed layer to the earlier pure Lean arithmetic core.

## Coprime Product Examples

The project verifies coprime product behavior for selected examples such as:

- d(6) = d(2) · d(3)
- sigma(6) = sigma(2) · sigma(3)
- d(12) = d(3) · d(4)
- sigma(12) = sigma(3) · sigma(4)

It also verifies non-coprime failure examples for 8 = 2 · 4.

## Mathlib L-Series Examples

The project packages the mathlib-backed divisor-count and sum-of-divisors functions into formal Dirichlet series.

This connects the mathlib-backed arithmetic layer back to the L-function architecture.

## Importance

This phase is a strong Version 4 upgrade.

The project now has arithmetic functions built from mathlib-backed divisor lists and connected to formal L-series examples.

## Future Work

Future phases should add:

- mathlib Euler product comparison registry
- theorem registry for mathlib-backed examples
- V4 paper upgrade
- V4 release package
