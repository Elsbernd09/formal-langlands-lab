# V87 Phase 173: Duplicate-Index Aggregation Framework

Version 87 adds a framework for reasoning about duplicate-index aggregation.

## Motivation

Version 86 proved that the current controlled p = 2 and p = 3 Euler-product support is collision-free.

However, future finite Euler-product expansions may produce repeated combined indices. In that case, contributions at the same index must be aggregated.

## Duplicate Example

Version 87 introduces a simple duplicate-index support:

`[1, 2, 2, 4]`

with coefficient contributions:

`[10, 20, 30, 40]`

The duplicate index `2` has bucket:

`[20, 30]`

whose aggregate is:

`50`

## Current Euler-Product Support

Version 87 preserves the V86 theorem that the current controlled support remains collision-free:

`v84FiniteEulerProductSupportIndices.Nodup`

and has length:

`16`

## Main Package

The main package is:

`v87_duplicate_index_aggregation_framework_package`

## Honest Scope

This phase does not claim the current Euler-product support has duplicates.

It does the opposite: it keeps the current support collision-free while adding a framework for future duplicate-index cases.
