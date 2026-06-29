# V26 Phase 112: Real Boolean-to-Propositional Divisor Bridge

Version 26 proves the real bridge between the Boolean divisor test and the propositional divisor predicate.

## Key Definition

The project defines:

`mathlibDividesBool a b := decide (a ∣ b)`

Therefore:

`mathlibDividesBool a b = true ↔ a ∣ b`

## Main Result

Version 26 proves:

`v6IsDivisorBool n d = true ↔ v6IsDivisor n d`

Since:

`v6IsDivisor n d`

means:

`d ≠ 0 ∧ d ∣ n`

this connects the Boolean engine to the actual mathematical divisor predicate.

## Membership Upgrade

Version 26 also proves:

`d ∈ v6DivisorFinset n ↔ d ≤ n ∧ v6IsDivisor n d`

and:

`d ∈ v22ExpectedDivisorFinset n ↔ d ≤ n ∧ v6IsDivisor n d`

## Why This Matters

This is a major arbitrary-n theorem.

The project now has a bridge from computational divisor testing to proposition-level number theory.
