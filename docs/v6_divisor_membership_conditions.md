# Version 6 Divisor Membership Conditions

Version 6 continues the repair of the Finset divisor layer.

## Motivation

Phase 58 introduced a stable real divisor Finset definition using a Boolean divisor predicate inside `Finset.filter`.

Phase 59 adds a safer intermediate layer before proving direct Finset membership theorems.

Instead of immediately forcing Lean to prove membership inside a filtered Finset, this phase proves the exact conditions that determine membership:

- the candidate divisor is bounded by `n`
- the Boolean divisor test returns true

## New Definitions

The project defines:

- `v6DivisorMembershipCondition n d`
- `v6NonDivisorMembershipCondition n d`

A divisor membership condition means:

`d ≤ n` and `v6IsDivisorBool n d = true`.

A non-divisor condition means:

`d ≤ n` and `v6IsDivisorBool n d = false`.

## Verified Examples for 6

The project verifies that the divisor membership condition holds for:

- 1 divides 6
- 2 divides 6
- 3 divides 6
- 6 divides 6

It also verifies non-divisor conditions for:

- 0 relative to 6
- 4 relative to 6

## Verified Examples for 12

The project verifies membership conditions for:

- 1
- 2
- 3
- 4
- 6
- 12

relative to 12.

It also verifies non-divisor conditions for:

- 5 relative to 12
- 7 relative to 12

## Importance

This phase strengthens the V6 divisor layer without relying on fragile automatic Finset membership proofs.

The project now has a stable bridge:

Boolean divisor predicate → bounded membership condition → future filtered Finset membership theorem

The next phase can use these conditions to build actual finite divisor tables more safely.
