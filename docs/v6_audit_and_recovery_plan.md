# Version 6 Audit and Recovery Plan

Version 6 begins with an audit of the stabilized Version 5 Finset layer.

## Why This Audit Exists

Version 5 successfully introduced a Finset-based divisor arithmetic architecture, but some modules became fragile when merged into `main`.

To keep the public `main` branch build-stable, several V5 modules were simplified or stabilized at the presentation layer.

Version 6 is designed to repair that.

## Current Status

The project currently has:

- a stable Lean 4 build
- mathlib integration
- pure Lean arithmetic infrastructure from earlier versions
- mathlib-backed prime/divisibility infrastructure
- a V5 Finset architecture
- a stable public `main` branch

## Modules That Need Rebuilding

Version 6 identifies the following modules as needing rigorous theorem-level rebuilds:

- FinsetDivisorSets
- FinsetDivisorSums
- FinsetListComparison
- FinsetMultiplicativityExamples
- FinsetEulerProductExamples

## Stabilized Presentation Modules

Some modules currently build and document the intended architecture but should be strengthened later:

- FinsetFoundation
- FinsetArithmeticFunctions
- FinsetLSeriesExamples
- V5TheoremRegistry

## Version 6 Goal

The goal of Version 6 is to replace fragile or presentation-level parts with cleaner theorem-backed constructions.

The priority is:

- fewer claims
- stronger proofs
- cleaner definitions
- less dependence on fragile automatic evaluation
- more mathlib-aligned theorem statements

## Recommended V6 Direction

Version 6 should proceed in this order:

1. Rebuild real divisor Finset definitions carefully.
2. Prove small membership/cardinality results without fragile automation.
3. Rebuild finite sums over divisor Finsets.
4. Compare the new Finset sums to existing arithmetic functions.
5. Restore multiplicativity examples only when the underlying functions are strong enough.
6. Rebuild the theorem registry using only genuinely supported results.

## Honest Scope

Version 6 is not about adding more huge architecture.

Version 6 is about making the Finset layer more mathematically honest and robust.
