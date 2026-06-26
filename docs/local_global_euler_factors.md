# Local-Global Euler Factor Layer

This phase adds local-global structure to the Formal Langlands Laboratory.

## Motivation

Many important L-functions are not only Dirichlet series. They also admit Euler product descriptions, where global arithmetic data is built from local data indexed by primes.

The guiding idea is:

global L-function = product of local factors

In this pure Lean prototype, the project does not yet formalize infinite products or prime-restricted Euler products. Instead, it creates a beginner-safe local factor system indexed by natural numbers.

## Local Factors

A local factor stores:

- an index
- a coefficient

A local factor system assigns a local factor to each natural number.

## From Global Series to Local Data

Given a formal Dirichlet series, the project constructs a local factor system by extracting the coefficient at each index.

This creates the pipeline:

formal L-series → local factor system

## Local-Global Compatibility

A local factor system is compatible with a global formal Dirichlet series when the local coefficient at every index agrees with the global coefficient at that index.

This creates a formal version of local-global consistency.

## Bridge Layer

The Euler factor bridge applies local factor systems to:

- elliptic curve L-series
- modular form L-series
- Galois representation L-series

It also proves that if two global L-series have equal coefficients, then their local factor systems agree.

## Future Upgrades

Future versions may add:

- prime-indexed local factors
- local Euler polynomials
- inverse local factors
- toy infinite product approximations
- compatibility with Hecke eigenvalues
- compatibility with Frobenius trace data
