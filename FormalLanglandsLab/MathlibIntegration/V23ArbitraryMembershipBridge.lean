import FormalLanglandsLab.MathlibIntegration.V22GeneralDivisorPredicate

namespace FormalLanglandsLab
namespace MathlibIntegration

def v23ArbitraryExpectedMembershipBridge : Prop :=
  ∀ n d : Nat,
    d ∈ v22ExpectedDivisorFinset n ↔
      d ≤ n ∧ v6IsDivisorBool n d = true

def v23ArbitraryActualMembershipBridge : Prop :=
  ∀ n d : Nat,
    d ∈ v6DivisorFinset n ↔
      d ≤ n ∧ v6IsDivisorBool n d = true

theorem v23_actual_membership_bridge
    (n d : Nat) :
    d ∈ v6DivisorFinset n ↔
      d ≤ n ∧ v6IsDivisorBool n d = true := by
  exact v8_mem_v6DivisorFinset_iff_bound_bool

theorem v23_expected_membership_bridge
    (n d : Nat) :
    d ∈ v22ExpectedDivisorFinset n ↔
      d ≤ n ∧ v6IsDivisorBool n d = true := by
  rw [v22_expected_divisor_finset_eq_actual n]
  exact v23_actual_membership_bridge n d

theorem v23_arbitrary_expected_membership_bridge :
    v23ArbitraryExpectedMembershipBridge := by
  intro n d
  exact v23_expected_membership_bridge n d

theorem v23_arbitrary_actual_membership_bridge :
    v23ArbitraryActualMembershipBridge := by
  intro n d
  exact v23_actual_membership_bridge n d

theorem v23_expected_mem_implies_bound
    {n d : Nat}
    (h : d ∈ v22ExpectedDivisorFinset n) :
    d ≤ n := by
  exact (v23_expected_membership_bridge n d).mp h |>.1

theorem v23_expected_mem_implies_bool
    {n d : Nat}
    (h : d ∈ v22ExpectedDivisorFinset n) :
    v6IsDivisorBool n d = true := by
  exact (v23_expected_membership_bridge n d).mp h |>.2

theorem v23_expected_mem_intro
    {n d : Nat}
    (hbound : d ≤ n)
    (hbool : v6IsDivisorBool n d = true) :
    d ∈ v22ExpectedDivisorFinset n := by
  exact (v23_expected_membership_bridge n d).mpr ⟨hbound, hbool⟩

theorem v23_actual_mem_implies_bound
    {n d : Nat}
    (h : d ∈ v6DivisorFinset n) :
    d ≤ n := by
  exact (v23_actual_membership_bridge n d).mp h |>.1

theorem v23_actual_mem_implies_bool
    {n d : Nat}
    (h : d ∈ v6DivisorFinset n) :
    v6IsDivisorBool n d = true := by
  exact (v23_actual_membership_bridge n d).mp h |>.2

theorem v23_actual_mem_intro
    {n d : Nat}
    (hbound : d ≤ n)
    (hbool : v6IsDivisorBool n d = true) :
    d ∈ v6DivisorFinset n := by
  exact (v23_actual_membership_bridge n d).mpr ⟨hbound, hbool⟩

theorem v23_expected_out_of_bound_not_mem
    {n d : Nat}
    (h : n < d) :
    d ∉ v22ExpectedDivisorFinset n := by
  intro hmem
  have hdle : d ≤ n := v23_expected_mem_implies_bound hmem
  exact Nat.not_lt_of_ge hdle h

theorem v23_actual_out_of_bound_not_mem
    {n d : Nat}
    (h : n < d) :
    d ∉ v6DivisorFinset n := by
  intro hmem
  have hdle : d ≤ n := v23_actual_mem_implies_bound hmem
  exact Nat.not_lt_of_ge hdle h

def v23ArbitraryMembershipBridgePackage : Prop :=
  v23ArbitraryExpectedMembershipBridge ∧
  v23ArbitraryActualMembershipBridge ∧
  (∀ n d : Nat, d ∈ v22ExpectedDivisorFinset n → d ≤ n) ∧
  (∀ n d : Nat, d ∈ v6DivisorFinset n → d ≤ n)

theorem v23_arbitrary_membership_bridge_package :
    v23ArbitraryMembershipBridgePackage := by
  exact ⟨
    v23_arbitrary_expected_membership_bridge,
    ⟨
      v23_arbitrary_actual_membership_bridge,
      ⟨
        fun n d h => v23_expected_mem_implies_bound h,
        fun n d h => v23_actual_mem_implies_bound h
      ⟩
    ⟩
  ⟩

theorem v23_arbitrary_membership_bridge_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
