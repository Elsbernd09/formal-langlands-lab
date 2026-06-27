# Formal Langlands Laboratory

A Lean 4 formal verification laboratory for arithmetic functions, divisor sums, formal Dirichlet series, Euler factors, finite Euler products, and Langlands-inspired mathematical architecture.

This project is not a proof of the Langlands Program. It is a formal mathematics laboratory that builds verified arithmetic infrastructure connected to simplified L-function and Euler-product models.

## Current Version

Version 13: Strong Out-of-Range Agreement Preparation

Version 13 builds on the universal membership-agreement preparation layer from Version 12.

Version 12 prepared bounded and actual out-of-range ingredients for universal membership agreement.

Version 13 strengthens the expected-Finset side by adding expected out-of-range examples, actual-vs-expected out-of-range agreement packages, and bounded-plus-out-of-range preparation structures.

## Version 13 Adds

- expected out-of-range examples for 6
- expected out-of-range examples for 12
- expected out-of-range sample package for 6
- expected out-of-range sample package for 12
- out-of-range agreement definition for 6
- out-of-range agreement definition for 12
- actual-vs-expected out-of-range agreement package for 6
- actual-vs-expected out-of-range agreement package for 12
- bounded-plus-out-of-range agreement package for 6
- bounded-plus-out-of-range agreement package for 12
- strong agreement preparation package
- V13 theorem registry
- V13 dashboard

## Representative V13 Results

Version 13 verifies examples such as:

- `7 ∉ v10ExpectedDivisorsSix`
- `8 ∉ v10ExpectedDivisorsSix`
- `9 ∉ v10ExpectedDivisorsSix`
- `10 ∉ v10ExpectedDivisorsSix`
- `13 ∉ v10ExpectedDivisorsTwelve`
- `14 ∉ v10ExpectedDivisorsTwelve`
- `15 ∉ v10ExpectedDivisorsTwelve`
- `16 ∉ v10ExpectedDivisorsTwelve`
- `v13OutOfRangeAgreementSix 7`
- `v13OutOfRangeAgreementSix 8`
- `v13OutOfRangeAgreementSix 9`
- `v13OutOfRangeAgreementSix 10`
- `v13OutOfRangeAgreementTwelve 13`
- `v13OutOfRangeAgreementTwelve 14`
- `v13OutOfRangeAgreementTwelve 15`
- `v13OutOfRangeAgreementTwelve 16`
- bounded-plus-out-of-range agreement for 6
- bounded-plus-out-of-range agreement for 12
- strong agreement preparation

## Build Instructions

Run:

source ~/.profile
lake build

## Honest Scope

This project does not prove Langlands, modularity, analytic continuation, class field theory, or functoriality.

Version 13 does not yet prove the final universal membership theorem over all natural numbers.

Version 13 does not yet prove full Finset equality.

It strengthens the expected-side and out-of-range agreement infrastructure needed before attempting those theorems.
