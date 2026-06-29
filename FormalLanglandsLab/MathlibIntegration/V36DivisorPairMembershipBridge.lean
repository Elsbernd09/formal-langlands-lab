import FormalLanglandsLab.MathlibIntegration.V35DirichletDivisorPairKernel

namespace FormalLanglandsLab
namespace MathlibIntegration

def v36DivisorPairFactorsInActualFinset : Prop :=
  ∀ n a b : Nat,
    n ≠ 0 →
    v35DivisorPair n a b →
      a ∈ v6DivisorFinset n ∧ b ∈ v6DivisorFinset n

def v36DivisorPairFactorsInExpectedFinset : Prop :=
  ∀ n a b : Nat,
    n ≠ 0 →
    v35DivisorPair n a b →
      a ∈ v22ExpectedDivisorFinset n ∧ b ∈ v22ExpectedDivisorFinset n

theorem v36_pair_left_mem_actual
    {n a b : Nat}
    (hn : n ≠ 0)
    (hpair : v35DivisorPair n a b) :
    a ∈ v6DivisorFinset n := by
  have ha_ne : a ≠ 0 := v35_divisor_pair_left_nonzero hpair
  have ha_dvd : a ∣ n := v35_divisor_pair_left_divides hpair
  exact v28_actual_positive_mem_intro hn ha_ne ha_dvd

theorem v36_pair_right_mem_actual
    {n a b : Nat}
    (hn : n ≠ 0)
    (hpair : v35DivisorPair n a b) :
    b ∈ v6DivisorFinset n := by
  have hb_ne : b ≠ 0 := v35_divisor_pair_right_nonzero hpair
  have hb_dvd : b ∣ n := v35_divisor_pair_right_divides hpair
  exact v28_actual_positive_mem_intro hn hb_ne hb_dvd

theorem v36_pair_left_mem_expected
    {n a b : Nat}
    (hn : n ≠ 0)
    (hpair : v35DivisorPair n a b) :
    a ∈ v22ExpectedDivisorFinset n := by
  have ha_ne : a ≠ 0 := v35_divisor_pair_left_nonzero hpair
  have ha_dvd : a ∣ n := v35_divisor_pair_left_divides hpair
  exact v28_expected_positive_mem_intro hn ha_ne ha_dvd

theorem v36_pair_right_mem_expected
    {n a b : Nat}
    (hn : n ≠ 0)
    (hpair : v35DivisorPair n a b) :
    b ∈ v22ExpectedDivisorFinset n := by
  have hb_ne : b ≠ 0 := v35_divisor_pair_right_nonzero hpair
  have hb_dvd : b ∣ n := v35_divisor_pair_right_divides hpair
  exact v28_expected_positive_mem_intro hn hb_ne hb_dvd

theorem v36_pair_factors_in_actual_finset
    (n a b : Nat)
    (hn : n ≠ 0)
    (hpair : v35DivisorPair n a b) :
    a ∈ v6DivisorFinset n ∧ b ∈ v6DivisorFinset n := by
  exact ⟨
    v36_pair_left_mem_actual hn hpair,
    v36_pair_right_mem_actual hn hpair
  ⟩

theorem v36_pair_factors_in_expected_finset
    (n a b : Nat)
    (hn : n ≠ 0)
    (hpair : v35DivisorPair n a b) :
    a ∈ v22ExpectedDivisorFinset n ∧ b ∈ v22ExpectedDivisorFinset n := by
  exact ⟨
    v36_pair_left_mem_expected hn hpair,
    v36_pair_right_mem_expected hn hpair
  ⟩

theorem v36_pair_factors_in_actual_finset_all :
    v36DivisorPairFactorsInActualFinset := by
  intro n a b hn hpair
  exact v36_pair_factors_in_actual_finset n a b hn hpair

theorem v36_pair_factors_in_expected_finset_all :
    v36DivisorPairFactorsInExpectedFinset := by
  intro n a b hn hpair
  exact v36_pair_factors_in_expected_finset n a b hn hpair

theorem v36_pair_one_n_factors_actual
    {n : Nat}
    (hn : n ≠ 0) :
    1 ∈ v6DivisorFinset n ∧ n ∈ v6DivisorFinset n := by
  exact v36_pair_factors_in_actual_finset n 1 n hn (v35_pair_one_n hn)

theorem v36_pair_n_one_factors_actual
    {n : Nat}
    (hn : n ≠ 0) :
    n ∈ v6DivisorFinset n ∧ 1 ∈ v6DivisorFinset n := by
  exact v36_pair_factors_in_actual_finset n n 1 hn (v35_pair_n_one hn)

def v36DivisorPairMembershipBridgePackage : Prop :=
  v36DivisorPairFactorsInActualFinset ∧
  v36DivisorPairFactorsInExpectedFinset ∧
  (∀ n a b : Nat,
    n ≠ 0 →
    v35DivisorPair n a b →
      a ∈ v6DivisorFinset n) ∧
  (∀ n a b : Nat,
    n ≠ 0 →
    v35DivisorPair n a b →
      b ∈ v6DivisorFinset n)

theorem v36_divisor_pair_membership_bridge_package :
    v36DivisorPairMembershipBridgePackage := by
  exact ⟨
    v36_pair_factors_in_actual_finset_all,
    ⟨
      v36_pair_factors_in_expected_finset_all,
      ⟨
        fun n a b hn hpair => v36_pair_left_mem_actual hn hpair,
        fun n a b hn hpair => v36_pair_right_mem_actual hn hpair
      ⟩
    ⟩
  ⟩

theorem v36_divisor_pair_membership_bridge_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
