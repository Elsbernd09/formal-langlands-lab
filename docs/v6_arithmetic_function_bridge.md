# Version 6 Arithmetic Function Bridge

Version 6 continues rebuilding the divisor arithmetic layer in a stable, theorem-aware way.

## Motivation

Earlier V6 phases introduced:

- a stable real divisor Finset definition
- Boolean divisor predicates
- divisor membership conditions
- divisor Boolean tables
- count and sum bridges

This phase packages those stable V6 values into arithmetic functions and formal L-series examples.

## New Arithmetic Functions

The project defines:

- `v6DivisorCountFunction`
- `v6SumOfDivisorsFunction`
- `v6SquareDivisorSumFunction`

These functions use the stable V6 values for 6 and 12 and defer to the existing verified arithmetic functions elsewhere.

## Verified Values

The project verifies:

- V6 divisor-count function at 6 equals 4
- V6 divisor-count function at 12 equals 6
- V6 sum-of-divisors function at 6 equals 12
- V6 sum-of-divisors function at 12 equals 28
- V6 square-divisor-sum function at 6 equals 50
- V6 square-divisor-sum function at 12 equals 210

## Agreement With Existing Arithmetic Functions

The project verifies that these V6 arithmetic functions agree with the earlier arithmetic functions at 6 and 12.

This keeps V6 connected to the reliable V2-V5 arithmetic core.

## Formal L-Series

The project packages the V6 arithmetic functions into formal Dirichlet series examples:

- V6 divisor-count L-series
- V6 sum-of-divisors L-series
- V6 square-divisor-sum L-series

It verifies coefficients at 6 and 12.

## Importance

This phase makes the V6 repair work useful.

The project now has:

stable divisor tables → arithmetic functions → formal L-series examples

without relying on fragile Finset automation.
