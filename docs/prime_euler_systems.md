# Prime-Indexed Euler Systems

This phase upgrades the local factor layer by introducing prime-indexed data and toy Euler polynomials.

## Motivation

In serious number theory, many L-functions have Euler products indexed by prime numbers. Each prime contributes a local factor, and the global L-function is assembled from these local pieces.

This prototype does not yet use a full formal definition of primality. Instead, it introduces symbolic prime-like indices.

## Prime Indices

A prime index stores:

- a natural-number value
- a Boolean marker indicating that it is accepted as prime-like

This allows the project to model prime-indexed structures without importing mathlib yet.

## Euler Polynomials

A toy Euler polynomial stores:

- a prime index
- a constant term
- a linear coefficient
- a quadratic coefficient

The linear coefficient is extracted from an L-series coefficient. This models the idea that local Euler factors contain arithmetic information from the global L-function.

## Prime Euler Systems

A prime Euler system assigns an Euler polynomial to every prime-like index.

This creates the pipeline:

formal L-series → prime-indexed Euler polynomial system

## Bridge Layer

The prime Euler bridge applies this construction to:

- elliptic curve L-series
- modular form L-series
- Galois representation L-series

It proves that coefficient agreement between global L-series implies agreement between the linear coefficients of their prime-indexed Euler polynomials.

## Future Upgrades

Future versions may add:

- actual primality from mathlib
- prime-restricted indexing
- local Euler factors of degree one and degree two
- determinant-style Euler factors
- Frobenius trace compatibility
- Hecke eigenvalue compatibility
