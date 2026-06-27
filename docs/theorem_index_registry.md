# Theorem Index and Results Registry

This phase adds a central theorem index to Version 3 of the Formal Langlands Laboratory.

## Motivation

As the project grows, verified results become spread across many files. A serious formalization project needs a clear place where important results can be collected and inspected.

The theorem registry acts as a verified results index.

## What the Registry Contains

The registry collects key checked results from the arithmetic core:

- divisor-count values
- sum-of-divisors values
- square-divisor-sum values
- gcd examples
- coprimality examples
- coprime multiplicativity suite checks
- prime-power tables
- Euler coefficient comparisons
- non-coprime failure examples
- L-series coefficient examples

## Why This Matters

A reader can now open one file and see the major verified arithmetic facts in the project.

This improves:

- readability
- mathematical presentation
- project organization
- GitHub quality
- research-style clarity

## Serious Results Included

The registry highlights concrete results such as:

- d(12) = 6
- sigma(12) = 28
- squareDivisorSum(12) = 210
- gcd(2, 3) = 1
- gcd(2, 4) = 2
- divisor-count prime-power table at 2 equals (2, 3, 4)
- sum-of-divisors prime-power table at 2 equals (3, 7, 15)
- d(20) = d(4) · d(5)
- sigma(20) = sigma(4) · sigma(5)
- non-coprime identities fail for 8 = 2 · 4

## Importance

This phase does not add new theory as much as it organizes existing theory.

That matters because serious mathematical software projects are not only judged by how much code they contain, but also by whether their results are discoverable, documented, and logically organized.

## Future Work

Future versions should add:

- a theorem dependency map
- theorem categories
- named result summaries
- bounded computation tables
- stronger general theorem statements
