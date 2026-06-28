# V49 Finset Summation Audit Results

This audit records which Finset/List cardinality and summation syntax is accepted by the current Lean/mathlib environment.
## Summary

- 01_check_finset_card: FAIL
- 02_check_finset_sum: FAIL
- 03_check_list_sum: PASS
- 04_finset_range_card_field: FAIL
- 05_finset_range_card_theorem: FAIL
- 06_finset_range_sum_field: FAIL
- 07_finset_range_sum_example: FAIL
- 08_finset_literal_card: FAIL
- 09_finset_literal_sum: FAIL


## 01_check_finset_card: FAIL

### stdout
```text
audits/v49/01_check_finset_card.lean:3:7: error(lean.unknownIdentifier): Unknown constant `Finset.card`
```

## 02_check_finset_sum: FAIL

### stdout
```text
audits/v49/02_check_finset_sum.lean:3:7: error(lean.unknownIdentifier): Unknown constant `Finset.sum`
```

## 03_check_list_sum: PASS

### stdout
```text
List.sum.{u_1} {α : Type u_1} [Add α] [Zero α] : List α → α
```

## 04_finset_range_card_field: FAIL

### stdout
```text
audits/v49/04_finset_range_card_field.lean:3:24: error(lean.invalidField): Invalid field `card`: The environment does not contain `Finset.card`, so it is not possible to project the field `card` from an expression
  Finset.range 4
of type `Finset ℕ`
```

## 05_finset_range_card_theorem: FAIL

### stdout
```text
audits/v49/05_finset_range_card_theorem.lean:3:27: error(lean.invalidField): Invalid field `card`: The environment does not contain `Finset.card`, so it is not possible to project the field `card` from an expression
  Finset.range 4
of type `Finset ℕ`
audits/v49/05_finset_range_card_theorem.lean:4:2: error: Tactic `native_decide` failed: Could not evaluate decidable instance. Error: cannot evaluate code because 'sorryAx' uses 'sorry' and/or contains errors
```

## 06_finset_range_sum_field: FAIL

### stdout
```text
audits/v49/06_finset_range_sum_field.lean:3:24: error(lean.invalidField): Invalid field `sum`: The environment does not contain `Finset.sum`, so it is not possible to project the field `sum` from an expression
  Finset.range 4
of type `Finset ℕ`
```

## 07_finset_range_sum_example: FAIL

### stdout
```text
audits/v49/07_finset_range_sum_example.lean:3:27: error(lean.invalidField): Invalid field `sum`: The environment does not contain `Finset.sum`, so it is not possible to project the field `sum` from an expression
  Finset.range 4
of type `Finset ℕ`
audits/v49/07_finset_range_sum_example.lean:4:2: error: Tactic `native_decide` failed: Could not evaluate decidable instance. Error: cannot evaluate code because 'sorryAx' uses 'sorry' and/or contains errors
```

## 08_finset_literal_card: FAIL

### stdout
```text
audits/v49/08_finset_literal_card.lean:3:35: error(lean.invalidField): Invalid field `card`: The environment does not contain `Finset.card`, so it is not possible to project the field `card` from an expression
  {1, 2, 3}
of type `Finset ℕ`
audits/v49/08_finset_literal_card.lean:4:2: error: Tactic `native_decide` failed: Could not evaluate decidable instance. Error: cannot evaluate code because 'sorryAx' uses 'sorry' and/or contains errors
```

## 09_finset_literal_sum: FAIL

### stdout
```text
audits/v49/09_finset_literal_sum.lean:3:35: error(lean.invalidField): Invalid field `sum`: The environment does not contain `Finset.sum`, so it is not possible to project the field `sum` from an expression
  {1, 2, 3}
of type `Finset ℕ`
audits/v49/09_finset_literal_sum.lean:4:2: error: Tactic `native_decide` failed: Could not evaluate decidable instance. Error: cannot evaluate code because 'sorryAx' uses 'sorry' and/or contains errors
```

