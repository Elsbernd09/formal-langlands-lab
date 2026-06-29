# Formal Langlands Laboratory

A Lean 4 / mathlib formalization project exploring verified divisor infrastructure, arithmetic functions, controlled convolution prototypes, divisor sums, multiplicative functions, controlled finite Euler-product architecture, generalized finite prime-window infrastructure, and finite Dirichlet-convolution theory.

## Current Release

**Version:** V110 Finite Dirichlet-Convolution Public Checkpoint  
**Phase:** 196  
**Status:** Serious number-theory upgrade checkpoint

## Main V110 Package

`v110_finite_dirichlet_convolution_checkpoint_package`

## What V110 Adds

V110 packages the finite Dirichlet-convolution arc:

1. finite Dirichlet convolution over explicit divisor-pair supports
2. finite additivity/linearity expansions
3. finite convolution symmetry
4. divisor sums as convolution with the one function
5. sigma-style finite divisor-sum operators
6. finite divisor-sum multiplicativity bridge
7. finite Euler-product identity from convolution
8. theorem-map registry
9. release-readiness registry
10. public checkpoint registry

## Mathematical Meaning

The project now contains a coherent finite number-theory pipeline:

`finite Dirichlet convolution → divisor sums → sigma operators → multiplicativity bridge → finite Euler-product identity`

This is still finite and controlled, but it is now much more recognizable as formalized arithmetic-function theory.

## Honest Scope

This project does not claim:

- Langlands reciprocity
- infinite Euler products
- analytic convergence
- universal Dirichlet convolution over all natural numbers
- associativity of Dirichlet convolution for all n
- a general all-prime Euler-product theorem

The project is a serious finite Lean-verified infrastructure project, not a completed Langlands proof.

## Build

Run:

    lake build

## Project Philosophy

The project prioritizes verified theorem infrastructure over unsupported mathematical claims.
