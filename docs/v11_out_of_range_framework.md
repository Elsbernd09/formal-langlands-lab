# Version 11 Out-of-Range Non-Membership Framework

Version 11 Phase 86 adds out-of-range non-membership infrastructure.

## Motivation

Phase 85 proved bounded pointwise agreement between actual divisor Finsets and expected divisor Finsets.

For full Finset equality, it is also important to know what happens outside the bounded divisor-search range.

For a divisor Finset of `n`, any `d` with `n < d` cannot be a member.

## Main Result

The project packages the existing V8 theorem:

`n < d → d ∉ v6DivisorFinset n`

into the V11 extensionality framework.

## Concrete Results

The phase proves:

- `7 ∉ v6DivisorFinset 6`
- `8 ∉ v6DivisorFinset 6`
- `13 ∉ v6DivisorFinset 12`
- `14 ∉ v6DivisorFinset 12`

It also proves matching non-membership results for the expected Finsets.

## Importance

The project now has two ingredients needed for future equality:

1. bounded pointwise agreement inside the finite search range;
2. out-of-range non-membership for the actual divisor Finsets.

This prepares the project for stronger extensionality and equality attempts.
