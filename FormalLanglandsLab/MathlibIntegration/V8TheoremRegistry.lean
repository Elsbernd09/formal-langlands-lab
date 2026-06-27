import FormalLanglandsLab.MathlibIntegration.V8CertifiedProfiles

namespace FormalLanglandsLab
namespace MathlibIntegration

def v8BoundedMembershipResultCount : Nat := 11
def v8BoolPropBridgeResultCount : Nat := 25
def v8CertifiedProfileResultCount : Nat := 19

def v8TrackedResultCount : Nat :=
  v8BoundedMembershipResultCount +
  v8BoolPropBridgeResultCount +
  v8CertifiedProfileResultCount

theorem v8BoundedMembershipResultCount_value :
    v8BoundedMembershipResultCount = 11 := by
  rfl

theorem v8BoolPropBridgeResultCount_value :
    v8BoolPropBridgeResultCount = 25 := by
  rfl

theorem v8CertifiedProfileResultCount_value :
    v8CertifiedProfileResultCount = 19 := by
  rfl

theorem v8TrackedResultCount_value :
    v8TrackedResultCount = 55 := by
  rfl

theorem registry_v8_bounded_membership_iff
    {n d : Nat} :
    d ∈ v6DivisorFinset n ↔
      d ≤ n ∧ v6IsDivisorBool n d = true := by
  exact v8_mem_v6DivisorFinset_iff_bound_bool

theorem registry_v8_two_mem_six_by_bound_bool :
    2 ∈ v6DivisorFinset 6 := by
  exact v8_two_mem_six_by_bound_bool

theorem registry_v8_four_not_mem_six_by_bool :
    4 ∉ v6DivisorFinset 6 := by
  exact v8_four_not_mem_six_by_bool

theorem registry_v8_twelve_mem_twelve_by_bound_bool :
    12 ∈ v6DivisorFinset 12 := by
  exact v8_twelve_mem_twelve_by_bound_bool

theorem registry_v8_thirteen_not_mem_twelve_by_bound :
    13 ∉ v6DivisorFinset 12 := by
  exact v8_thirteen_not_mem_twelve_by_bound

theorem registry_v8_bool_prop_two_six :
    v8BoolPropAgreement 6 2 := by
  exact v8_bool_prop_agreement_two_six

theorem registry_v8_bool_prop_three_six :
    v8BoolPropAgreement 6 3 := by
  exact v8_bool_prop_agreement_three_six

theorem registry_v8_bool_prop_four_twelve :
    v8BoolPropAgreement 12 4 := by
  exact v8_bool_prop_agreement_four_twelve

theorem registry_v8_bool_prop_twelve_twelve :
    v8BoolPropAgreement 12 12 := by
  exact v8_bool_prop_agreement_twelve_twelve

theorem registry_v8_certified_two_six :
    v8CertifiedDivisorMembership 6 2 := by
  exact v8_certified_membership_two_six

theorem registry_v8_certified_three_six :
    v8CertifiedDivisorMembership 6 3 := by
  exact v8_certified_membership_three_six

theorem registry_v8_certified_four_twelve :
    v8CertifiedDivisorMembership 12 4 := by
  exact v8_certified_membership_four_twelve

theorem registry_v8_certified_twelve_twelve :
    v8CertifiedDivisorMembership 12 12 := by
  exact v8_certified_membership_twelve_twelve

theorem registry_v8_certified_profile_six :
    v8CertifiedDivisorProfileSix := by
  exact v8_certified_profile_six

theorem registry_v8_certified_profile_twelve :
    v8CertifiedDivisorProfileTwelve := by
  exact v8_certified_profile_twelve

theorem registry_v8_certified_profile_six_extract_two :
    v8CertifiedDivisorProfileSix →
      v8CertifiedDivisorMembership 6 2 := by
  exact v8_certified_profile_six_implies_two

theorem registry_v8_certified_profile_twelve_extract_four :
    v8CertifiedDivisorProfileTwelve →
      v8CertifiedDivisorMembership 12 4 := by
  exact v8_certified_profile_twelve_implies_four

theorem registry_v8_certified_profile_twelve_extract_twelve :
    v8CertifiedDivisorProfileTwelve →
      v8CertifiedDivisorMembership 12 12 := by
  exact v8_certified_profile_twelve_implies_twelve

theorem registry_v8_certified_membership_implies_finset_mem
    {n d : Nat}
    (h : v8CertifiedDivisorMembership n d) :
    d ∈ v6DivisorFinset n := by
  exact v8_certified_membership_implies_finset_mem h

theorem registry_v8_certified_membership_implies_prop_divisor
    {n d : Nat}
    (h : v8CertifiedDivisorMembership n d) :
    v6IsDivisor n d := by
  exact v8_certified_membership_implies_prop_divisor h

end MathlibIntegration
end FormalLanglandsLab
