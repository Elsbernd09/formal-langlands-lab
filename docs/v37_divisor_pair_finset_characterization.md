# V37 Phase 123: Divisor-Pair Finset Characterization

Version 37 proves a full Finset characterization of Dirichlet divisor pairs.

## Motivation

Version 35 defined the divisor-pair kernel:

`v35DivisorPair n a b`

meaning:

`a ≠ 0 ∧ b ≠ 0 ∧ a * b = n`

Version 36 proved that the factors of a divisor pair belong to the verified divisor Finsets.

Version 37 proves the converse and packages the full equivalence.

## Main Result

For positive `n`:

`v35DivisorPair n a b ↔ a ∈ v6DivisorFinset n ∧ b ∈ v6DivisorFinset n ∧ a * b = n`

The same theorem is proved for `v22ExpectedDivisorFinset`.

## Why This Matters

Dirichlet convolution is supported on divisor pairs.

This theorem proves that the pair relation is exactly equivalent to verified divisor-Finset membership plus the product equation.

That gives the project a clean support theorem for future convolution definitions.

## Honest Scope

This still does not define the full summation formula for Dirichlet convolution.

It prepares the support relation needed before summation.
