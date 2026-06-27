# Version 19 Arithmetic Consequences from Finset Equality

Version 19 begins transferring arithmetic consequences through the Finset equality theorems proved in Versions 16 and 18.

## Main Inputs

Version 16 proved:

`v6DivisorFinset 6 = v10ExpectedDivisorsSix`

Version 18 proved:

`v6DivisorFinset 12 = v10ExpectedDivisorsTwelve`

## Main Results

Version 19 proves transfer theorems for:

- cardinality
- divisor sum profile
- square-divisor sum profile

For 6:

`(v6DivisorFinset 6).card = v10ExpectedDivisorsSix.card`

`(v6DivisorFinset 6).sum (fun d => d) = v10ExpectedDivisorsSix.sum (fun d => d)`

`(v6DivisorFinset 6).sum (fun d => d * d) = v10ExpectedDivisorsSix.sum (fun d => d * d)`

For 12:

`(v6DivisorFinset 12).card = v10ExpectedDivisorsTwelve.card`

`(v6DivisorFinset 12).sum (fun d => d) = v10ExpectedDivisorsTwelve.sum (fun d => d)`

`(v6DivisorFinset 12).sum (fun d => d * d) = v10ExpectedDivisorsTwelve.sum (fun d => d * d)`

## Why This Matters

This is the first consequence layer after equality.

Earlier versions proved membership and equality.

Version 19 begins transferring arithmetic data through that equality.

## Honest Scope

This does not yet compute the exact numerical values of the cardinals or sums.

It proves that the actual and expected Finsets have identical arithmetic profiles.

The next phase should try to compute exact values.
