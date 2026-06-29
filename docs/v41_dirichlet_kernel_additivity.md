# V41 Phase 127: Dirichlet Kernel Additivity

Version 41 proves additivity laws for the local Dirichlet kernel.

## Motivation

The Dirichlet convolution of arithmetic functions is built from local terms:

`f(a) * g(b)`

Before proving convolution-level algebra, the project proves algebra at the local kernel level.

## Main Definitions

Version 41 defines two propositions:

- left additivity of the kernel
- right additivity of the kernel

## Main Results

For arithmetic functions `f₁`, `f₂`, and `g`:

`K(f₁ + f₂, g)(a,b) = K(f₁,g)(a,b) + K(f₂,g)(a,b)`

For arithmetic functions `f`, `g₁`, and `g₂`:

`K(f, g₁ + g₂)(a,b) = K(f,g₁)(a,b) + K(f,g₂)(a,b)`

These are proved using the pointwise operation layer from V34.

## Why This Matters

Dirichlet convolution is a sum of kernel terms over divisor-pair support.

Kernel additivity is the local theorem needed before proving full convolution additivity.
