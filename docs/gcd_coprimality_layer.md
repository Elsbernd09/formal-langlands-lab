# GCD and Coprimality Layer

This phase begins Version 3 of the Formal Langlands Laboratory.

## Motivation

Version 2 added verified divisor sums, classical arithmetic functions, finite multiplicativity tests, and Euler product approximations.

The next weakness to address is coprimality.

In classical number theory, an arithmetic function f is multiplicative when:

f(a · b) = f(a) · f(b)

whenever a and b are coprime.

This phase introduces a pure Lean 4 gcd and coprimality layer.

## GCD Value

The project defines a wrapper around Lean's natural-number gcd operation.

This gives the project a formal way to compute examples such as:

- gcd(2, 3) = 1
- gcd(2, 4) = 2
- gcd(3, 4) = 1
- gcd(4, 6) = 2

## Coprimality

The project defines coprimality as:

gcd(a, b) = 1

It also defines a Boolean coprimality test for finite computation.

Verified examples include:

- 2 and 3 are coprime
- 3 and 4 are coprime
- 2 and 4 are not coprime
- 4 and 6 are not coprime

## Coprime Multiplicativity

The project defines a coprime multiplicativity predicate:

if a and b are coprime, then f(a · b) = f(a) · f(b)

This is more mathematically accurate than the earlier finite multiplicativity tests.

## Connection to Existing Functions

The phase checks coprime multiplicativity behavior for:

- constant-one function
- identity arithmetic function
- square arithmetic function
- divisor-counting function
- sum-of-divisors function
- square-divisor-sum function

## Importance

This is a major rigor upgrade.

The project now has the missing condition needed for serious multiplicative number theory: coprimality.

This prepares the project for stronger theorem statements about multiplicative arithmetic functions and Euler products.

## Future Work

Future phases should add:

- finite coprime test suites
- coprime multiplicativity tables
- stronger divisor-function theorems
- prime-power arithmetic examples
- Euler product coefficient comparison
- eventually mathlib-powered general multiplicativity proofs
