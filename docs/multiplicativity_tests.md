# Multiplicativity Test Framework

This phase adds a finite multiplicativity testing framework to Version 2 of the Formal Langlands Laboratory.

## Motivation

Multiplicative arithmetic functions are central in number theory, Dirichlet series, and Euler products.

A function f is multiplicative when:

f(a · b) = f(a) · f(b)

usually under the condition that a and b are coprime.

Since the current project is still pure Lean 4 without mathlib-supported gcd and coprimality, this phase introduces a finite test framework first.

## Pairwise Multiplicativity Property

The project defines a proposition expressing that a function behaves multiplicatively on a specific pair of inputs.

This allows the project to verify concrete examples such as:

- constant-one function at 2 and 3
- identity function at 2 and 3
- square function at 2 and 3
- divisor-count function at 2 and 3
- sum-of-divisors function at 2 and 3
- square-divisor-sum function at 2 and 3

## Boolean Multiplicativity Tests

The project also defines computable Boolean tests for multiplicativity on selected finite pairs.

This makes the framework useful for verified examples and future automated testing.

## Verified Examples

The project verifies finite multiplicativity tests for:

- constant-one function
- identity arithmetic function
- square arithmetic function
- divisor-count function
- sum-of-divisors function
- square-divisor-sum function

The project also verifies concrete values at 6:

- divisor count at 6 equals 4
- sum of divisors at 6 equals 12
- square divisor sum at 6 equals 50

## Importance

This is a key step toward Euler product verification. Euler products rely on multiplicative behavior of arithmetic functions. This phase gives the project a computationally verified foundation for testing that behavior.

## Future Work

Future phases may add:

- explicit coprimality tests
- gcd prototypes
- stronger multiplicativity theorems
- finite prime-indexed Euler factor checks
- mathlib-powered multiplicativity proofs
