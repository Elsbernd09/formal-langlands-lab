# Euler Product Coefficient Comparison

This phase adds a coefficient-comparison layer to Version 3 of the Formal Langlands Laboratory.

## Motivation

Euler products work because local prime-power data can combine into global arithmetic coefficients.

For multiplicative arithmetic functions, the guiding principle is:

f(a · b) = f(a) · f(b)

whenever a and b are coprime.

Earlier phases added gcd, coprimality, coprime multiplicativity tests, and prime-power tables. This phase connects those pieces directly.

## Local and Global Coefficients

The project defines:

- a local coefficient product f(a) · f(b)
- a global coefficient f(a · b)
- a coefficient-product agreement predicate

This gives the project a formal way to compare local data with global arithmetic data.

## Verified Coprime Comparisons

The project verifies coefficient agreement for coprime decompositions such as:

- 6 = 2 · 3
- 12 = 3 · 4
- 20 = 4 · 5

For each decomposition, the project checks classical arithmetic functions:

- divisor-counting function
- sum-of-divisors function
- square-divisor-sum function

## Examples

The project verifies:

- d(6) = d(2) · d(3)
- sigma(6) = sigma(2) · sigma(3)
- squareDivisorSum(6) = squareDivisorSum(2) · squareDivisorSum(3)

It also verifies:

- d(12) = d(3) · d(4)
- sigma(12) = sigma(3) · sigma(4)
- squareDivisorSum(12) = squareDivisorSum(3) · squareDivisorSum(4)

And:

- d(20) = d(4) · d(5)
- sigma(20) = sigma(4) · sigma(5)
- squareDivisorSum(20) = squareDivisorSum(4) · squareDivisorSum(5)

## Non-Coprime Contrast

The phase also verifies that unrestricted multiplication fails on non-coprime decompositions.

For example, 8 = 2 · 4, but 2 and 4 are not coprime. The project verifies that the divisor-counting, sum-of-divisors, and square-divisor-sum coefficient product identities fail in that non-coprime case.

## Importance

This is a major rigor upgrade.

The project is no longer only computing arithmetic values or local Euler factors. It now formally compares local coefficient products against global coefficients, which is the core arithmetic mechanism behind Euler products.

## Future Work

Future phases should add:

- theorem index files
- stronger named theorem summaries
- bounded coefficient comparison tables
- finite Euler product expansion examples
- eventual mathlib-backed proofs for general multiplicative functions
