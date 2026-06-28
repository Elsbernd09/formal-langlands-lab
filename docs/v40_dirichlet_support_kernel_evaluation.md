# V40 Phase 126: Dirichlet Support Kernel Evaluation

Version 40 connects the Dirichlet support relation to the kernel term.

## Motivation

Version 39 defined the verified support relation for future Dirichlet convolution.

Version 40 proves that whenever a pair is in the support relation, the local kernel contribution is exactly:

`f a * g b`

## Main Result

For actual support:

`v39ActualDirichletSupport n a b → v35DirichletKernelTerm f g a b = f a * g b`

For expected support:

`v39ExpectedDirichletSupport n a b → v35DirichletKernelTerm f g a b = f a * g b`

## Symmetry

Version 40 also records the swap identity:

`v35DirichletKernelTerm f g a b = v35DirichletKernelTerm g f b a`

This prepares future commutativity of Dirichlet convolution.

## Why This Matters

The project now has the local contribution theorem for convolution before introducing summation.

This keeps the convolution arc mathematically grounded while avoiding fragile Finset summation syntax for now.
