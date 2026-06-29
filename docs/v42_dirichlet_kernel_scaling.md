# V42 Phase 128: Dirichlet Kernel Scaling

Version 42 proves scalar behavior for the local Dirichlet kernel.

## Motivation

The local Dirichlet kernel is:

`K(f,g)(a,b) = f(a) * g(b)`

Version 41 proved additivity.

Version 42 proves scaling.

## Main Results

For a scalar `c : Nat`:

`K(c • f, g)(a,b) = c * K(f,g)(a,b)`

and:

`K(f, c • g)(a,b) = c * K(f,g)(a,b)`

Version 42 also proves the zero-scale and one-scale cases.

## Why This Matters

Together, V41 and V42 show that the local kernel has bilinear behavior before summation is introduced.

This is the local algebra needed before proving algebraic laws for Dirichlet convolution.
