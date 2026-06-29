# Version 14 General Out-of-Range Agreement

Version 14 Phase 100 proves general out-of-range agreement between the actual divisor Finsets and expected divisor Finsets.

## Motivation

Phase 99 proved general expected out-of-range non-membership:

`6 < d → d ∉ v10ExpectedDivisorsSix`

and:

`12 < d → d ∉ v10ExpectedDivisorsTwelve`

Earlier versions already had actual out-of-range non-membership for the actual divisor Finsets.

Phase 100 combines these two sides.

## Main Results

For 6:

`∀ d : Nat, 6 < d → (d ∈ v6DivisorFinset 6 ↔ d ∈ v10ExpectedDivisorsSix)`

For 12:

`∀ d : Nat, 12 < d → (d ∈ v6DivisorFinset 12 ↔ d ∈ v10ExpectedDivisorsTwelve)`

## Importance

This removes the weakness of only proving out-of-range agreement for sample values.

The project now has general out-of-range agreement for 6 and 12.

## Next Step

The next phase should combine:

- bounded agreement from Version 11
- general out-of-range agreement from Version 14

to attempt full universal membership agreement for 6.
