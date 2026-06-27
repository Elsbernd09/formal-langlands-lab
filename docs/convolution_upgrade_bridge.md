# Convolution Upgrade Bridge

This phase connects the original toy Dirichlet convolution prototype to the more serious Version 2 verified divisor-sum convolution.

## Motivation

The first version of the project contained a deliberately simple convolution prototype. It was useful for early architecture building, but it did not model the classical Dirichlet convolution formula.

Version 2 introduces a verified divisor-sum construction:

(f * g)(n) = sum over d | n of f(d) g(n / d)

This phase documents and formalizes the distinction between the old toy model and the upgraded V2 model.

## Toy Convolution

The original toy convolution was defined pointwise as a simple expression involving f(n) and g(n). It was useful for building early L-series architecture, but it was not intended to be mathematically complete.

## Verified Convolution

The V2 verified convolution computes divisor contributions over all possible divisors up to n.

This allows the project to recover classical arithmetic functions such as:

- divisor-counting function
- sum-of-divisors function
- square-divisor-sum function

## Formal Upgrade Bridge

The new bridge file packages both the toy convolution and the verified convolution into formal Dirichlet series.

It also proves concrete facts showing that:

- the toy convolution and verified convolution differ on simple examples
- the verified convolution recovers divisor-count values
- the verified convolution recovers sum-of-divisors values
- the verified convolution works inside the L-series architecture

## Importance

This phase improves the honesty and rigor of the project.

Instead of pretending the early toy convolution was already complete, the project now clearly marks it as an early prototype and connects the serious V2 replacement to the rest of the architecture.

## Future Work

Future versions may fully deprecate the original toy convolution file or rename it as a historical prototype. The verified divisor-sum convolution should become the main arithmetic convolution used by later number-theory and L-series modules.
