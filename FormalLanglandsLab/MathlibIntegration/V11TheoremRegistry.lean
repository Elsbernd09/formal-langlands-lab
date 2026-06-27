import FormalLanglandsLab.MathlibIntegration.V11RestrictedExtensionality

namespace FormalLanglandsLab
namespace MathlibIntegration

def v11ExtensionalityFrameworkResultCount : Nat := 25
def v11OutOfRangeFrameworkResultCount : Nat := 16
def v11RestrictedExtensionalityResultCount : Nat := 11

def v11TrackedResultCount : Nat :=
  v11ExtensionalityFrameworkResultCount +
  v11OutOfRangeFrameworkResultCount +
  v11RestrictedExtensionalityResultCount

theorem v11ExtensionalityFrameworkResultCount_value :
    v11ExtensionalityFrameworkResultCount = 25 := by
  rfl

theorem v11OutOfRangeFrameworkResultCount_value :
    v11OutOfRangeFrameworkResultCount = 16 := by
  rfl

theorem v11RestrictedExtensionalityResultCount_value :
    v11RestrictedExtensionalityResultCount = 11 := by
  rfl

theorem v11TrackedResultCount_value :
    v11TrackedResultCount = 52 := by
  rfl

theorem registry_v11_pointwise_six_two :
    v11PointwiseAgreement (v6DivisorFinset 6) v10ExpectedDivisorsSix 2 := by
  exact v11_pointwise_six_two

theorem registry_v11_pointwise_six_five :
    v11PointwiseAgreement (v6DivisorFinset 6) v10ExpectedDivisorsSix 5 := by
  exact v11_pointwise_six_five

theorem registry_v11_pointwise_twelve_four :
    v11PointwiseAgreement (v6DivisorFinset 12) v10ExpectedDivisorsTwelve 4 := by
  exact v11_pointwise_twelve_four

theorem registry_v11_pointwise_twelve_eleven :
    v11PointwiseAgreement (v6DivisorFinset 12) v10ExpectedDivisorsTwelve 11 := by
  exact v11_pointwise_twelve_eleven

theorem registry_v11_bounded_agreement_six :
    v11BoundedAgreementSix := by
  exact v11_bounded_agreement_six

theorem registry_v11_bounded_agreement_twelve :
    v11BoundedAgreementTwelve := by
  exact v11_bounded_agreement_twelve

theorem registry_v11_out_of_range_actual_six :
    ∀ d : Nat, 6 < d → d ∉ v6DivisorFinset 6 := by
  intro d h
  exact v11_out_of_range_actual_membership_false_six h

theorem registry_v11_out_of_range_actual_twelve :
    ∀ d : Nat, 12 < d → d ∉ v6DivisorFinset 12 := by
  intro d h
  exact v11_out_of_range_actual_membership_false_twelve h

theorem registry_v11_seven_not_mem_actual_six :
    7 ∉ v6DivisorFinset 6 := by
  exact v11_seven_not_mem_actual_six

theorem registry_v11_thirteen_not_mem_actual_twelve :
    13 ∉ v6DivisorFinset 12 := by
  exact v11_thirteen_not_mem_actual_twelve

theorem registry_v11_out_of_range_agreement_six_seven :
    v11OutOfRangeAgreement 6 7 v10ExpectedDivisorsSix := by
  exact v11_out_of_range_agreement_six_seven

theorem registry_v11_out_of_range_agreement_twelve_thirteen :
    v11OutOfRangeAgreement 12 13 v10ExpectedDivisorsTwelve := by
  exact v11_out_of_range_agreement_twelve_thirteen

theorem registry_v11_restricted_extensionality_six :
    v11RestrictedExtensionalitySix := by
  exact v11_restricted_extensionality_six

theorem registry_v11_restricted_extensionality_twelve :
    v11RestrictedExtensionalityTwelve := by
  exact v11_restricted_extensionality_twelve

theorem registry_v11_restricted_six_has_bounded_agreement :
    v11RestrictedExtensionalitySix → v11BoundedAgreementSix := by
  exact v11_restricted_six_has_bounded_agreement

theorem registry_v11_restricted_twelve_has_bounded_agreement :
    v11RestrictedExtensionalityTwelve → v11BoundedAgreementTwelve := by
  exact v11_restricted_twelve_has_bounded_agreement

theorem registry_v11_restricted_six_example_out_of_range :
    9 ∉ v6DivisorFinset 6 := by
  exact v11_restricted_six_example_out_of_range

theorem registry_v11_restricted_twelve_example_out_of_range :
    15 ∉ v6DivisorFinset 12 := by
  exact v11_restricted_twelve_example_out_of_range

theorem registry_v11_restricted_six_example_inside_agreement :
    v11PointwiseAgreement (v6DivisorFinset 6) v10ExpectedDivisorsSix 2 := by
  exact v11_restricted_six_example_inside_agreement

theorem registry_v11_restricted_twelve_example_inside_agreement :
    v11PointwiseAgreement (v6DivisorFinset 12) v10ExpectedDivisorsTwelve 4 := by
  exact v11_restricted_twelve_example_inside_agreement

end MathlibIntegration
end FormalLanglandsLab
