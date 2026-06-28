# V43 Phase 129: Dirichlet Kernel Bilinear Registry

Version 43 packages the local algebra of the Dirichlet kernel.

## Motivation

The local Dirichlet kernel is:

`K(f,g)(a,b) = f(a) * g(b)`

Version 41 proved additivity.

Version 42 proved scaling.

Version 43 packages these into a bilinear registry.

## Main Package

Version 43 defines:

`v43DirichletKernelBilinearity`

which packages:

- left additivity
- right additivity
- left scaling
- right scaling

## Registry Layer

Version 43 also records supported versions of the same theorems for actual Dirichlet support.

## Why This Matters

Dirichlet convolution is built by summing local kernel terms over divisor-pair support.

Before the project introduces summation, the local kernel has now been proven to have the algebraic behavior needed for future convolution-level linearity.

## Honest Scope

This phase still does not define the full convolution sum.

It proves and registers the local bilinear algebra that the future convolution sum will inherit.
