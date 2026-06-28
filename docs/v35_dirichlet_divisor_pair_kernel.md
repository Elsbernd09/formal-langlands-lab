# V35 Phase 121: Dirichlet Convolution Divisor-Pair Kernel

Version 35 begins the Dirichlet convolution arc by defining the divisor-pair kernel.

## Motivation

Dirichlet convolution is usually written as:

`(f ⋆ g)(n) = Σ_{ab=n} f(a)g(b)`

Before defining the summation, the project needs the pair relation:

`a * b = n`

with nonzero factors.

## Main Definition

Version 35 defines:

`v35DivisorPair n a b`

meaning:

`a ≠ 0 ∧ b ≠ 0 ∧ a * b = n`

It also defines a kernel term:

`v35DirichletKernelTerm f g a b = f a * g b`

## Main Results

Version 35 proves:

- divisor pairs are symmetric
- the left factor divides `n`
- the right factor divides `n`
- each factor is nonzero
- the product equals `n`
- `(1, n)` is a divisor pair when `n ≠ 0`
- `(n, 1)` is a divisor pair when `n ≠ 0`

## Why This Matters

This phase builds the support relation for Dirichlet convolution without relying yet on fragile Finset summation syntax.

The next phase can build divisor-pair collections or finite support infrastructure.
