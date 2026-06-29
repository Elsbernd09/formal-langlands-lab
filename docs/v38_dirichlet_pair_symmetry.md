# V38 Phase 124: Dirichlet Pair Symmetry

Version 38 proves the symmetry layer for Dirichlet divisor pairs.

## Motivation

Dirichlet convolution is commutative because divisor pairs can be swapped:

`a * b = n`

is equivalent to:

`b * a = n`

Version 38 proves this at the divisor-pair kernel level.

## Main Results

Version 38 proves:

`v35DivisorPair n a b → v35DivisorPair n b a`

It also proves kernel symmetry:

`v35DirichletKernelTerm f g a b = v35DirichletKernelTerm g f b a`

## Finset Characterization Swap

Using Version 37, Version 38 also proves that if:

`a ∈ v6DivisorFinset n ∧ b ∈ v6DivisorFinset n ∧ a * b = n`

then:

`b ∈ v6DivisorFinset n ∧ a ∈ v6DivisorFinset n ∧ b * a = n`

for positive `n`.

## Why This Matters

This prepares the commutativity theorem for Dirichlet convolution once finite summation is introduced.
