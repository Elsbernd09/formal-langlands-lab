import FormalLanglandsLab.MathlibIntegration.V36DivisorPairMembershipBridge

namespace FormalLanglandsLab
namespace MathlibIntegration

def v37ActualDivisorPairFinsetCharacterization : Prop :=
  ∀ n a b : Nat,
    n ≠ 0 →
      (v35DivisorPair n a b ↔
        a ∈ v6DivisorFinset n ∧
        b ∈ v6DivisorFinset n ∧
        a * b = n)

def v37ExpectedDivisorPairFinsetCharacterization : Prop :=
  ∀ n a b : Nat,
    n ≠ 0 →
      (v35DivisorPair n a b ↔
        a ∈ v22ExpectedDivisorFinset n ∧
        b ∈ v22ExpectedDivisorFinset n ∧
        a * b = n)

theorem v37_pair_from_actual_membership_and_product
    {n a b : Nat}
    (ha : a ∈ v6DivisorFinset n)
    (hb : b ∈ v6DivisorFinset n)
    (hmul : a * b = n) :
    v35DivisorPair n a b := by
  have ha_ne : a ≠ 0 := v27_actual_mem_implies_nonzero ha
  have hb_ne : b ≠ 0 := v27_actual_mem_implies_nonzero hb
  exact ⟨ha_ne, hb_ne, hmul⟩

theorem v37_pair_from_expected_membership_and_product
    {n a b : Nat}
    (ha : a ∈ v22ExpectedDivisorFinset n)
    (hb : b ∈ v22ExpectedDivisorFinset n)
    (hmul : a * b = n) :
    v35DivisorPair n a b := by
  have ha_ne : a ≠ 0 := v27_expected_mem_implies_nonzero ha
  have hb_ne : b ≠ 0 := v27_expected_mem_implies_nonzero hb
  exact ⟨ha_ne, hb_ne, hmul⟩

theorem v37_actual_pair_finset_characterization
    (n a b : Nat)
    (hn : n ≠ 0) :
    v35DivisorPair n a b ↔
      a ∈ v6DivisorFinset n ∧
      b ∈ v6DivisorFinset n ∧
      a * b = n := by
  constructor
  · intro hpair
    exact ⟨
      v36_pair_left_mem_actual hn hpair,
      ⟨
        v36_pair_right_mem_actual hn hpair,
        v35_divisor_pair_product_eq hpair
      ⟩
    ⟩
  · intro h
    exact v37_pair_from_actual_membership_and_product h.1 h.2.1 h.2.2

theorem v37_expected_pair_finset_characterization
    (n a b : Nat)
    (hn : n ≠ 0) :
    v35DivisorPair n a b ↔
      a ∈ v22ExpectedDivisorFinset n ∧
      b ∈ v22ExpectedDivisorFinset n ∧
      a * b = n := by
  constructor
  · intro hpair
    exact ⟨
      v36_pair_left_mem_expected hn hpair,
      ⟨
        v36_pair_right_mem_expected hn hpair,
        v35_divisor_pair_product_eq hpair
      ⟩
    ⟩
  · intro h
    exact v37_pair_from_expected_membership_and_product h.1 h.2.1 h.2.2

theorem v37_actual_pair_finset_characterization_all :
    v37ActualDivisorPairFinsetCharacterization := by
  intro n a b hn
  exact v37_actual_pair_finset_characterization n a b hn

theorem v37_expected_pair_finset_characterization_all :
    v37ExpectedDivisorPairFinsetCharacterization := by
  intro n a b hn
  exact v37_expected_pair_finset_characterization n a b hn

theorem v37_pair_actual_left_factor_divides_from_characterization
    {n a b : Nat}
    (hn : n ≠ 0)
    (h : a ∈ v6DivisorFinset n ∧ b ∈ v6DivisorFinset n ∧ a * b = n) :
    a ∣ n := by
  have hpair : v35DivisorPair n a b :=
    (v37_actual_pair_finset_characterization n a b hn).mpr h
  exact v35_divisor_pair_left_divides hpair

theorem v37_pair_actual_right_factor_divides_from_characterization
    {n a b : Nat}
    (hn : n ≠ 0)
    (h : a ∈ v6DivisorFinset n ∧ b ∈ v6DivisorFinset n ∧ a * b = n) :
    b ∣ n := by
  have hpair : v35DivisorPair n a b :=
    (v37_actual_pair_finset_characterization n a b hn).mpr h
  exact v35_divisor_pair_right_divides hpair

def v37DivisorPairFinsetCharacterizationPackage : Prop :=
  v37ActualDivisorPairFinsetCharacterization ∧
  v37ExpectedDivisorPairFinsetCharacterization ∧
  (∀ n a b : Nat,
    n ≠ 0 →
      a ∈ v6DivisorFinset n ∧ b ∈ v6DivisorFinset n ∧ a * b = n →
        v35DivisorPair n a b)

theorem v37_divisor_pair_finset_characterization_package :
    v37DivisorPairFinsetCharacterizationPackage := by
  exact ⟨
    v37_actual_pair_finset_characterization_all,
    ⟨
      v37_expected_pair_finset_characterization_all,
      fun n a b hn h =>
        (v37_actual_pair_finset_characterization n a b hn).mpr h
    ⟩
  ⟩

theorem v37_divisor_pair_finset_characterization_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
