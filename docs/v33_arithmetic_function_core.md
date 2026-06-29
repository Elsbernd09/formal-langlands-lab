# V33 Phase 119: Arithmetic Function Core

Version 33 begins the arithmetic-function arc.

## Motivation

Versions 22 through 32 built arbitrary-n divisor Finset infrastructure.

The next major arc is arithmetic functions.

Arithmetic functions are functions from natural numbers to natural numbers.

## Main Definitions

Version 33 defines:

`v33ArithmeticFunction := Nat → Nat`

It also defines:

- zero arithmetic function
- one arithmetic function
- identity arithmetic function
- Kronecker delta at one
- divisor-count function

## Main Results

Version 33 proves basic evaluation theorems for the core functions.

It also defines extensional equality for arithmetic functions:

`∀ n : Nat, f n = g n`

and proves that extensional equality implies ordinary function equality.

## Why This Matters

Arithmetic functions are the foundation for:

- divisor-count functions
- divisor-sum functions
- Dirichlet convolution
- multiplicativity
- formal Dirichlet series
- Euler product identities

## Honest Scope

This phase only creates the basic function layer.

The next phase should define pointwise addition and multiplication of arithmetic functions.
