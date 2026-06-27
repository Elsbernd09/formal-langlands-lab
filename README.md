# Formal Langlands Laboratory

A Lean 4 formal verification laboratory for arithmetic functions, formal L-series, Euler factors, and Langlands-inspired mathematical architecture.

This project is not a proof of the Langlands Program. It is a formal mathematics laboratory that builds rigorous verified arithmetic infrastructure and connects it to simplified L-function and Euler-product models.

## Current Version

**Version 4: Mathlib Integration**

Version 4 introduces mathlib, Lean's main mathematical library, into the project.

Earlier versions were built in pure Lean for stability. Version 4 begins connecting the project's arithmetic core to real mathlib-backed number theory.

## Main Project Layers

The project currently includes:

- pure Lean arithmetic-function infrastructure
- verified divisor-sum computations
- classical arithmetic functions
- coprimality and multiplicativity tests
- Euler factor approximations
- formal Dirichlet series examples
- mathlib-backed primality
- mathlib-backed divisibility
- mathlib gcd and coprimality bridge
- mathlib prime-indexed Euler factors
- mathlib prime-list Euler products
- mathlib divisor lists and divisor tables
- mathlib-backed arithmetic function examples
- mathlib-backed L-series examples
- theorem registries and dashboards

## Version 4 Highlights

Version 4 adds:

### Mathlib Prime Infrastructure

The project defines prime indices carrying actual mathlib proofs of primality.

Examples include:

- 2 is prime
- 3 is prime
- 5 is prime
- 7 is prime
- 11 is prime

### Mathlib Divisibility

The project defines mathlib-backed divisibility checks and verifies examples such as:

- 2 divides 6
- 3 divides 12
- 5 divides 25
- 2 does not divide 5
- 3 does not divide 10

### Mathlib GCD and Coprimality Bridge

The project connects its pure Lean gcd/coprimality infrastructure to a mathlib-backed gcd/coprimality layer.

### Mathlib Prime-Indexed Euler Factors

The project defines local Euler factor approximations indexed by prime objects that carry mathlib primality proofs.

### Prime-List Euler Product Folds

The project defines finite Euler products by mapping local Euler factors over lists of mathlib-backed prime indices and folding by multiplication.

### Mathlib Divisor Lists

The project constructs divisor lists using mathlib-backed divisibility.

Verified examples include:

- divisors of 1 are [1]
- divisors of 2 are [1, 2]
- divisors of 4 are [1, 2, 4]
- divisors of 6 are [1, 2, 3, 6]
- divisors of 12 are [1, 2, 3, 4, 6, 12]

### Mathlib-Backed Arithmetic Functions

The project defines arithmetic functions from mathlib divisor lists:

- mathlib divisor-count function
- mathlib sum-of-divisors function

These are compared against the existing verified arithmetic functions.

### Mathlib L-Series Examples

The project packages mathlib-backed arithmetic functions into formal Dirichlet series examples.

## Representative Verified Results

The project verifies examples such as:

- divisor count at 12 equals 6
- sum of divisors at 12 equals 28
- divisor-count finite Euler product over 2, 3, 5 equals 216
- sum-of-divisors finite Euler product over 2, 3, 5 equals 7524
- square-divisor-sum finite Euler product over 2, 3, 5 equals 1867212

## Build Instructions

Install Lean through elan, then run:

```bash
source ~/.profile
lake build
