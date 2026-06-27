# Version 22 General Divisor Predicate

Version 22 begins the transition from concrete divisor Finsets for 6 and 12 toward arbitrary natural numbers.

## Motivation

Versions 15 through 21 completed the concrete equality and classification arc for 6 and 12.

The next major goal is arbitrary-n divisor infrastructure.

## Main Definitions

Version 22 defines:

`v22DivisorPredicate n d`

meaning:

`d ≠ 0 ∧ d ∣ n`

It also defines:

`v22ExpectedDivisorFinset n`

as a general expected divisor Finset over the bounded range from 0 through n.

## Main Results

Version 22 proves:

`v22DivisorPredicate n d ↔ v6IsDivisor n d`

and:

`v22ExpectedDivisorFinset n = v6DivisorFinset n`

It also proves the membership characterization:

`d ∈ v22ExpectedDivisorFinset n ↔ d ∈ Finset.range (n + 1) ∧ v6IsDivisorBool n d = true`

## Why This Matters

This is the first general arbitrary-n layer after the completed 6-and-12 equality/classification arc.

The project is now moving away from isolated examples and toward reusable divisor infrastructure.

## Honest Scope

This phase does not yet prove a full propositional divisor theorem for arbitrary n.

It creates the definitions and Boolean membership bridge needed for that theorem.
