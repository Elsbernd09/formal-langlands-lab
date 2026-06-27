import FormalLanglandsLab.MathlibIntegration.V8BoolPropBridge

namespace FormalLanglandsLab
namespace MathlibIntegration

def v8CertifiedDivisorProfileSix : Prop :=
  v8CertifiedDivisorMembership 6 1 ∧
  v8CertifiedDivisorMembership 6 2 ∧
  v8CertifiedDivisorMembership 6 3 ∧
  v8CertifiedDivisorMembership 6 6

def v8CertifiedDivisorProfileTwelve : Prop :=
  v8CertifiedDivisorMembership 12 1 ∧
  v8CertifiedDivisorMembership 12 2 ∧
  v8CertifiedDivisorMembership 12 3 ∧
  v8CertifiedDivisorMembership 12 4 ∧
  v8CertifiedDivisorMembership 12 6 ∧
  v8CertifiedDivisorMembership 12 12

theorem v8_certified_membership_one_six :
    v8CertifiedDivisorMembership 6 1 := by
  exact ⟨v7_one_mem_divisorFinset_six, v6_isDivisor_one_six⟩

theorem v8_certified_membership_six_six :
    v8CertifiedDivisorMembership 6 6 := by
  exact ⟨v7_six_mem_divisorFinset_six, v6_isDivisor_six_six⟩

theorem v8_certified_membership_one_twelve :
    v8CertifiedDivisorMembership 12 1 := by
  exact ⟨v7_one_mem_divisorFinset_twelve, v8_isDivisor_one_twelve⟩

theorem v8_certified_membership_two_twelve :
    v8CertifiedDivisorMembership 12 2 := by
  exact ⟨v7_two_mem_divisorFinset_twelve, v8_isDivisor_two_twelve⟩

theorem v8_certified_membership_three_twelve :
    v8CertifiedDivisorMembership 12 3 := by
  exact ⟨v7_three_mem_divisorFinset_twelve, v8_isDivisor_three_twelve⟩

theorem v8_certified_membership_six_twelve :
    v8CertifiedDivisorMembership 12 6 := by
  exact ⟨v7_six_mem_divisorFinset_twelve, v8_isDivisor_six_twelve⟩

theorem v8_certified_profile_six :
    v8CertifiedDivisorProfileSix := by
  exact ⟨
    v8_certified_membership_one_six,
    v8_certified_membership_two_six,
    v8_certified_membership_three_six,
    v8_certified_membership_six_six
  ⟩

theorem v8_certified_profile_twelve :
    v8CertifiedDivisorProfileTwelve := by
  exact ⟨
    v8_certified_membership_one_twelve,
    v8_certified_membership_two_twelve,
    v8_certified_membership_three_twelve,
    v8_certified_membership_four_twelve,
    v8_certified_membership_six_twelve,
    v8_certified_membership_twelve_twelve
  ⟩

theorem v8_certified_profile_six_implies_one :
    v8CertifiedDivisorProfileSix →
      v8CertifiedDivisorMembership 6 1 := by
  intro h
  exact h.1

theorem v8_certified_profile_six_implies_two :
    v8CertifiedDivisorProfileSix →
      v8CertifiedDivisorMembership 6 2 := by
  intro h
  exact h.2.1

theorem v8_certified_profile_six_implies_three :
    v8CertifiedDivisorProfileSix →
      v8CertifiedDivisorMembership 6 3 := by
  intro h
  exact h.2.2.1

theorem v8_certified_profile_six_implies_six :
    v8CertifiedDivisorProfileSix →
      v8CertifiedDivisorMembership 6 6 := by
  intro h
  exact h.2.2.2

theorem v8_certified_profile_twelve_implies_one :
    v8CertifiedDivisorProfileTwelve →
      v8CertifiedDivisorMembership 12 1 := by
  intro h
  exact h.1

theorem v8_certified_profile_twelve_implies_two :
    v8CertifiedDivisorProfileTwelve →
      v8CertifiedDivisorMembership 12 2 := by
  intro h
  exact h.2.1

theorem v8_certified_profile_twelve_implies_three :
    v8CertifiedDivisorProfileTwelve →
      v8CertifiedDivisorMembership 12 3 := by
  intro h
  exact h.2.2.1

theorem v8_certified_profile_twelve_implies_four :
    v8CertifiedDivisorProfileTwelve →
      v8CertifiedDivisorMembership 12 4 := by
  intro h
  exact h.2.2.2.1

theorem v8_certified_profile_twelve_implies_six :
    v8CertifiedDivisorProfileTwelve →
      v8CertifiedDivisorMembership 12 6 := by
  intro h
  exact h.2.2.2.2.1

theorem v8_certified_profile_twelve_implies_twelve :
    v8CertifiedDivisorProfileTwelve →
      v8CertifiedDivisorMembership 12 12 := by
  intro h
  exact h.2.2.2.2.2

theorem v8_certified_profiles_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
