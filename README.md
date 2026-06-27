# Formal Langlands Laboratory

A Lean 4 formal verification laboratory for arithmetic functions, divisor sums, formal Dirichlet series, Euler factors, finite Euler products, and Langlands-inspired mathematical architecture.

This project is not a proof of the Langlands Program. It is a formal mathematics laboratory that builds verified arithmetic infrastructure connected to simplified L-function and Euler-product models.

## Current Version

Version 7: Direct Finset Membership Theorems

Version 7 builds on the stable Version 6 recovery layer.

Version 6 repaired the Finset divisor infrastructure by introducing stable Boolean divisor predicates, divisor tables, arithmetic-function bridges, and an honest theorem registry.

Version 7 proves direct membership theorems for the Boolean-filtered divisor Finsets and connects those membership profiles back to divisor sums, arithmetic functions, and formal L-series coefficients.

## Version 7 Adds

- direct theorem for membership in `v6DivisorFinset n`
- extraction theorem for Finset range membership
- extraction theorem for Boolean divisor truth
- introduction theorem for divisor Finset membership
- direct membership examples for `v6DivisorFinset 6`
- direct non-membership examples for `v6DivisorFinset 6`
- direct membership examples for `v6DivisorFinset 12`
- direct non-membership examples for `v6DivisorFinset 12`
- complete divisor membership profiles for 6 and 12
- explicit divisor-sum computations from profiles
- explicit square-divisor-sum computations from profiles
- bridges from profile sums to V6 arithmetic functions
- bridges from profile sums to V6 formal L-series
- V7 theorem registry
- V7 dashboard

## Representative V7 Results

Version 7 verifies examples such as:

- `d ∈ v6DivisorFinset n ↔ d ∈ Finset.range (n + 1) ∧ v6IsDivisorBool n d = true`
- `2 ∈ v6DivisorFinset 6`
- `4 ∉ v6DivisorFinset 6`
- `4 ∈ v6DivisorFinset 12`
- `5 ∉ v6DivisorFinset 12`
- `12 ∈ v6DivisorFinset 12`
- complete divisor membership profile for 6
- complete divisor membership profile for 12
- divisor profile sum of 6 equals 12
- divisor profile sum of 12 equals 28
- square-divisor profile sum of 6 equals 50
- square-divisor profile sum of 12 equals 210
- divisor profile sum of 12 agrees with the V6 sum-of-divisors function
- square-divisor profile sum of 12 agrees with the V6 square-divisor-sum function
- divisor profile sum of 12 agrees with the formal L-series coefficient

## Build Instructions

Run:

source ~/.profile
lake build

## Honest Scope

This project does not prove Langlands, modularity, analytic continuation, class field theory, or functoriality.

Version 7 is a direct-membership theorem release. It proves concrete Finset divisor membership behavior for 6 and 12 and connects those profiles to divisor sums and formal L-series coefficients.

It does not yet prove general divisor-sum multiplicativity or fully general divisor Finset equality theorems.
