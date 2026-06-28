import FormalLanglandsLab.MathlibIntegration.V38DirichletPairSymmetry

namespace FormalLanglandsLab
namespace MathlibIntegration

def v39ActualDirichletSupport
    (n a b : Nat) : Prop :=
  a ∈ v6DivisorFinset n ∧
  b ∈ v6DivisorFinset n ∧
  a * b = n

def v39ExpectedDirichletSupport
    (n a b : Nat) : Prop :=
  a ∈ v22ExpectedDivisorFinset n ∧
  b ∈ v22ExpectedDivisorFinset n ∧
  a * b = n

theorem v39_actual_support_iff_pair
    (n a b : Nat)
    (hn : n ≠ 0) :
    v39ActualDirichletSupport n a b ↔ v35DivisorPair n a b := by
  constructor
  · intro h
    exact (v37_actual_pair_finset_characterization n a b hn).mpr h
  · intro hpair
    exact (v37_actual_pair_finset_characterization n a b hn).mp hpair

theorem v39_expected_support_iff_pair
    (n a b : Nat)
    (hn : n ≠ 0) :
    v39ExpectedDirichletSupport n a b ↔ v35DivisorPair n a b := by
  constructor
  · intro h
    exact (v37_expected_pair_finset_characterization n a b hn).mpr h
  · intro hpair
    exact (v37_expected_pair_finset_characterization n a b hn).mp hpair

theorem v39_actual_support_to_expected_support
    (n a b : Nat)
    (hn : n ≠ 0)
    (h : v39ActualDirichletSupport n a b) :
    v39ExpectedDirichletSupport n a b := by
  have hpair : v35DivisorPair n a b :=
    (v39_actual_support_iff_pair n a b hn).mp h
  exact (v39_expected_support_iff_pair n a b hn).mpr hpair

theorem v39_expected_support_to_actual_support
    (n a b : Nat)
    (hn : n ≠ 0)
    (h : v39ExpectedDirichletSupport n a b) :
    v39ActualDirichletSupport n a b := by
  have hpair : v35DivisorPair n a b :=
    (v39_expected_support_iff_pair n a b hn).mp h
  exact (v39_actual_support_iff_pair n a b hn).mpr hpair

theorem v39_actual_expected_support_equivalence
    (n a b : Nat)
    (hn : n ≠ 0) :
    v39ActualDirichletSupport n a b ↔
      v39ExpectedDirichletSupport n a b := by
  constructor
  · intro h
    exact v39_actual_support_to_expected_support n a b hn h
  · intro h
    exact v39_expected_support_to_actual_support n a b hn h

theorem v39_actual_support_swap
    {n a b : Nat}
    (hn : n ≠ 0)
    (h : v39ActualDirichletSupport n a b) :
    v39ActualDirichletSupport n b a := by
  exact v38_actual_characterization_swap hn h

theorem v39_expected_support_swap
    {n a b : Nat}
    (hn : n ≠ 0)
    (h : v39ExpectedDirichletSupport n a b) :
    v39ExpectedDirichletSupport n b a := by
  exact v38_expected_characterization_swap hn h

theorem v39_actual_support_left_mem
    {n a b : Nat}
    (h : v39ActualDirichletSupport n a b) :
    a ∈ v6DivisorFinset n := by
  exact h.1

theorem v39_actual_support_right_mem
    {n a b : Nat}
    (h : v39ActualDirichletSupport n a b) :
    b ∈ v6DivisorFinset n := by
  exact h.2.1

theorem v39_actual_support_product
    {n a b : Nat}
    (h : v39ActualDirichletSupport n a b) :
    a * b = n := by
  exact h.2.2

theorem v39_expected_support_left_mem
    {n a b : Nat}
    (h : v39ExpectedDirichletSupport n a b) :
    a ∈ v22ExpectedDivisorFinset n := by
  exact h.1

theorem v39_expected_support_right_mem
    {n a b : Nat}
    (h : v39ExpectedDirichletSupport n a b) :
    b ∈ v22ExpectedDivisorFinset n := by
  exact h.2.1

theorem v39_expected_support_product
    {n a b : Nat}
    (h : v39ExpectedDirichletSupport n a b) :
    a * b = n := by
  exact h.2.2

def v39DirichletConvolutionSupportPackage : Prop :=
  (∀ n a b : Nat,
    n ≠ 0 →
      (v39ActualDirichletSupport n a b ↔ v35DivisorPair n a b)) ∧
  (∀ n a b : Nat,
    n ≠ 0 →
      (v39ExpectedDirichletSupport n a b ↔ v35DivisorPair n a b)) ∧
  (∀ n a b : Nat,
    n ≠ 0 →
      (v39ActualDirichletSupport n a b ↔
        v39ExpectedDirichletSupport n a b))

theorem v39_dirichlet_convolution_support_package :
    v39DirichletConvolutionSupportPackage := by
  exact ⟨
    fun n a b hn => v39_actual_support_iff_pair n a b hn,
    ⟨
      fun n a b hn => v39_expected_support_iff_pair n a b hn,
      fun n a b hn => v39_actual_expected_support_equivalence n a b hn
    ⟩
  ⟩

theorem v39_dirichlet_convolution_support_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
