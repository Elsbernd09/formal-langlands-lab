# V44 Phase 130: Dirichlet Convolution Contribution Relation

Version 44 defines the local contribution relation for future Dirichlet convolution.

## Motivation

Dirichlet convolution is built from local terms:

`f(a) * g(b)`

over valid support pairs:

`a * b = n`

Version 44 packages both parts together.

## Main Definitions

Actual contribution:

`v44ActualDirichletContribution f g n a b value`

means:

- `(a,b)` is in actual Dirichlet support for `n`
- `value` equals the local kernel term `K(f,g)(a,b)`

Expected contribution is defined the same way using expected support.

## Main Results

Version 44 proves:

- contribution implies support
- contribution implies kernel value
- contribution evaluates to `f(a) * g(b)`
- actual and expected contribution are equivalent for positive `n`
- contribution can be swapped using pair symmetry
- zero and one special contribution values

## Why This Matters

This is the last local layer before a true convolution operation.

The project now has:

- arithmetic functions
- pointwise operations
- divisor-pair support
- kernel evaluation
- kernel bilinearity
- contribution relation
