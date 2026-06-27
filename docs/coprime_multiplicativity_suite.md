# Coprime Multiplicativity Test Suite

This phase extends the Version 3 gcd and coprimality layer.

## Motivation

In classical number theory, multiplicative arithmetic functions are only required to satisfy:

f(a · b) = f(a) · f(b)

when a and b are coprime.

Earlier versions of the project tested multiplicativity on selected pairs. Version 3 improves this by introducing explicit coprime-aware test suites.

## Coprime Pair Suite

The project defines finite suites of coprime multiplicativity tests up to small bounds.

The suite checks pairs such as:

- 2 and 3
- 3 and 4
- 2 and 5
- 4 and 5

These pairs are tested using the coprimality condition introduced in Phase 29.

## Verified Functions

The project verifies coprime multiplicativity behavior for:

- constant-one function
- identity arithmetic function
- square arithmetic function
- divisor-counting function
- sum-of-divisors function
- square-divisor-sum function

## Non-Coprime Contrast

The project also records non-coprime witness checks such as:

- 2 and 4 are not coprime
- 3 and 6 are not coprime

This helps distinguish genuine coprime multiplicativity from unrestricted multiplicativity.

## Additional Verified Values

The phase also verifies larger arithmetic values:

- divisor count at 12 equals 6
- sum of divisors at 12 equals 28
- square divisor sum at 12 equals 210

## Importance

This is a major rigor improvement over simple multiplicativity tests.

The project now has:

- gcd
- coprimality
- coprime multiplicativity predicates
- finite coprime test suites
- verified classical arithmetic-function examples

This moves the arithmetic core closer to real multiplicative number theory.

## Future Work

Future phases should add:

- prime-power arithmetic tables
- Euler product coefficient comparison
- stronger theorem indexes
- generalized coprime multiplicativity lemmas
- mathlib-backed gcd and divisibility proofs
