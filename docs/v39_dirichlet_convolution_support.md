# V39 Phase 125: Dirichlet Convolution Support Relation

Version 39 defines the verified support relation for future Dirichlet convolution.

## Motivation

Dirichlet convolution is normally written as:

`(f ⋆ g)(n) = Σ_{ab=n} f(a)g(b)`

The summation itself will be introduced later.

Before summation, the project needs a verified support relation describing exactly which pairs `(a, b)` contribute.

## Main Definitions

Version 39 defines actual support:

`a ∈ v6DivisorFinset n ∧ b ∈ v6DivisorFinset n ∧ a * b = n`

and expected support:

`a ∈ v22ExpectedDivisorFinset n ∧ b ∈ v22ExpectedDivisorFinset n ∧ a * b = n`

## Main Results

For positive `n`, Version 39 proves:

`v39ActualDirichletSupport n a b ↔ v35DivisorPair n a b`

and:

`v39ExpectedDirichletSupport n a b ↔ v35DivisorPair n a b`

Therefore actual and expected support are equivalent.

## Why This Matters

This is the formal support layer for Dirichlet convolution.

The project now has:

- arithmetic functions
- pointwise operations
- divisor-pair kernel
- pair/Finset characterization
- pair symmetry
- convolution support relation

The summation layer can be added later once Finset summation syntax is stabilized.
