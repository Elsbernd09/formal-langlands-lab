# Formal Langlands Laboratory

A Lean 4 formal verification laboratory for arithmetic functions, divisor sums, formal Dirichlet series, Euler factors, finite Euler products, and Langlands-inspired mathematical architecture.

This project is not a proof of the Langlands Program. It is a formal mathematics laboratory that builds verified arithmetic infrastructure connected to simplified L-function and Euler-product models.

## Current Version

Version 11: Finset Extensionality Framework

Version 11 builds on the expected Finset membership-agreement layer from Version 10.

Version 10 introduced canonical expected divisor Finsets and proved pointwise membership agreement between actual divisor Finsets and expected Finsets over tested profiles.

Version 11 organizes that agreement into a bounded extensionality framework, adds out-of-range non-membership infrastructure, and packages the results as restricted extensionality statements.

## Version 11 Adds

- pointwise agreement definition
- bounded agreement package for 6
- bounded agreement package for 12
- out-of-range non-membership framework
- concrete out-of-range non-membership examples
- out-of-range actual-vs-expected agreement examples
- restricted extensionality package for 6
- restricted extensionality package for 12
- V11 theorem registry
- V11 dashboard

## Representative V11 Results

Version 11 verifies examples such as:

- pointwise agreement for 2 between `v6DivisorFinset 6` and `v10ExpectedDivisorsSix`
- pointwise agreement for 5 between `v6DivisorFinset 6` and `v10ExpectedDivisorsSix`
- pointwise agreement for 4 between `v6DivisorFinset 12` and `v10ExpectedDivisorsTwelve`
- bounded agreement for 6
- bounded agreement for 12
- if `6 < d`, then `d ∉ v6DivisorFinset 6`
- if `12 < d`, then `d ∉ v6DivisorFinset 12`
- `7 ∉ v6DivisorFinset 6`
- `13 ∉ v6DivisorFinset 12`
- restricted extensionality package for 6
- restricted extensionality package for 12

## Build Instructions

Run:

source ~/.profile
lake build

## Honest Scope

This project does not prove Langlands, modularity, analytic continuation, class field theory, or functoriality.

Version 11 does not yet prove full Finset equality between actual and expected divisor Finsets.

It builds the bounded and out-of-range extensionality framework needed before attempting full equality.
