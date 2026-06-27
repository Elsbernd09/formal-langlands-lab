# Version 11 Restricted Extensionality

Version 11 Phase 87 packages bounded agreement and out-of-range non-membership into restricted extensionality statements.

## Motivation

Earlier phases proved:

- bounded pointwise agreement inside the divisor-search range
- out-of-range non-membership for actual divisor Finsets

Phase 87 combines these into restricted extensionality statements for 6 and 12.

## Restricted Extensionality for 6

The project defines and proves:

`v11RestrictedExtensionalitySix`

This contains:

- bounded agreement from 0 through 6
- the rule that if `6 < d`, then `d ∉ v6DivisorFinset 6`

## Restricted Extensionality for 12

The project defines and proves:

`v11RestrictedExtensionalityTwelve`

This contains:

- bounded agreement from 0 through 12
- the rule that if `12 < d`, then `d ∉ v6DivisorFinset 12`

## Importance

This is the strongest stable equality-preparation layer so far.

The project now has:

actual divisor Finset
→ expected divisor Finset
→ bounded pointwise agreement
→ out-of-range non-membership
→ restricted extensionality package

The next step is a theorem registry and dashboard for Version 11.
