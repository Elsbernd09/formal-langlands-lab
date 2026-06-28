# V36 Phase 122: Divisor-Pair Membership Bridge

Version 36 connects the Dirichlet divisor-pair kernel to the verified divisor Finsets.

## Motivation

Version 35 defined the divisor-pair relation:

`v35DivisorPair n a b`

meaning:

`a ≠ 0 ∧ b ≠ 0 ∧ a * b = n`

This is the support relation for Dirichlet convolution.

Version 36 proves that divisor-pair factors are actual divisors contained in the verified divisor Finset.

## Main Results

For positive `n`, if `a` and `b` form a divisor pair of `n`, then:

`a ∈ v6DivisorFinset n`

and:

`b ∈ v6DivisorFinset n`

The same result is proved for `v22ExpectedDivisorFinset`.

## Why This Matters

Dirichlet convolution sums over divisor pairs.

Before defining the sum, the project now proves that both factors of every divisor pair live inside the verified divisor infrastructure.

This connects the future convolution operation to the arbitrary-n divisor theorem arc.
