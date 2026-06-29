# V71 Phase 157: Controlled Dirichlet-Series Coefficient Architecture

Version 71 starts the controlled Dirichlet-series architecture.

## Motivation

A Dirichlet series has the formal shape:

`Σ f(n) / n^s`

Before building analytic or symbolic Dirichlet series, the project needs verified coefficient windows.

## Main Definitions

Version 71 defines:

- index window up to 6
- index window up to 12
- coefficient list of an arithmetic function over a window
- coefficient aggregate over a finite list

## Main Results

Version 71 proves explicit aggregate values for:

- one function
- identity function
- square function

over windows `n ≤ 6` and `n ≤ 12`.

## Why This Matters

This is the first layer of controlled Dirichlet-series architecture.

It does not introduce analysis or convergence.

It builds the verified finite coefficient layer needed before Euler-product style experiments.
