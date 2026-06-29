# V61 Phase 147: Multiplicative Function Predicate

Version 61 starts the multiplicative arithmetic-function arc.

## Motivation

The project has built arithmetic functions and controlled convolution prototypes.

The next serious number-theoretic layer is multiplicativity.

## Main Definitions

Version 61 defines:

`v61Multiplicative f`

meaning:

`f(a * b) = f(a) * f(b)`

whenever `a` and `b` are nonzero and coprime.

It also defines:

`v61CompletelyMultiplicative f`

meaning the same identity holds for all `a` and `b`.

## Main Results

Version 61 proves:

- completely multiplicative implies multiplicative
- the one function is completely multiplicative
- the one function is multiplicative
- the identity function is completely multiplicative
- the identity function is multiplicative

## Why This Matters

Multiplicative functions are central to elementary and analytic number theory.

This starts the transition from explicit convolution prototypes toward real arithmetic-function theory.
