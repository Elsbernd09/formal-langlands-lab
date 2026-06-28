# Formal Langlands Laboratory

A Lean 4 / mathlib formalization project exploring verified divisor infrastructure, arithmetic functions, controlled convolution prototypes, divisor sums, multiplicative functions, controlled Dirichlet-series / Euler-product architecture, and finite Euler-product coefficient matching.

## Current Release

**Version:** V90 Finite Coefficient Matching Checkpoint  
**Phase:** 176  
**Status:** Third public checkpoint

## What This Project Proves

This project formalizes a verified path from divisor predicates to explicit arithmetic-function and finite Euler-product infrastructure.

Main verified arcs:

1. Arbitrary-n divisor infrastructure
2. Arithmetic-function core
3. Pointwise arithmetic operations
4. Divisor-pair support architecture
5. Controlled convolution prototypes for n = 6 and n = 12
6. Controlled divisor-sum architecture
7. Multiplicative and completely multiplicative arithmetic functions
8. Controlled Dirichlet-series coefficient windows
9. Controlled Euler-factor coefficient windows
10. Two-factor Euler-product prototype
11. Local multiplicativity bridge
12. Controlled Dirichlet-series / Euler-product comparison layer
13. Expanded Euler-product term matching
14. Complete-multiplicativity coefficient matching
15. Finite aggregate/product identity
16. Collision-free finite coefficient support
17. Duplicate-index aggregation framework

## V90 Main Checkpoint

The main V90 package is:

`v90_finite_coefficient_matching_checkpoint_package`

The V90 theorem map builds on:

- `v81_controlled_euler_product_expanded_term_matching_package`
- `v82_complete_multiplicativity_coefficient_matching_package`
- `v83_finite_euler_product_aggregate_identity_package`
- `v84_finite_euler_product_coefficient_support_package`
- `v85_finite_euler_product_coefficient_matching_package`
- `v86_duplicate_index_detection_package`
- `v87_duplicate_index_aggregation_framework_package`
- `v88_finite_coefficient_matching_theorem_map_package`
- `v89_coefficient_matching_release_readiness_package`

## What This Project Does Not Claim

This project does not claim a proof of Langlands reciprocity.

This project does not claim an infinite Euler product theorem.

This project does not claim analytic convergence of Dirichlet series.

This project does not claim a general all-prime Euler product theorem.

This project does not yet define a fully general Dirichlet convolution over all natural numbers.

## Build

Run:

    lake build

## Project Philosophy

The project prioritizes verified theorem infrastructure over unsupported claims.

The current release is a finite coefficient-matching checkpoint, not a final Langlands formalization.
