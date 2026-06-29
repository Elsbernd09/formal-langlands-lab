# Version 14 General Expected Out-of-Range Rules

Version 14 begins the move from sample out-of-range examples to general expected-Finset out-of-range theorems.

## Motivation

Version 13 proved sample expected non-membership facts such as:

- `7 ∉ v10ExpectedDivisorsSix`
- `10 ∉ v10ExpectedDivisorsSix`
- `13 ∉ v10ExpectedDivisorsTwelve`
- `16 ∉ v10ExpectedDivisorsTwelve`

The next mathematical upgrade is to prove general rules.

## Main Targets

For 6:

`∀ d : Nat, 6 < d → d ∉ v10ExpectedDivisorsSix`

For 12:

`∀ d : Nat, 12 < d → d ∉ v10ExpectedDivisorsTwelve`

## Why This Matters

This is needed for universal membership agreement.

The chain is:

bounded agreement
→ actual out-of-range non-membership
→ expected out-of-range non-membership
→ universal membership agreement
→ Finset equality

## Honest Scope

This is still about finite expected divisor Finsets for 6 and 12.

It is not yet the general arbitrary-n divisor theorem.

But it removes the weakness of relying only on sample out-of-range examples.
