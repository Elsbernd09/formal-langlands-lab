# L-functions Explained

An L-function is one of the central objects in modern number theory. It packages arithmetic information into a structured analytic object.

A typical L-function begins as a Dirichlet series:

L(s) = Σ a_n / n^s

The sequence a_n contains arithmetic information. Depending on the source, these coefficients may come from primes, characters, elliptic curves, modular forms, or Galois representations.

## Formal Dirichlet Series

This project begins by modeling L-functions as formal Dirichlet series. Instead of immediately studying analytic convergence, we represent the L-function by its coefficient function:

a : Nat → Nat

This allows the project to study the algebraic structure of L-functions first.

## Euler Products

Many important L-functions also admit Euler product expansions. These express global arithmetic information as a product of local factors indexed by primes.

The guiding idea is:

global object = product of local prime data

In this repository, the Euler product layer begins as a prototype. Each natural number can be assigned a local factor, and later versions will restrict this to primes and develop more accurate local factor formulas.

## Connection to Langlands

Langlands-style correspondences often predict that two different mathematical objects produce the same L-function. This means that their coefficient data, Euler factors, or analytic behavior agree.

The current project formalizes the simplest version of this idea: coefficient agreement.
