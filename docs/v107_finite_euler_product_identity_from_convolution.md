# V107 Phase 193: Finite Euler-Product Identity from Convolution

Version 107 connects finite divisor-sum factorization, finite local Euler-factor products, and finite Dirichlet convolution.

## Motivation

Earlier versions developed:

- finite Dirichlet convolution
- sigma-style divisor sums
- finite divisor-sum multiplicativity bridges

Version 107 packages these ideas as finite Euler-product identities.

## Main Idea

For the controlled n = 6 support, V107 defines:

`v107FiniteSigmaEulerProductSix f = σ₂(f) * σ₃(f)`

and proves that, under the finite multiplicativity hypotheses:

- `f(1) = 1`
- `f(6) = f(2) * f(3)`

the sigma-six divisor sum equals the finite Euler product.

It also proves the corresponding convolution form.

## Verified Examples

V107 verifies the identity for:

- constant-one function
- identity function
- square function

It also records n = 12 examples using the sigma-three and sigma-four factors.

## Mathematical Meaning

This phase makes explicit the finite version of the classical idea that Euler-product factorizations correspond to multiplicativity and divisor-sum decompositions.

## Honest Scope

This remains finite and controlled.

It does not claim an infinite Euler product, analytic convergence, or a universal theorem over all natural numbers.
