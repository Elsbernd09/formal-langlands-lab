import FormalLanglandsLab.MathlibIntegration.V6RealDivisorFinsets

namespace FormalLanglandsLab
namespace MathlibIntegration

def v6DivisorMembershipCondition
    (n d : Nat) : Prop :=
  d ≤ n ∧ v6IsDivisorBool n d = true

def v6NonDivisorMembershipCondition
    (n d : Nat) : Prop :=
  d ≤ n ∧ v6IsDivisorBool n d = false

theorem v6_membershipCondition_one_six :
    v6DivisorMembershipCondition 6 1 := by
  constructor
  · decide
  · rfl

theorem v6_membershipCondition_two_six :
    v6DivisorMembershipCondition 6 2 := by
  constructor
  · decide
  · rfl

theorem v6_membershipCondition_three_six :
    v6DivisorMembershipCondition 6 3 := by
  constructor
  · decide
  · rfl

theorem v6_membershipCondition_six_six :
    v6DivisorMembershipCondition 6 6 := by
  constructor
  · decide
  · rfl

theorem v6_nonMembershipCondition_zero_six :
    v6NonDivisorMembershipCondition 6 0 := by
  constructor
  · decide
  · rfl

theorem v6_nonMembershipCondition_four_six :
    v6NonDivisorMembershipCondition 6 4 := by
  constructor
  · decide
  · rfl

theorem v6_membershipCondition_one_twelve :
    v6DivisorMembershipCondition 12 1 := by
  constructor
  · decide
  · rfl

theorem v6_membershipCondition_two_twelve :
    v6DivisorMembershipCondition 12 2 := by
  constructor
  · decide
  · rfl

theorem v6_membershipCondition_three_twelve :
    v6DivisorMembershipCondition 12 3 := by
  constructor
  · decide
  · rfl

theorem v6_membershipCondition_four_twelve :
    v6DivisorMembershipCondition 12 4 := by
  constructor
  · decide
  · rfl

theorem v6_membershipCondition_six_twelve :
    v6DivisorMembershipCondition 12 6 := by
  constructor
  · decide
  · rfl

theorem v6_membershipCondition_twelve_twelve :
    v6DivisorMembershipCondition 12 12 := by
  constructor
  · decide
  · rfl

theorem v6_nonMembershipCondition_five_twelve :
    v6NonDivisorMembershipCondition 12 5 := by
  constructor
  · decide
  · rfl

theorem v6_nonMembershipCondition_seven_twelve :
    v6NonDivisorMembershipCondition 12 7 := by
  constructor
  · decide
  · rfl

theorem v6_membershipCondition_implies_bool_true
    {n d : Nat}
    (h : v6DivisorMembershipCondition n d) :
    v6IsDivisorBool n d = true := by
  exact h.2

theorem v6_nonMembershipCondition_implies_bool_false
    {n d : Nat}
    (h : v6NonDivisorMembershipCondition n d) :
    v6IsDivisorBool n d = false := by
  exact h.2

theorem v6_membershipCondition_implies_bounded
    {n d : Nat}
    (h : v6DivisorMembershipCondition n d) :
    d ≤ n := by
  exact h.1

end MathlibIntegration
end FormalLanglandsLab
