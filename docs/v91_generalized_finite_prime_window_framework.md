# V91 Phase 177: Generalized Finite Prime-Window Framework

Version 91 starts the generalized finite prime-window framework.

## Motivation

Earlier Euler-factor phases hardcoded the p = 2 and p = 3 windows.

Version 91 introduces reusable finite prime-power windows parameterized by a natural number `p`.

## Main Definitions

Version 91 defines:

- length-four prime-power window: `[1, p, p*p, p*p*p]`
- length-three prime-power window: `[1, p, p*p]`
- arithmetic-function coefficient windows over those prime-power windows
- finite aggregates over those coefficient windows

## Recovery of Previous Work

Version 91 proves that the generalized length-four window recovers the V73 local factors:

- `p = 2` recovers the previous p = 2 Euler-factor window
- `p = 3` recovers the previous p = 3 Euler-factor window

## Why This Matters

This phase begins the transition from hardcoded local factors to reusable finite prime-window infrastructure.

## Honest Scope

This is still finite and controlled.

It does not claim infinite Euler products, analytic convergence, or an all-prime Euler product theorem.
