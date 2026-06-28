# V31 Phase 117: Unified Arbitrary-n Divisor Finset Theorem

Version 31 unifies the positive-n and zero-case divisor Finset theorems.

## Motivation

Version 28 proved the clean positive-n theorem:

`n ≠ 0 → (d ∈ v6DivisorFinset n ↔ d ≠ 0 ∧ d ∣ n)`

Version 30 proved the zero-case theorem:

`∀ d : Nat, d ∉ v6DivisorFinset 0`

Version 31 combines these into one arbitrary-n package.

## Main Results

For every `n` and `d`, Version 31 proves:

- if `n = 0`, then `d ∉ v6DivisorFinset n`
- if `n ≠ 0`, then `d ∈ v6DivisorFinset n ↔ d ≠ 0 ∧ d ∣ n`

The same result is proved for `v22ExpectedDivisorFinset`.

## Global Equality

Version 31 also proves:

`∀ n : Nat, v6DivisorFinset n = v22ExpectedDivisorFinset n`

and therefore:

`∀ n d : Nat, d ∈ v6DivisorFinset n ↔ d ∈ v22ExpectedDivisorFinset n`

## Why This Matters

This is the strongest arbitrary-n divisor theorem so far.

The project has now moved from concrete examples for 6 and 12 to a unified arbitrary-n divisor Finset theorem.

## Honest Scope

This is still about divisor Finsets and divisor predicates.

It is not yet about arithmetic functions, Dirichlet convolution, Euler products, or L-functions. Those should become the next major arc.
